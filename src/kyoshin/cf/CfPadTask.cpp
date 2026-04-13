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
    u8 CfPadTask::sMainPadExtension;
    u8 CfPadTask::sDpadDisableTimer;
    bool CfPadTask::sMainPadIsGCController;
    u8 CfPadTask::sWpadDisconnectTimer;

    u32 CfPadTask::sWiimoteBattery;
    CfPadTask* CfPadTask::spInstance;
    u32 CfPadTask::lbl_80666D3C;
    u32 CfPadTask::sMainPadType;
    float CfPadTask::sInputDisableTimer;
    float CfPadTask::sButtonDisableTimer;
    WPADInfo CfPadTask::sWpadInfo;

    CfPadTask::CfPadTask() : CTTask<CfPadTask>(),
    mFrameCounter(0){
        CLibHbm::addCallback(this);
        sInputDisableTimer = 0;
        sButtonDisableTimer = 0;
    }

    CfPadTask::~CfPadTask(){
        lbl_80666D3C = PAD_TYPE_NONE;
        sMainPadType = PAD_TYPE_NONE;
        CLibHbm::removeCallback(this);
    }

    void CfPadTask::Init(){
        mErrorFrameCount = 0;
        mNoErrorFrameCount = 0;
        spInstance = this;
    }

    void CfPadTask::Term(){
        CLibHbm::setCurrentWpadChannel(WPAD_CHAN_INVALID);
        spInstance = nullptr;
    }

    void CfPadTask::copyInputFlag(CPad* pPad, u32 r5, u32 r6){
        if(pPad->mPressedButtonFlags & r5) pPad->mPressedButtonFlags |= r6;
        else pPad->mPressedButtonFlags &= ~r6;

        if(pPad->mTurboPressButtonFlags & r5) pPad->mTurboPressButtonFlags |= r6;
        else pPad->mTurboPressButtonFlags &= ~r6;

        if(pPad->mReleasedButtonFlags & r5) pPad->mReleasedButtonFlags |= r6;
        else pPad->mReleasedButtonFlags &= ~r6;

        if(pPad->mHeldButtonFlags & r5) pPad->mHeldButtonFlags |= r6;
        else pPad->mHeldButtonFlags &= ~r6;

        if(pPad->mLongHoldButtonFlags & r5) pPad->mLongHoldButtonFlags |= r6;
        else pPad->mLongHoldButtonFlags &= ~r6;

        if(pPad->mShortPressButtonFlags & r5) pPad->mShortPressButtonFlags |= r6;
        else pPad->mShortPressButtonFlags &= ~r6;
    }

    void CfPadTask::func_801C1B94(float f1){
        if(f1 < ml::epsilon) sInputDisableTimer = 0;
        else if(f1 > sInputDisableTimer) sInputDisableTimer = f1;
    }

    bool CfPadTask::func_801C1BC0(){
        return sInputDisableTimer > ml::epsilon;
    }

    void CfPadTask::func_801C1BD8(float f1){
        if(f1 < ml::epsilon) sButtonDisableTimer = 0;
        else if(f1 > sButtonDisableTimer) sButtonDisableTimer = f1;
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
        && mFrameCounter > SECONDS_TO_FRAMES(2)){
            if(result == ERROR_WIIMOTE_DISCONNECTED && !CGame::func_8003933C()) return;

            mErrorFrameCount++;
            
            //If a controller error persists for more than 9 frames, trigger an error
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
        bool r22 = 0;
        u32 systemType = PAD_SYSTEM_WII;
        u32 enabledInputFlags = CfGameManager::getEnabledInputFlags();
        u32 mainPadChannel = CfGameManager::getCurrentPadChannel();
        CDeviceRemotePad* remotePad = CDeviceRemotePad::getInstance();
        CPad* mainPad = CPadManager::getMainPad();

        if(mainPad->mPadType == PAD_TYPE_GC){
            sMainPadIsGCController = true;
            mainPad = nullptr;
        }

        sMainPadChannel = mainPadChannel;

        if(sInputDisableTimer > 0){
            enabledInputFlags = 0;
            sInputDisableTimer--;
            if(sInputDisableTimer <= 0){
                sInputDisableTimer = 0;
            }
        }

        if(sButtonDisableTimer > 0){
            enabledInputFlags &= ~(PAD_INPUT_FLAG_CORE_A | PAD_INPUT_FLAG_CORE_B | PAD_INPUT_FLAG_1 | PAD_INPUT_FLAG_2 | PAD_INPUT_FLAG_PLUS
            | PAD_INPUT_FLAG_MINUS | PAD_INPUT_FLAG_CLASSIC_A | PAD_INPUT_FLAG_CLASSIC_B);
            sButtonDisableTimer--;
            if(sButtonDisableTimer <= 0){
                sButtonDisableTimer = 0;
            }
        }

        if(mainPadChannel != WPAD_CHAN_INVALID){
            mainPad = CDeviceRemotePad::getPadData(mainPadChannel);
            //BUG: sWpadDisconnectTimer is not properly initialized beforehand
            if(mainPad != nullptr){ //0x16C
                sWpadDisconnectTimer++;
                if(sWpadDisconnectTimer % 32u == 0){
                    for(u32 i = 1; i < WPAD_MAX_CONTROLLERS; i++){
                        CPad* pad = CDeviceRemotePad::getPadData(i);
                        if(pad != nullptr && pad->mConnected){
                            WPADDisconnect(i);
                        }
                    }
                }

                if(sWpadDisconnectTimer == 0){
                    WPADGetInfoAsync(mainPad->mChannel, &sWpadInfo, &wpadGetInfoCallback);
                }
                
                CLibHbm::setCurrentWpadChannel(mainPadChannel);
            }
        }

        CfGameManager::setCurrentPadPtr(nullptr, WPAD_CHAN_INVALID);

        switch(sMainPadType){
            case PAD_TYPE_NONE:
            case PAD_TYPE_CORE:
                if(mainPad != nullptr && mainPad->mConnected){
                    if(mainPad->mPadType == PAD_TYPE_FS){
                        sMainPadType = PAD_TYPE_FS;
                        CPadManager::setRightStickDeadzoneDefault();
                    }else if(mainPad->mPadType == PAD_TYPE_CLASSIC){
                        sMainPadType = PAD_TYPE_CLASSIC;
                        CPadManager::setRightStickDeadzone(0.3f);
                    }else if(mainPad->mPadType == PAD_TYPE_CORE){
                        sMainPadType = PAD_TYPE_CORE;
                        CPadManager::setRightStickDeadzoneDefault();
                    }
                }
                break;
        }

        bool flag24 = CfGameManager::checkUnkFlag(24);
        if(flag24 && mainPad != nullptr && (sMainPadType >= PAD_TYPE_CORE && sMainPadType <= PAD_TYPE_CLASSIC)){
                if(mainPad->mConnected && (mainPad->mPadType >= PAD_TYPE_CORE && mainPad->mPadType <= PAD_TYPE_CLASSIC)){
                    sMainPadType = mainPad->mPadType;
                    if(sMainPadType == PAD_TYPE_CLASSIC){
                        CPadManager::setRightStickDeadzone(0.3f);
                    }else{
                        CPadManager::setRightStickDeadzoneDefault();
                    }
                }

            if(mainPad->mPadType >= PAD_TYPE_FS && mainPad->mPadType <= PAD_TYPE_CLASSIC){
                lbl_80666D3C = mainPad->mPadType;
            }else{
                lbl_80666D3C = PAD_TYPE_NONE;
            }
        }else if(!flag24 && (sMainPadType >= PAD_TYPE_FS && sMainPadType <= PAD_TYPE_CLASSIC) && lbl_80666D3C == PAD_TYPE_NONE){
            lbl_80666D3C = sMainPadType;
        }

        bool r17 = false;

        for(u32 i = 0; i < TOTAL_CONTROLLERS; i++){
            //Exclude Wii controllers in ports 2-4
            if(i >= MAX_WII_CONTROLLERS && i < WPAD_MAX_CONTROLLERS) continue;
            //Skip over the channel for the current main controller
            if(mainPadChannel != -WPAD_CHAN_INVALID && isWpadChannel(i) && mainPadChannel != i) continue;

            CPad newPad;
            CPad* pad = CDeviceRemotePad::getPadData(i);
            if(pad == nullptr) continue;
            newPad = *pad;

            u32 padType = pad->mPadType;
            u32 result = 0;

            if(padType == sMainPadType || sMainPadType == PAD_TYPE_CORE || (padType == PAD_TYPE_CORE && CfGameManager::checkUnkFlag(28))){
                result = 1;
            }

            if(newPad.mConnected){
                result = 0;
            }

            if(isWpadChannel(i) && newPad.mConnected && padType != PAD_TYPE_NONE){
                systemType = PAD_SYSTEM_GC;
                sMainPadIsGCController = true;
            }
            
            if(result != 0){
                r17 = true;
                //Map the Wii A/B buttons to the classic controller A/B buttons
                if(padType == PAD_TYPE_CLASSIC){
                    copyInputFlag(&newPad, PAD_INPUT_FLAG_CLASSIC_A, PAD_INPUT_FLAG_CORE_A);
                    copyInputFlag(&newPad, PAD_INPUT_FLAG_CLASSIC_B, PAD_INPUT_FLAG_CORE_B);
                }

                //0x554

                newPad.mPressedButtonFlags &= enabledInputFlags;
                newPad.mTurboPressButtonFlags &= enabledInputFlags;
                newPad.mReleasedButtonFlags &= enabledInputFlags;
                newPad.mHeldButtonFlags &= enabledInputFlags;
                newPad.mLongHoldButtonFlags &= enabledInputFlags;
                newPad.mShortPressButtonFlags &= enabledInputFlags;

                if((enabledInputFlags & (PAD_INPUT_FLAG_LSTICK_LEFT | PAD_INPUT_FLAG_LSTICK_RIGHT)) == 0){
                    newPad.mLStickX = 0;
                    newPad.mLStickXRaw = 0;
                    newPad.mLeftTriggerFloat = 0;
                    newPad.mRightTriggerFloat = 0;
                }

                if((enabledInputFlags & (PAD_INPUT_FLAG_LSTICK_UP | PAD_INPUT_FLAG_LSTICK_DOWN)) == 0){
                    newPad.mLStickY = 0;
                    newPad.mLStickYRaw = 0;
                }

                if(newPad.mPadType == PAD_TYPE_CLASSIC){
                    if(!(newPad.mHeldButtonFlags & 0x60000)){
                        newPad.mRStickXRaw = 0;
                    }else{
                        if(newPad.mRStickXRaw >= 0){
                            newPad.mRStickXRaw = (newPad.mRStickXRaw - 0.3f)/0.7f;
                        }else{
                            newPad.mRStickXRaw = -(ml::math::abs(newPad.mRStickXRaw) - 0.3f)/0.7f;
                        }
                    }

                    //0x620

                    if(!(newPad.mHeldButtonFlags & 0x180000)){
                        newPad.mRStickYRaw = 0;
                    }else{
                        if(newPad.mRStickYRaw >= 0){
                            newPad.mRStickYRaw = (newPad.mRStickYRaw - 0.3f)/0.7f;
                        }else{
                            newPad.mRStickYRaw = -(ml::math::abs(newPad.mRStickYRaw) - 0.3f)/0.7f;
                        }
                    }
                }

                //0x670

                if(mainPad != nullptr && mainPad == pad && isWpadChannel(i)){
                    CfGameManager::setCurrentPadPtr(CfGameManager::getPad(i), 0);
                    r22 = 1;
                    if(newPad.mPadType == PAD_TYPE_CLASSIC) sMainPadExtension = PAD_EXT_CLASSIC_CONTROLLER;
                    if(newPad.mPadType == PAD_TYPE_FS) sMainPadExtension = PAD_EXT_NUNCHUCK;
                    if(newPad.mPadType == PAD_TYPE_CORE) sMainPadExtension = PAD_EXT_NONE;
                }
            }else{
                if(CDeviceRemotePad::getPadData(i) != CDeviceRemotePad::getMainGCPad()){
                    std::memset(&newPad, 0, sizeof(CPad));
                }
            }

            CfGameManager::setPad(i, &newPad, systemType);
        }

        if(r17){
            updateCfPadData(CfGameManager::getCfPadData(),CfGameManager::getCurrentPad());
        }else{
            std::memset(CfGameManager::getCfPadData(), 0, sizeof(CfPadData));
        }

        //BUG: sDpadDisableTimer is not properly initialized beforehand
        if(systemType == PAD_SYSTEM_WII){
            if(sDpadDisableTimer != 0){
                sMainPadIsGCController = true;
            }
            
            sDpadDisableTimer = 0;
        }else{
            if(sDpadDisableTimer < SECONDS_TO_FRAMES(1)){
                sDpadDisableTimer++;
                if((u8)sDpadDisableTimer == SECONDS_TO_FRAMES(1)){
                    KPADDisableDPD(mainPadChannel);
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

    int CfPadTask::checkForControllerError(bool noError){
        if(!noError){
            if((sDpadDisableTimer >= SECONDS_TO_FRAMES(1) && sMainPadExtension != PAD_EXT_INVALID) || sMainPadIsGCController){
                if(sMainPadIsGCController) return ERROR_WIIMOTE_DISCONNECTED;

                if(CfGameManager::checkUnkFlag(28)){
                    if(sMainPadExtension == PAD_EXT_NUNCHUCK) return ERROR_NUNCHUCK_DISCONNECTED;
                    else if(sMainPadExtension == PAD_EXT_CLASSIC_CONTROLLER) return ERROR_CLASSIC_CONTROLLER_DISCONNECTED;
                    else if(sMainPadExtension == PAD_EXT_NONE) return ERROR_NO_EXTENSION;
                }
            }
        }else if(sDpadDisableTimer >= SECONDS_TO_FRAMES(1) && CfGameManager::checkUnkFlag(28)){
            if(sMainPadExtension == PAD_EXT_NONE) return ERROR_NO_EXTENSION;
        }
        
        return ERROR_NONE;
    }

    void CfPadTask::onInitHbm(){
        u32 channel = cf::CfGameManager::getCurrentPadChannel();
        if(channel != WPAD_CHAN_INVALID){
            KPADEnableDPD(channel);
        }
    }

    void CfPadTask::onDeleteHbm(){
        u32 channel = cf::CfGameManager::getCurrentPadChannel();
        if(channel != WPAD_CHAN_INVALID){
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
