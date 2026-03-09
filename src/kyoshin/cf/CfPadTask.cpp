#include "kyoshin/cf/CfPadTask.hpp"
#include "kyoshin/cf/CfGameManager.hpp"
#include "kyoshin/CGame.hpp"
#include "kyoshin/CTaskGame.hpp"
#include "kyoshin/ErrMesData.hpp"
#include "monolib/math.hpp"
#include "monolib/lib.hpp"
#include "monolib/work.hpp"
#include "monolib/device.hpp"
#include <revolution/KPAD.h>
#include <revolution/PAD.h>
#include <cstring>

namespace cf{
    u8 CfPadTask::lbl_80666D30;
    u8 CfPadTask::lbl_80666D31;
    bool CfPadTask::sMainPadIsGCController;
    u8 CfPadTask::lbl_80666D33;

    u32 CfPadTask::sWiimoteBattery;
    CfPadTask* CfPadTask::spInstance;
    u32 CfPadTask::lbl_80666D3C;
    int CfPadTask::lbl_80666D40;
    float CfPadTask::float_80666D44;
    float CfPadTask::float_80666D48;
    WPADInfo CfPadTask::sWpadInfo;

    CfPadTask::CfPadTask() : CTTask<CfPadTask>(),
    mFrameCounter(0){
        CLibHbm::addCallback(this);
        float_80666D44 = 0;
        float_80666D48 = 0;
    }

    CfPadTask::~CfPadTask(){
        lbl_80666D3C = 0;
        lbl_80666D40 = 0;
        CLibHbm::removeCallback(this);
    }

    void CfPadTask::Init(){
        mErrorFrameCount = 0;
        mNoErrorFrameCount = 0;
        spInstance = this;
    }

    void CfPadTask::Term(){
        CLibHbm::func_8045D45C(-1);
        spInstance = nullptr;
    }

    void CfPadTask::func_801C1AD0(CPad* pPad, u32 r5, u32 r6){

    }

    void CfPadTask::func_801C1B94(float f1){
        if(f1 < ml::epsilon) float_80666D44 = 0;
        else if(f1 > float_80666D44) float_80666D44 = f1;
    }

    bool CfPadTask::func_801C1BC0(){
        return float_80666D44 > ml::epsilon;
    }

    void CfPadTask::func_801C1BD8(float f1){
        if(f1 < ml::epsilon) float_80666D48 = 0;
        else if(f1 > float_80666D48) float_80666D48 = f1;
    }

    void CfPadTask::updateCfPadData(CfPadData* r4, const CPad* r5){
        u32 prevHoldFlags = r4->mHeldButtonFlags;
        r4->mPrevHeldButtonFlags = prevHoldFlags;
        r4->mHeldButtonFlags = r5->mHeldButtonFlags;
        r4->mPad = *r5;

        //Override the default deadzone check for the left stick for whatever reason
        if(ml::math::abs(r4->mPad.mLStickXRaw) < CFPAD_STICK_DEADZONE){
            r4->mHeldButtonFlags &= ~(PAD_INPUT_FLAG_LSTICK_LEFT | PAD_INPUT_FLAG_LSTICK_RIGHT);
        }

        if(ml::math::abs(r4->mPad.mLStickYRaw) < CFPAD_STICK_DEADZONE){
            r4->mHeldButtonFlags &= ~(PAD_INPUT_FLAG_LSTICK_UP | PAD_INPUT_FLAG_LSTICK_DOWN);
        }

        //TODO: what does this code do?
        bool wasHoldingDpadButton = prevHoldFlags & PAD_INPUT_FLAG_DPAD;
        bool wasHoldingStickDir = prevHoldFlags & PAD_INPUT_FLAG_LSTICK;

        if(r4->mHeldButtonFlags & PAD_INPUT_FLAG_DPAD){
            if(wasHoldingStickDir) r4->mHeldButtonFlags &= ~PAD_INPUT_FLAG_DPAD;
            else r4->mHeldButtonFlags &= ~PAD_INPUT_FLAG_LSTICK;
        }else{
            if(wasHoldingDpadButton) r4->mHeldButtonFlags &= ~PAD_INPUT_FLAG_LSTICK;
            else r4->mHeldButtonFlags &= ~PAD_INPUT_FLAG_DPAD;
        }

        //Do basically the same thing done in CPadManager again bc why not!
        u32 changedFlags = prevHoldFlags ^ r4->mHeldButtonFlags;
        u32 pressedButtonFlags = r4->mHeldButtonFlags & changedFlags;
        r4->mPressedButtonFlags = pressedButtonFlags;
        r4->mTurboPressButtonFlags = pressedButtonFlags;

        u32 bit = 1;

        for(int i = 0; i < MAX_PAD_INPUT_FLAGS; i++){
            if(r4->mHeldButtonFlags & bit){
                if(r4->mPressedButtonFlags & bit){
                    r4->mButtonHoldTimersTurbo[i] = 0;
                }

                r4->mButtonHoldTimersTurbo[i]++;

                if(r4->mButtonHoldTimersTurbo[i] >= TURBO_HOLD_TIMER_THRESHOLD + TURBO_INPUT_FRAMES){
                    r4->mTurboPressButtonFlags |= bit;
                    r4->mButtonHoldTimersTurbo[i] -= TURBO_INPUT_FRAMES;
                }
            }

            bit <<= 1;
        }

        //Why???
        r4->mTurboPressButtonFlags &= r4->mHeldButtonFlags;
    }

    void CfPadTask::Move(){
        mFrameCounter++;
        if(mFrameCounter > 0xFFFF) mFrameCounter = 0xFFFF;

        if(CfGameManager::checkUnkFlag(21)) return;

        int result = checkForControllerError(update());
        if(result != ERROR_NONE && !CLibHbm::isHbmControlInitialized() && !CWorkSystem::isOff() && !CTaskGame::func_8004368C()
        && mFrameCounter > CDeviceVI::TARGET_FRAMERATE * 2){
            if(result == ERROR_WIIMOTE_DISCONNECTED && !CGame::func_8003933C()) return;

            mErrorFrameCount++;
            
            //If an controller error persists for more than 9 frames, trigger an error
            if(mErrorFrameCount > MAX_ERROR_FRAMES){
                if(result == ERROR_WIIMOTE_DISCONNECTED){
                    CGame::registerControllerErrorEntry(getWiiRemoteDisconnectedErrorMessage(),this, 0);
                }else if(result == ERROR_NUNCHUCK_DISCONNECTED){
                    CGame::registerControllerErrorEntry(getNunchuckDisconnectedErrorMessage(),this, 0);
                }else if(result == ERROR_CLASSIC_CONTROLLER_DISCONNECTED){
                    CGame::registerControllerErrorEntry(getClassicControllerDisconnectedErrorMessage(),this, 0);
                }else if(result == ERROR_NO_EXTENSION){
                    CGame::registerControllerErrorEntry(getNoExtensionErrorMessage(),this, 0);
                }

                mErrorFrameCount = 0;
            }
        }else{
            mErrorFrameCount = 0;
        }
    }

    bool CfPadTask::update(){
        u32 r20 = CfGameManager::func_80086F44();
        u32 r19 = CfGameManager::getCurrentPadChannel();
        CDeviceRemotePad* remotePad = CDeviceRemotePad::getInstance();
        CPad* mainPad = CPadManager::getMainPad();
        CPad* r18 = nullptr;

        if(mainPad->mPadType == PAD_TYPE_GC){
            sMainPadIsGCController = true;
        }

        if(float_80666D44 > 0){
            r20 = 0;
            float_80666D44--;
            if(float_80666D44 <= 0){
                float_80666D44 = 0;
            }
        }

        float_80666D48--;
        r20 &= 0xFF9FF300;
        if(float_80666D48 <= 0){
            float_80666D48 = 0;
        }

        if(r19 != -1){
            r18 = CDeviceRemotePad::getPadData(r19);
            if(r18 != nullptr){ //0x16C
                lbl_80666D33++;
                if(!(lbl_80666D33 & 0x1F)){
                    for(u32 i = 1; i < MAX_WII_CONTROLLERS; i++){
                        CPad* pad = CDeviceRemotePad::getPadData(i);
                        if(pad != nullptr && pad->mConnected){
                            WPADDisconnect(i);
                        }
                    }
                }

                if(lbl_80666D33 == 0){
                    WPADGetInfoAsync(r18->mChannel, &sWpadInfo, &wpadGetInfoCallback);
                }
                
                CLibHbm::func_8045D45C(r19);
            }
        }

        CfGameManager::setCurrentPadPtr(nullptr, -1);

        switch(lbl_80666D40){
            case 0:
            case 2:
                if(r18 != nullptr && r18->mConnected){
                    if(r18->mPadType == PAD_TYPE_FS){
                        lbl_80666D40 = PAD_TYPE_FS;
                        CPadManager::setRightStickDeadzoneDefault();
                    }else if(r18->mPadType == PAD_TYPE_CLASSIC){
                        lbl_80666D40 = PAD_TYPE_CLASSIC;
                        CPadManager::setRightStickDeadzone(0.3f);
                    }else if(r18->mPadType == PAD_TYPE_CORE){
                        lbl_80666D40 = PAD_TYPE_CORE;
                        CPadManager::setRightStickDeadzoneDefault();
                    }
                }
                break;
        }

        bool flag24 = CfGameManager::checkUnkFlag(24) != false;
        if(flag24 && r18 != nullptr){
            if(lbl_80666D40 <= PAD_TYPE_CLASSIC){
                if(r18->mConnected && r18->mPadType <= PAD_TYPE_CLASSIC){
                    if(r18->mPadType == PAD_TYPE_CLASSIC){
                        lbl_80666D40 = PAD_TYPE_CLASSIC;
                        CPadManager::setRightStickDeadzone(0.3f);
                    }else{
                        CPadManager::setRightStickDeadzoneDefault();
                    }
                }
            }

            if(r18->mPadType <= PAD_TYPE_CLASSIC){
                lbl_80666D3C = r18->mPadType;
            }else{
                lbl_80666D3C = PAD_TYPE_NONE;
            }
        }else if(flag24 && lbl_80666D40 <= PAD_TYPE_CLASSIC && lbl_80666D3C == PAD_TYPE_NONE){
            lbl_80666D3C = lbl_80666D40;
        }

        u32 r24 = r20 & 0x6000;
        u32 r23 = r20 & 0x18000;
    
        //r17 = 0, r16 (i) = 0, r27 = 0, r28 = 2, r29 = 1, r26 = 9, r30 = 3, f29 = 0, f30 = 0.3, f31 = 0.7

        bool r17 = false;
        u32 r21 = 0;
        bool r22 = 0;

        for(int i = 0; i < 8; i++){
            if(i - 1 <= 2) continue;
            if(r19 != -1 && i <= 3 && r19 != i) continue;

            CPad r1_8;
            CPad* pad = CDeviceRemotePad::getPadData(i);

            if(pad == nullptr) continue;
            r1_8 = *pad;

            u32 r4 = 0;
            u32 padType = pad->mPadType;
            if(padType == lbl_80666D40 || lbl_80666D40 == 2 || (padType == 2 && CfGameManager::checkUnkFlag(28))){
                r4 = 1;
            }

            if(r1_8.mConnected){
                r4 = 0;
            }

            if(i <= 3 && r1_8.mConnected && padType != 0){
                r21 = 1;
                sMainPadIsGCController = true;
            }
            
            if(r4 != 0){
                r17 = true;
                if(padType == 4){
                    func_801C1AD0(&r1_8, 32, 16);
                    func_801C1AD0(&r1_8, 64, 32);
                }

                //0x554

                r22 = 1;
            }

            //0x6c8

            if(CDeviceRemotePad::getPadData(i) != CDeviceRemotePad::getMainGCPad()){
                std::memset(&r1_8, 0, sizeof(CPad));
            }

            CfGameManager::setPad(i, &r1_8, r21);
        }

        if(r17){
            updateCfPadData(CfGameManager::getCfPadData(),CfGameManager::getCurrentPad());
        }else{
            std::memset(CfGameManager::getCfPadData(), 0, sizeof(CfPadData));
        }

        if(r21 == 0){
            if(lbl_80666D31 != 0){
                sMainPadIsGCController = true;
            }
            
            lbl_80666D31 = 0;
        }else{
            if(lbl_80666D31 < 30){
                lbl_80666D31++;
                if((u8)lbl_80666D31 == 30){
                    KPADDisableDPD(r19);
                }
            }
        }


        return r22;
    }

    CfPadTask* CfPadTask::create(CProcess* pParent){
        CfPadTask* padTask = new (CWorkThreadSystem::getWorkMem()) CfPadTask();
        padTask->Regist(pParent, false);
        return padTask;
    }
    
    bool CfPadTask::gameExceptionCB(u32 r4){
        if(checkForControllerError(update()) == ERROR_NONE){
            mNoErrorFrameCount++;
            //If there has been no controller error for more than 9 frames, allow the exception message to be disabled
            if(mNoErrorFrameCount >= MAX_ERROR_FRAMES){
                mNoErrorFrameCount = 0;
                return true;
            }
        }

        return false;
    }

    int CfPadTask::checkForControllerError(bool r4){
        if(!r4){
            if((lbl_80666D31 >= 30 && lbl_80666D30 != 0) || sMainPadIsGCController){
                if(sMainPadIsGCController) return ERROR_WIIMOTE_DISCONNECTED;

                if(CfGameManager::checkUnkFlag(28)){
                    if(lbl_80666D30 == 1) return ERROR_NUNCHUCK_DISCONNECTED;
                    else if(lbl_80666D30 == 2) return ERROR_CLASSIC_CONTROLLER_DISCONNECTED;
                    else if(lbl_80666D30 == 3) return ERROR_NO_EXTENSION;
                }
            }
        }else if(lbl_80666D31 >= 30 && CfGameManager::checkUnkFlag(28)){
            if(lbl_80666D30 == 3) return 4;
        }
        
        return ERROR_NONE;
    }

    void CfPadTask::onInitHbm(){
        u32 channel = cf::CfGameManager::func_80087208();
        if(channel != -1){
            KPADEnableDPD(channel);
        }
    }

    void CfPadTask::onDeleteHbm(){
        u32 channel = cf::CfGameManager::func_80087208();
        if(channel != -1){
            KPADDisableDPD(channel);
        }
    }

    u32 CfPadTask::getWiimoteBattery(){
        return sWiimoteBattery;
    }

    void CfPadTask::wpadGetInfoCallback(s32 chan, s32 result){
        if(spInstance != nullptr && result == WPAD_ERR_OK){
            sWiimoteBattery = sWpadInfo.battery;
        }
    }

}
