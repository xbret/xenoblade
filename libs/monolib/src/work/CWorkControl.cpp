#include "monolib/work/CWorkControl.hpp"

#include "decomp.h"
#include "monolib/device/CDevice.hpp"
#include "monolib/work/CWorkFlowSetup.hpp"
#include "monolib/work/CWorkFlowShutdownAll.hpp"
#include "monolib/work/CWorkFlowWiiMenu.hpp"
#include "monolib/work/CWorkFlowWiiPowerOff.hpp"
#include "monolib/work/CWorkFlowWiiReset.hpp"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/CWorkUtil.hpp"

CW_FORCE_STRINGS(CWorkControl_cpp,
                 "CWorkFlowTvMode",
                 "CWorkFlowSetup",
                 "CWorkFlowShutdownAll",
                 "CWorkFlowWiiMenu",
                 "CWorkFlowWiiReset",
                 "CWorkFlowWiiPowerOff");

CWorkControl* CWorkControl::spInstance = nullptr;

CWorkControl::CWorkControl(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, MAX_CHILD) {
    spInstance = this;
    mType = WORKTHREAD_CWORKCONTROL;
}

CWorkControl::~CWorkControl() {
    spInstance = nullptr;
}

CWorkControl* CWorkControl::getInstance() {
    return spInstance;
}

bool CWorkControl::setFlowSetup() {
    CWorkFlowSetup* pFlowSetup = CWorkFlowSetup::getInstance();
    if(pFlowSetup != nullptr) {
        return true;
    }

    CWorkFlowSetup::create("CWorkFlowSetup", getInstance());
    return true;
}

void CWorkControl::pause(bool paused) {
    getInstance()->wkSetEventChild(paused ? EVT_PAUSE : EVT_UNPAUSE);
}

bool CWorkControl::hasFlow() {
    if(CWorkFlowWiiMenu::getInstance() != nullptr) {
        return true;
    }

    if(CWorkFlowShutdownAll::getInstance() != nullptr) {
        return true;
    }

    if(CWorkFlowWiiReset::getInstance() != nullptr) {
        return true;
    }

    if(CWorkFlowWiiPowerOff::getInstance() != nullptr) {
        return true;
    }

    if(CWorkFlowSetup::getInstance() != nullptr) {
        return true;
    }

    return false;
}

bool CWorkControl::wkStartup() {
    setFlowSetup();
    return CWorkThread::wkStartup();
}

bool CWorkControl::wkShutdown() {
    if(mChildren.empty() && CDevice::getInstance() == nullptr) {
        return CWorkThread::wkShutdown();
    }

    return false;
}

CWorkControl* CWorkControl::create(CWorkThread* pParent) {
    return create("CWorkControl", pParent);
}

DECOMP_INLINE CWorkControl* CWorkControl::create(const char* pName, CWorkThread* pParent) {
    CWorkControl* pWorkControl = new (CWorkThreadSystem::getWorkMem()) CWorkControl(pName, pParent);

    CWorkUtil::entryWork(pWorkControl, pParent, false);
    return pWorkControl;
}
