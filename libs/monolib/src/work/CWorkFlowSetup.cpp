#include "monolib/work/CWorkFlowSetup.hpp"

#include "monolib/lib/CLib.hpp"
#include "monolib/work/CWorkThread.hpp"

CWorkFlowSetup* CWorkFlowSetup::spInstance = nullptr;

CWorkFlowSetup::CWorkFlowSetup(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, 0), unk1C4(0){
    spInstance = this;
}

CWorkFlowSetup::~CWorkFlowSetup(){
    spInstance = nullptr;
}

CWorkFlowSetup* CWorkFlowSetup::getInstance(){
    return spInstance;
}

bool CWorkFlowSetup::wkStartup(){
    if(CLib::isInitialized()){
        wkSetEvent(EVT_NONE);
        return CWorkThread::wkStartup();
    }

    return false;
}

bool CWorkFlowSetup::wkShutdown(){
    return !mChildren.empty() ? false : CWorkThread::wkShutdown();
}
