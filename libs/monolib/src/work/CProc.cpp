#include "monolib/work.hpp"
#include "monolib/core.hpp"

CProc::CProc(const char* pName, CWorkThread* pWorkThread, s16 capacity) :
CWorkThread(pName, pWorkThread, capacity),
unk1E4(-1){
    unk1E8 = 2;
    mType = THREAD_CPROC;
    unk1C4.reserve(mAllocHandle, 16);
}

CProc::~CProc(){
    //Empty loop. Maybe had stubbed code?
    for(reslist<u32>::iterator it = unk1C4.begin(); it != unk1C4.end(); it++){
    }
}

CWorkThread* CProc::func_8043917C(CWorkThread* pThread) {
    if(pThread == nullptr){
        return nullptr;
    }

    int type = pThread->mType;

    if(THREAD_CPROC <= type && type < THREAD_47) return pThread;
    return nullptr;
}

void CProc::pssDetachView(){
    for(reslist<u32>::iterator it = unk1C4.begin(); it != unk1C4.end(); it++){
        u32 value = *it;
        CView* view = CViewRoot::getView(value);
        view->func_8043EAD8(this);
    }

    unk1C4.clear();
}

bool CProc::wkStandbyLogin(){
    //Kind of strange that it just calls this function. Maybe there was code here that got stubbed?
    return CWorkThread::wkStandbyLogin();
}

bool CProc::wkStandbyLogout(){
    pssDetachView();
    CViewRoot::destroyProc(this);
    return CWorkThread::wkStandbyLogout();
}
