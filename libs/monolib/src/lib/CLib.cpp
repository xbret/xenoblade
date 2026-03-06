#include "monolib/lib.hpp"
#include "monolib/device.hpp"
#include "monolib/work.hpp"

CLib* CLib::spInstance;

CLib::CLib(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, MAX_CHILD) {
    spInstance = this;
    mType = THREAD_CLIB;
}

CLib::~CLib(){
    spInstance = nullptr;
}

CLib* CLib::getInstance(){
    return spInstance;
}

bool CLib::isInitialized(){
    if(!spInstance->isRunning()) return false;
    if(CLibHbm::getInstance() == nullptr) return false;
    if(!CLibHbm::isInitialized()) return false;
    if(CLibG3d::getInstance() == nullptr) return false;
    if(!CLibG3d::isInitialized()) return false;
    if(CLibLayout::getInstance() == nullptr) return false;
    if(!CLibLayout::isInitialized()) return false;
    if(CLibVM::getInstance() == nullptr) return false;
    if(!CLibVM::isInitialized()) return false;
    if(CLibStaticData::getInstance() == nullptr) return false;
    if(!CLibStaticData::isInitialized()) return false;
    return true;
}

void CLib::createLibs(){
    CREATE_WORKTHREAD(CLibHbm, this);
    CREATE_WORKTHREAD(CLibG3d, this);
    CREATE_WORKTHREAD(CLibLayout, this);
    CREATE_WORKTHREAD(CLibVM, this);
    CREATE_WORKTHREAD(CLibStaticData, this);
}

bool CLib::wkStandbyLogin(){
    if(CDevice::isAllReady()){
        createLibs();

        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CLib::wkStandbyLogout(){
    //"Failed to log out"
    wkCheckTimeout(30000, mChildren.empty() && CWorkSystem::getInstance() == nullptr, "ログアウトに失敗しました");

    if(mChildren.empty() && CWorkSystem::getInstance() == nullptr) return CWorkThread::wkStandbyLogout();
    return false;
}

CLib* CLib::create(){
    CLib* lib = CREATE_WORKTHREAD(CLib, CWorkControl::getInstance());
    return lib;
}
