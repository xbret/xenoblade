#include "monolithlib/CPackItem.hpp"


bool CPackItem::func_804DE920() {
    bool result = false;
    if(this->unk74 != 3 && this->unk7A == 0) result = true;
    return result;
}

void CPackItem::func_804DE948() {
    u16* r5; //likely fake
    PackHeader* packHeader;

    packHeader = this->packHeader;
    
    if(packHeader != NULL)
    {
        u64* fileHashTable = packHeader->fileHashTable;
        this->fileHashTablePtr = fileHashTable;
        r5 = (u16*)fileHashTable + packHeader->files * 4;
        this->unk5C = r5;
        r5 += packHeader->files;
        
        if(packHeader->pkhFilesize > (u32)r5 - (u32)packHeader){
            this->unk60 = r5;
        }
    }
}

BOOL CPackItem::OnFileEvent(UnkStruct* r4) {
    UnkStruct* r5 = (UnkStruct*)(this->unk4C);
    if(r4->unk4 == r5){
        if(r4->unk0 == 1){
            void* r4 = r5->unk4;
            r5->unk4 = NULL;
            this->packHeader = (PackHeader*)r4;
            func_804DE948();
        }else{
            this->unk78 = 1;
        }

        this->unk4C = NULL;
        return true;
    }

    return false;
}


/* Calculates the hash of the given file name string. This is used to
find where the file is located in the pkb archive using the hash table
in the pkh file. */
//func_804DEA08
bool CPackItem::CalculatePackFileHash(const char* filename) {
    if (this->packHeader == NULL) {
        return false;
    }
    this->hashLowerHalf = 0;
    this->hashUpperHalf = 0;
    
    int length = strlen(filename); //r3

    //Return if the string is empty
    if (length == 0) {
        return false;
    }

    u32 hashValTableLength = this->packHeader->hashValTableLength;
    
    for(u32 i = 0; i < hashValTableLength; i++){
        u32 byteIndex = this->packHeader->hashValTable[i] / 8;
        u32 bitIndex = this->packHeader->hashValTable[i] % 8;
        u8 mask = 1 << bitIndex;
        if (length - 1 >= byteIndex) {
            bool bit = (u8)filename[length - 1 - byteIndex] & mask;
            //If the index is more than 32, write to the high 32 bit variable
            if (i >= 32) {
                hashUpperHalf |= (1 << (i - 32)) * bit;
            } else {
                hashLowerHalf |= (1 << i) * bit;
            }
        }
    }
    
    return true;
}
