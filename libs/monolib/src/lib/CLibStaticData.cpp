#include "monolib/lib.hpp"
#include "monolib/work.hpp"
#include "monolib/device.hpp"
#include "monolib/core.hpp"
#include <cstring>

using namespace mtl;

CLibStaticData* CLibStaticData::spInstance;
StaticArcFileData* CLibStaticData::sStaticArcFileListPtr;

CLibStaticData::CLibStaticData(const char* pName, CWorkThread* pParent) :
CWorkThread(pName, pParent, MAX_CHILD),
mState(STATE_0),
mItems(){
    spInstance = this;
    mType = THREAD_CLIBSTATICDATA;
    mItems.reserve(mAllocHandle, MAX_ITEMS);
}

CLibStaticData::~CLibStaticData(){
    spInstance = nullptr;
}

CLibStaticData* CLibStaticData::getInstance(){
    return spInstance;
}

bool CLibStaticData::isInitialized(){
    return spInstance->isRunning();
}

void CLibStaticData::saveStaticFileArray(StaticArcFileData* pList){
    sStaticArcFileListPtr = pList;
}

bool CLibStaticData::getStaticFileData(const char* pName, StaticDataHandle* pHandle, u32* r5){
    if(r5 != nullptr){
        *r5 = 0;
    }

    pHandle->data = nullptr;
    CLibStaticData* instance = spInstance;
    
    //Check if the item list contains an item with a matching name
    for(CItem** it = instance->mItems.begin(); it != instance->mItems.end(); it++){
        CItem* item = *it;
        if(std::strcmp(item->mFileData->mName, pName) == 0){
            pHandle->data = item->mData;

            if(r5 != nullptr){
                *r5 = (*it)->mLength;
            }

            bool result = false;

            if(pHandle != nullptr){
                CFileHandle* fileHandle = (*it)->mFileHandle;
                if(fileHandle == nullptr) result = true;
            }

            return result;
        }
    }

    return false;
}

bool CLibStaticData::wkStandbyLogin(){
    if(isThreadFlag0()) return CWorkThread::wkStandbyLogin();
    if(!CWorkSystemPack::func_804DE08C()) return false;

    switch(mState){
        case STATE_0:
            if(!CDeviceGX::isInitialized()){
                return false;
            }

            //If the static arc file list is valid, create an entry for each file
            if(sStaticArcFileListPtr != nullptr){
                StaticArcFileData* staticArcFileData = sStaticArcFileListPtr;
                
                for(StaticArcFileData* it = sStaticArcFileListPtr; it->mName != nullptr; it++){
                    CItem* item = new (CWorkThreadSystem::getWorkMem()) CItem(it);
                    mItems.push_back(item);
                }
            }

            mState++;
            //Fallthrough
        case STATE_1:
            //Check whether each file has been loaded. If one hasn't been loaded yet, exit early
            for(CItem** it = mItems.begin(); it != mItems.end(); it++){
                CItem* item = *it;
                if(item->mData == nullptr) return false;
            }

            mState++;
            //Fallthrough
        default:
            return CWorkThread::wkStandbyLogin();
    }

    return true;
}

bool CLibStaticData::wkStandbyLogout(){
    if(mChildren.empty() && CProcRoot::getInstance() == nullptr){
        for(CItem** it = mItems.begin(); it != mItems.end(); it++){
            if(*it != nullptr){
                delete *it;
                *it = nullptr;
            }
        }

        mItems.destroy();

        return CWorkThread::wkStandbyLogout();
    }

    return false;
}

CLibStaticData::CItem::CItem(StaticArcFileData* arcFileData) :
mFileData(arcFileData),
mFileHandle(nullptr),
mData(nullptr),
mLength(0),
unk14(false) {
    //Determine the handle to use for opening the file
    //TODO: This is likely an inline
    ALLOC_HANDLE handle = MemManager::getHandleMEM2();
    MemHandleType unk8 = arcFileData->mHandleType;
    if(unk8 == HANDLE_MEM1){
        handle = MemManager::getHandleMEM1();
    }else if(unk8 == HANDLE_STATIC){
        handle = MemManager::getHandleStatic();
    }

    //Try loading the file through CWorkSystemPack
    //tf is it doing with mFileData??
    if(CWorkSystemPack::func_804DDDF4((const char*)mFileData, &mData, &mLength)){
        //If successful, call the loaded callback
        unk14 = true;
        if(mFileData->mFileLoadedCallback != nullptr){
            mFileData->mFileLoadedCallback(mData, mLength);
        }

    }else{
        //If it failed, read the file like normal
        mFileHandle = CDeviceFile::readFile(handle, (const char*)mFileData, this, 0, 0);
    }
}

CLibStaticData::CItem::~CItem(){
    if(mFileHandle != nullptr){
        CDeviceFile::cancel(mFileHandle);
        mFileHandle = nullptr;
    }

    if(mFileData->mFileUnloadedCallback != nullptr){
        mFileData->mFileUnloadedCallback(mData, mLength);
    }

    if(unk14){
        mData = nullptr;
    }

    DELETE_OBJ(mData);
}

bool CLibStaticData::CItem::OnFileEvent(CEventFile* pEventFile){
    if(pEventFile->unk0 == true){
        CFileHandle* fileHandle = pEventFile->mFileHandle;
        if(pEventFile->mFileHandle == mFileHandle){
            mData = mFileHandle->getData();
            mLength = mFileHandle->getLength();
            mFileHandle = nullptr;

            //Call the loaded callback
            if(mFileData->mFileLoadedCallback != nullptr){
                mFileData->mFileLoadedCallback(mData, mLength);
            }
        }

        return true;
    }

    return false;
}
