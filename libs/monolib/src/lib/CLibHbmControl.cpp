#include "monolib/lib/CLibHbmControl.hpp"
#include "monolib/lib/CLibHbm.hpp"
#include "monolib/core.hpp"
#include "monolib/work.hpp"
#include "monolib/device.hpp"
#include <revolution/WPAD.h>
#include <cstring>

CLibHbmControl::CLibHbmControl(const char* pName, CWorkThread* pParent) : CProc(pName, pParent, MAX_CHILD),
unk22C(0),
unk230(0) {
    spInstance = this;
    mType = THREAD_CLIBHBMCONTROL;
    std::memset(&mHBMControllerData, 0, sizeof(HBMControllerData));
}

CLibHbmControl::~CLibHbmControl(){
    spInstance = nullptr;
}

CLibHbmControl* CLibHbmControl::getInstance(){
    return spInstance;
}

bool CLibHbmControl::func_8045E530(){
    CLibHbmControl* hbmControl = spInstance;

    if(hbmControl == nullptr) return false;
    return hbmControl->unk22C == 3;
}

void CLibHbmControl::wkUpdate(){
    switch(unk22C){
        case 0:
            CLibHbm::loadHbmArcFile();
            unk230 = 0xD2;
            unk22C++;
            break;
        case 1:
            if(!CDeviceFileCri::getInstance()->isException()){
                unk230--;
                if(unk230 <= 0){
                    wkSetEvent(EVT_NONE);
                }

                break;
            }

            wkSetEvent(EVT_NONE);

            if(CLibHbm::checkFlag6()){
                unk22C = 0;
            }else if(CLibHbm::isHbmMemPointerValid()){
                unk22C++;
            }
            break;
        case 2:
            CLibHbm::initHbm();
            unk22C++;
            break;
        case 3:
            for(int i = 0; i < WPAD_MAX_CONTROLLERS; i++){
                CWpadStatus* wpadStatus = CDeviceRemotePad::getWpadStatus(i);

            }
            break;
        default:
            break;
    }

    HBMUpdateSound();

    HBMSelectBtnNum selectBtnNum = HBMCalc(&mHBMControllerData);

    switch(selectBtnNum){
        case HBM_SELECT_HOMEBTN:
            wkSetEvent(EVT_NONE);
            break;
        case HBM_SELECT_BTN1:
            returnToWiiMenu(false);
            break;
        case HBM_SELECT_BTN2:
            resetGame(false);
            break;
        default:
            break;
    }
}

void CLibHbmControl::wkRender(){
    
}

CLibHbmControl* CLibHbmControl::create(){
    CLibHbmControl* hbmControl = CREATE_WORKTHREAD(CLibHbmControl, CLibHbm::getInstance());

    hbmControl->unk1E4 = CDesktop::getView()->mWorkID;

    return hbmControl;
}

bool CLibHbmControl::wkStandbyLogin(){
    return CProc::wkStandbyLogin();
}


bool CLibHbmControl::wkStandbyLogout(){
    return CProc::wkStandbyLogout();
}
