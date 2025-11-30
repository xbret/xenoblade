#include <monolib/device.hpp>
#include <monolib/work.hpp>
#include "decomp.h"

CW_FORCE_STRINGS(CWorkControl_cpp,
                 "CWorkFlowTvMode",
                 "CWorkFlowSetup",
                 "CWorkFlowShutdownAll",
                 "CWorkFlowWiiMenu",
                 "CWorkFlowWiiReset",
                 "CWorkFlowWiiPowerOff");

CWorkControl* CWorkControl::spInstance = nullptr;

CWorkControl::CWorkControl(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, MAX_CHILD){
    spInstance = this;
    mType = THREAD_CWORKCONTROL;
}

CWorkControl::~CWorkControl(){
    spInstance = nullptr;
}

CWorkControl* CWorkControl::getInstance(){
    return spInstance;
}

bool CWorkControl::setFlowSetup(){
    CWorkFlowSetup* pFlowSetup = CWorkFlowSetup::getInstance();
    if(pFlowSetup != nullptr){
        return true;
    }

    CWorkFlowSetup::create("CWorkFlowSetup", getInstance());
    return true;
}

void CWorkControl::pause(bool paused){
    getInstance()->wkSetEventChild(paused ? EVT_PAUSE : EVT_UNPAUSE);
}

bool CWorkControl::hasFlow(){
    if(CWorkFlowWiiMenu::getInstance() != nullptr){
        return true;
    }

    if(CWorkFlowShutdownAll::getInstance() != nullptr){
        return true;
    }

    if(CWorkFlowWiiReset::getInstance() != nullptr){
        return true;
    }

    if(CWorkFlowWiiPowerOff::getInstance() != nullptr){
        return true;
    }

    if(CWorkFlowSetup::getInstance() != nullptr){
        return true;
    }

    return false;
}

bool CWorkControl::wkStandbyLogin(){
    setFlowSetup();
    return CWorkThread::wkStandbyLogin();
}

bool CWorkControl::wkStandbyLogout(){
    if(mChildren.empty() && CDevice::getInstance() == nullptr){
        return CWorkThread::wkStandbyLogout();
    }

    return false;
}

CWorkControl* CWorkControl::create(CWorkThread* pParent){
    return create("CWorkControl", pParent);
}

DECOMP_INLINE CWorkControl* CWorkControl::create(const char* pName, CWorkThread* pParent){
    CWorkControl* pWorkControl = new (CWorkThreadSystem::getWorkMem()) CWorkControl(pName, pParent);

    CWorkUtil::entryWork(pWorkControl, pParent, false);
    return pWorkControl;
}
