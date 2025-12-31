#include "monolib/work.hpp"

CWorkSystemMem* CWorkSystemMem::spInstance;

CWorkSystemMem::CWorkSystemMem(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, 1),
mHandle(mtl::INVALID_HANDLE){
    spInstance = this;
    mHandle = mtl::MemManager::create(mtl::MemManager::getHandleMEM2(), WORKSYSTEM_REGION_SIZE, mName.c_str());
}

CWorkSystemMem::~CWorkSystemMem(){
    spInstance = nullptr;
}

mtl::ALLOC_HANDLE CWorkSystemMem::getHandle(){
    return spInstance->mHandle;
}

bool CWorkSystemMem::wkStandbyLogin(){
    return CWorkThread::wkStandbyLogin();
}

bool CWorkSystemMem::wkStandbyLogout(){
    if(mChildren.empty()){
        if(mParent->hasSingleChild() && mParent->wkGetChild() == this){
            mtl::MemManager::erase(mHandle);
            mHandle = mtl::INVALID_HANDLE;
            return CWorkThread::wkStandbyLogout();
        }
    }

    return false;
}
