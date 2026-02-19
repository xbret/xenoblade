#include "monolib/work.hpp"
#include "monolib/lib.hpp"
#include "monolib/core.hpp"

CProcRoot* CProcRoot::spInstance;

CProcRoot::CProcRoot(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, 32) {
    spInstance = this;
    mType = THREAD_CPROCROOT;
}

CProcRoot::~CProcRoot(){
    spInstance = nullptr;
}

CProcRoot* CProcRoot::getInstance(){
    return spInstance;
}

bool CProcRoot::wkStandbyLogin(){
    if(isThreadFlag0()){
        return CWorkThread::wkStandbyLogin();
    }

    if(CLib::isInitialized() && CViewRoot::isInitialized()){
        CREATE_WORKTHREAD(CDesktop, this);
        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CProcRoot::wkStandbyLogout(){
    //TODO: maybe this should be an inline
    return !mChildren.empty() ? false : CWorkThread::wkStandbyLogout();
}

CProcRoot* CProcRoot::create(CWorkThread* pParent){
    CProcRoot* procRoot = CREATE_WORKTHREAD(CProcRoot, pParent);
    return procRoot;
}
