#include "monolib/CPackItem.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/work/CWorkSystemPack.hpp"
#include "monolib/CPathUtil.hpp"
#include <criware/cri_adxf.h>
#include <cstring>

CPackItem::CPackItem(const char* name, int r5) : unk4(), pkbFilename() {
    mFileHandle = nullptr;
    mPackHeader = nullptr;
    unk54 = name;
    unk84 = name;
    mFileHashTable = nullptr;
    unk5C = nullptr;
    unk60 = nullptr;
    mAdxPartitionId = r5;
    mAhxAdxDataPtr = nullptr;
    mLoadState = LOAD_STATE_NOT_LOADED;
    unk78 = 0;
    unk79 = 0;
    mIsAhxAdxFile = false;
    unk7C = 0;
    unk80 = 0;

    //Check if the file is a adx/ahx pack file from the filename
    if(std::strstr(name, "adx") != nullptr || std::strstr(name, "ahx") != nullptr){
        mIsAhxAdxFile = true;
    }
}

CPackItem::~CPackItem(){
    if(mFileHandle != nullptr){
        CDeviceFile::func_8044F118(mFileHandle);
    }

    if(unk79 != 0){
        mPackHeader = nullptr;
    }

    if(mPackHeader != nullptr){
        mtl::MemManager::deallocate((void*)mPackHeader);
        mPackHeader = nullptr;
    }

    if(mAhxAdxDataPtr != nullptr){
        mtl::MemManager::deallocate((void*)mAhxAdxDataPtr);
        mAhxAdxDataPtr = nullptr;
    }
}

void CPackItem::update(){
    if(mLoadState == LOAD_STATE_NOT_LOADED){
        if(CWorkSystemPack::func_804DE100() == 0) return;

        if(CWorkSystemPack::func_804DDDF4(unk84, &unk7C, &unk80) != 0){
            unk79 = 1;
            mPackHeader = (PackHeader*)unk7C;
            func_804DE948();
        }else{
            mFileHandle = CDeviceFile::openFile1(mtl::MemManager::getMem2RegionIndex(), unk84, (UNKTYPE*)this, 0, 0);
        }

        //TODO: What did they do here? They likely didnt have a constructor like this to skip
        //initialization, but using a raw buffer feels wrong
        ml::FixStr<64> tempString = ml::FixStr<64>(false); //0x2C

        ml::CPathUtil::func_80435078(tempString, unk84);

        unk4 = tempString.string;
        pkbFilename = unk84;

        int length = pkbFilename.find(".", -1);

        if((u32)length + 1 > 1){
            ml::FixStr<32> tempString1; //0x8

            if(pkbFilename.size() != 0){
                if(length == -1) length = pkbFilename.size();
                std::strncpy(tempString1.string, pkbFilename.string, length);
                tempString1.string[length] = 0; //Stop the string at the extension
                tempString1.length = std::strlen(tempString1.string);
            }

            pkbFilename = tempString1.string;
        }

        pkbFilename += ".pkb";
        mLoadState = LOAD_STATE_OPENED_PKH_FILE;
    }else if(mLoadState == LOAD_STATE_OPENED_PKH_FILE){
        if(unk78 != 0){
            mLoadState = LOAD_STATE_LOADED;
            return;
        }

        if(mPackHeader == nullptr) return;

        if(mIsAhxAdxFile){
            if(CWorkSystemPack::func_804DDFBC((u32)this) == false) return;
            u32 r4 = ((mPackHeader->mFiles + 1)*2 + 0x11a) & ~3; //TODO: figure out the corresponding Criware struct here.
            mAhxAdxDataPtr = mtl::MemManager::func_8043442C(mtl::MemManager::getMem2RegionIndex(), r4, 4);
            ADXF_LoadPartitionNw(mAdxPartitionId, pkbFilename.c_str(), nullptr, mAhxAdxDataPtr);
            mLoadState = LOAD_STATE_LOADING_AHX_ADX_FILE;
        }else{
            mLoadState = LOAD_STATE_LOADED;
        }
    }else if(mLoadState == LOAD_STATE_LOADING_AHX_ADX_FILE){
        if(ADXF_GetPtStat(mAdxPartitionId) == ADXF_STAT_READEND){
            mLoadState = LOAD_STATE_LOADED;
        }
    }
}

bool CPackItem::func_804DE78C(const char* filename, char** r5, u32* r6, u32* r7, u32* r8){
    if(mPackHeader == nullptr){
        return false;
    }

    if(calculatePackFileHash(filename) == false){
        return false;
    }

    int hashIndex = findHashIndex(0, mPackHeader->mFiles);
    
    if(hashIndex < 0){
        return false;
    }

    *r5 = pkbFilename.string;

    if(unk60 != nullptr){
        *r6 = unk60[hashIndex];
    }else{
        *r6 = mAdxPartitionId;
    }

    *r7 = hashIndex;
    *r8 = unk5C[hashIndex];
    return true;
}

/* Tries to locate the hash of this item in the hash table. If successful,
returns the corresponding index. If not successful, returns -1. */
int CPackItem::findHashIndex(int startIndex, int endIndex){
    int length = endIndex - startIndex;

    if(length < 16){
        //If the length is less than 16, just search for a match with a for loop
        u32* pHashTable = (u32*)&mFileHashTable[startIndex];
        int i = startIndex;

        while(i < endIndex){
            if(pHashTable[0] == mHashLowerHalf && pHashTable[1] == mHashUpperHalf){
                return i;
            }

            i++;
            pHashTable += 2;
        }
        
        //If the hash couldn't be found, return -1
        return -1;
    }

    //If not, use binary search to narrow down the search space
    int midIndex = (endIndex + startIndex)/2;
    u32* pHashTable = (u32*)&mFileHashTable[midIndex];

    /* If the entry at the middle index happens to be the right one, return the index. If not,
    call the function again, choosing the left portion if any of the two hash values are larger,
    and the right portion otherwise. */
    if(pHashTable[1] == mHashUpperHalf){
        if(pHashTable[0] == mHashLowerHalf){
            //The middle entry matches the values of this item, return the index
            return midIndex;
        }else if(pHashTable[0] > mHashLowerHalf){
            return findHashIndex(startIndex, midIndex);
        }else{
            return findHashIndex(midIndex, endIndex);
        }
    }else if(pHashTable[1] > mHashUpperHalf){
        return findHashIndex(startIndex, midIndex);
    }else{
        return findHashIndex(midIndex, endIndex);
    }
}

bool CPackItem::isNotLoaded(){
    return mLoadState != LOAD_STATE_LOADED && !mIsAhxAdxFile;
}

void CPackItem::func_804DE948() {
    if(mPackHeader != nullptr){
        mFileHashTable = mPackHeader->mFileHashTable;
        unk5C = (u16*)&mFileHashTable[mPackHeader->mFiles];

        u16* temp = unk5C + mPackHeader->mFiles;

        if(mPackHeader->mPkhFilesize > (u32)temp - (u32)mPackHeader){
            unk60 = (u32*)temp;
        }
    }
}

bool CPackItem::OnFileEvent(CEventFile* pEventFile){
    if(pEventFile->mFileHandle == mFileHandle){
        if(pEventFile->unk0 == 1){
            void* data = mFileHandle->data;
            mFileHandle->data = nullptr;
            mPackHeader = static_cast<PackHeader*>(data);
            func_804DE948();
        }else{
            unk78 = 1;
        }

        mFileHandle = nullptr;
        return true;
    }

    return false;
}

/* Calculates the hash of the given file name string. This is used to
find where the file is located in the pkb archive using the hash table
in the pkh file. */
bool CPackItem::calculatePackFileHash(const char* filename){
    if(mPackHeader == nullptr){
        return false;
    }

    mHashLowerHalf = 0;
    mHashUpperHalf = 0;
    
    int length = std::strlen(filename);

    //Return if the string is empty
    if(length == 0){
        return false;
    }

    u32 hashValTableLength = mPackHeader->mHashValTableLength;
    
    for(u32 i = 0; i < hashValTableLength; i++){
        u32 byteIndex = mPackHeader->mHashValTable[i] / 8;
        u32 bitIndex = mPackHeader->mHashValTable[i] % 8;
        u8 mask = 1 << bitIndex;
        if(length - 1 >= byteIndex){
            bool bit = (u8)filename[length - 1 - byteIndex] & mask;
            //If the index is more than 32, write to the high 32 bit variable
            if(i >= 32){
                mHashUpperHalf |= (1 << (i - 32)) * bit;
            }else{
                mHashLowerHalf |= (1 << i) * bit;
            }
        }
    }
    
    return true;
}
