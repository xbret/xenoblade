#include "monolib/core/CPadManager.hpp"
#include <cstring>

//Constants
const float PAD_STICK_AXIS_SCALE = 56.0f;
const float PAD_TRIGGER_SCALE = 150.0f;
const int PAD_WIIMOTE_X_POS_SCALE = 320;
const int PAD_WIIMOTE_Y_POS_SCALE = 210;

//This is kind of ugly but better than hardcoded values I guess
#define TURBO_HOLD_TIMER_THRESHOLD (int)(CDeviceVI::TARGET_FRAMERATE/3.0f)
#define TURBO_INPUT_FRAMES (int)(CDeviceVI::TARGET_FRAMERATE * 0.1f)
#define LONG_HOLD_TIMER_THRESHOLD (int)(CDeviceVI::TARGET_FRAMERATE * (2.0f/3.0f))
#define SHORT_PRESS_MAX_FRAMES (int)(CDeviceVI::TARGET_FRAMERATE/6.0f)

//Total number of buttons for different control styles
const int NUM_BUTTONS_WIIMOTE_NUNCHUCK = 14;
const int NUM_BUTTONS_CLASSIC = 16;

CPadData* CPadManager::spPadData;

CWpadStatus* CPadManager::getWpadStatus(int index){
    return &spPadData->mWpadStatuses[index];
}

void* CPadManager::wpadAllocFunc(u32 size){
    //If CPadManager's handle isn't null, use it for allocations. Otherwise, just use the MEM2 handle.
    mtl::ALLOC_HANDLE handle = mtl::MemManager::getHandleMEM2();
    if(spPadData != nullptr) handle = spPadData->mAllocHandle;
    return mtl::MemManager::allocate_head(handle, size, 4);
}

int CPadManager::wpadDeallocFunc(void* pData){
    if(pData != nullptr){
        mtl::MemManager::deallocate(pData);
    }
    return 1;
}

PadUpdateFunc CPadManager::initialize(mtl::ALLOC_HANDLE handle){
    CPadData* padData = static_cast<CPadData*>(mtl::MemManager::allocate_head(handle, sizeof(CPadData), 32));
    spPadData = padData;

    spPadData->unk5118 = 0;
    spPadData->mAllocHandle = handle;

    WPADRegisterAllocator(wpadAllocFunc, wpadDeallocFunc);
    KPADInitEx(&spPadData->mWpadStatus, 128);
    
    std::memset(&spPadData->mPads, 0, sizeof(spPadData->mPads));
    std::memset(&spPadData->mDummyPad, 0, sizeof(CPad));
    
    spPadData->mMainPad = &spPadData->mDummyPad;
    spPadData->mMainGCPad = &spPadData->mDummyPad;

    spPadData->mConfig.turboHoldTimerThreshold = TURBO_HOLD_TIMER_THRESHOLD;
    spPadData->mConfig.turboInputFrames = TURBO_INPUT_FRAMES;
    spPadData->mConfig.longHoldTimerThreshold = LONG_HOLD_TIMER_THRESHOLD;
    spPadData->mConfig.shortPressMaxFrames = SHORT_PRESS_MAX_FRAMES;
    spPadData->mConfig.mLStickDeadzone = PAD_STICK_DEADZONE;
    spPadData->mConfig.mRStickDeadzone = PAD_STICK_DEADZONE;
    spPadData->mConfig.unk0 = nullptr;

    spPadData->unk511C = nullptr;

    //Reset the connected flag for all controllers
    for(int i = 0; i < TOTAL_CONTROLLERS; i++){
        spPadData->mPads[i].mConnected = false;
    }


    spPadData->mConfig.unk1C = 0b11;

    //Wait until the status isn't 3
    while(WPADGetStatus() != WPAD_LIB_STATUS_3){}

    //Setup controller ports

    //Wii controllers
    for(int i = 0; i < MAX_WII_CONTROLLERS; i++){
        KPADChannel channel = (KPADChannel)i; //Required for matching
        KPADEnableAimingMode(channel);
        KPADSetConnectCallback(channel, kpadConnectCallback);
        spPadData->mPads[channel].mChannel = channel;
    }

    //GC controllers
    for(int i = 0; i < MAX_GC_CONTROLLERS; i++){
        spPadData->mPads[MAX_WII_CONTROLLERS + i].mChannel = i;
    }

    KPADReset();

    //Why can't this just be called normally??
    return update;
}

void CPadManager::destroy(){
    DELETE_OBJ(spPadData);
    
    //Reset the callbacks for each Wii controller port
    for(int i = 0; i < MAX_WII_CONTROLLERS; i++){
        KPADSetConnectCallback(i, nullptr);
        WPADSetExtensionCallback(i, nullptr);
    }
}

void CPadManager::updateLongHoldTimerThreshold(u32 r3){
    spPadData->mConfig.longHoldTimerThreshold = r3;
}

void CPadManager::setRightStickDeadzoneDefault(){
    spPadData->mConfig.mRStickDeadzone = PAD_STICK_DEADZONE;
}

void CPadManager::setRightStickDeadzone(float value){
    spPadData->mConfig.mRStickDeadzone = value;
}


void CPad::setExtensionCB(s32 chan, s32 result){
    //TODO: can this be matched better?
    if(result != KPAD_ERR_OK){
        if(result != -1) return;
    }else{
        WPADSetExtensionCallback(chan, CPadManager::wpadExtensionCallback);
        mConnected = true;
        mPadType = PAD_TYPE_NONE;
        return;
    }

    mConnected = false;
    mPadType = PAD_TYPE_NONE;
}

//Not the same as convertWiiDevType
void CPad::setWiiPadType(s32 dev){
    switch(dev){
        case WPAD_DEV_CORE:
        mPadType = PAD_TYPE_CORE;
        break;
        case WPAD_DEV_FREESTYLE:
        mPadType = PAD_TYPE_FS;
        break;
        case WPAD_DEV_CLASSIC:
        mPadType = PAD_TYPE_CLASSIC;
        break;
        case WPAD_DEV_FUTURE:
        //Unknown device, default to Wiimote
        mPadType = PAD_TYPE_CORE;
        break;
    }
}

void CPad::checkExtension(s32 chan){
    s32 devType;

    if(mConnected && mPadType == PAD_TYPE_NONE){
        if(WPADProbe(chan, &devType) == 0){
            mPadType = CPadManager::convertWiiDevType(devType);
        }
    }
}

void CPadManager::kpadConnectCallback(s32 chan, s32 result){
    if(spPadData == nullptr) return;

    if(spPadData->mConfig.unk1C & 1){
        CPad* r31 = getPadData(0, chan);
        r31->setExtensionCB(chan, result);

        Unk511CFunc func = spPadData->unk511C;
        if(func != nullptr){
            func(chan, result);
        }
    }
}

void CPadManager::wpadExtensionCallback(s32 chan, s32 dev){
    if(spPadData == nullptr) return;

    if(spPadData->mConfig.unk1C & 1){
        CPad* r31 = getPadData(0, chan);
        r31->setWiiPadType(dev);
    }
}

void CPadManager::updatePadExtensions(){
    if(spPadData->mConfig.unk1C & 1){
        for(int i = 0; i < MAX_WII_CONTROLLERS; i++){
            KPADChannel channel = (KPADChannel)i; //Required for matching
            WPADSetExtensionCallback(channel, wpadExtensionCallback);
            CPad* r31 = getPadData(0, channel);
            r31->checkExtension(channel);
        }
    }
}


void CPad::setJoystickValues(CWpadStatus* pPadStatus){
    //Update joystick/trigger values
    switch((u32)mPadType){
        case PAD_TYPE_FS:
        case PAD_TYPE_6:
            //Nunchuck
            mLStickXRaw = pPadStatus->ex_status.fs.stick.x;
            mLStickYRaw = pPadStatus->ex_status.fs.stick.y;
            mLStickX = PAD_STICK_AXIS_SCALE * mLStickXRaw;
            mLStickY = PAD_STICK_AXIS_SCALE * mLStickYRaw;
            break;
        case PAD_TYPE_CLASSIC:
        case PAD_TYPE_7:
            //Classic controller
            mLStickXRaw = pPadStatus->ex_status.cl.lstick.x;
            mLStickYRaw = pPadStatus->ex_status.cl.lstick.y;
            mRStickXRaw = pPadStatus->ex_status.cl.rstick.x;
            mRStickYRaw = pPadStatus->ex_status.cl.rstick.y;

            mLeftTriggerByte = pPadStatus->ex_status.cl.ltrigger;
            mRightTriggerByte = pPadStatus->ex_status.cl.rtrigger;

            mLStickX = PAD_STICK_AXIS_SCALE * mLStickXRaw;
            mLStickY = PAD_STICK_AXIS_SCALE * mLStickYRaw;
            mRStickX = PAD_STICK_AXIS_SCALE * mRStickXRaw;
            mRStickY = PAD_STICK_AXIS_SCALE * mRStickYRaw;

            mLeftTriggerFloat = mLeftTriggerByte/PAD_TRIGGER_SCALE;
            mRightTriggerFloat = mRightTriggerByte/PAD_TRIGGER_SCALE;
            break;
        default:
            break;
    }
}

void CPad::setAcceleration(CWpadStatus* pPadStatus){
    //Update acceleration values
    switch(mPadType){
        case PAD_TYPE_CORE ... PAD_TYPE_7:
            //Wii controllers
            mAcc.x = pPadStatus->acc.x;
            mAcc.y = pPadStatus->acc.y;
            mAcc.z = pPadStatus->acc.z;
            mAccValue = pPadStatus->acc_value;
            mAccSpeed = pPadStatus->acc_speed;
            break;
        default:
            break;
    }

    //Update nunchuck acceleration values
    switch((u32)mPadType){
        case PAD_TYPE_FS:
        case PAD_TYPE_6:
            mNunchuckAcc.x = pPadStatus->ex_status.fs.acc.x;
            mNunchuckAcc.y = pPadStatus->ex_status.fs.acc.y;
            mNunchuckAcc.z = pPadStatus->ex_status.fs.acc.z;
            mNunchuckAccValue = pPadStatus->ex_status.fs.acc_value;
            mNunchuckAccSpeed = pPadStatus->ex_status.fs.acc_speed;
            break;
        default:
            break;
    }
}

void CPad::setMiscValues(CWpadStatus* pPadStatus){
    switch(mPadType){
        case PAD_TYPE_CORE ... PAD_TYPE_7:
            //Wii controllers
            mDpdValidFg = pPadStatus->dpd_valid_fg;
            if(mDpdValidFg > 0){
                mPos.x = pPadStatus->pos.x * PAD_WIIMOTE_X_POS_SCALE;
                mPos.y = pPadStatus->pos.y * PAD_WIIMOTE_Y_POS_SCALE;
                mPos.z = 0;

                mVec.x = pPadStatus->vec.x;
                mVec.y = pPadStatus->vec.y;
                mVec.z = 0;

                mSpeed = pPadStatus->speed;

                mHorizon.x = pPadStatus->horizon.x;
                mHorizon.y = pPadStatus->horizon.y;
                mHorizon.z = 0;

                mHoriVec.x = pPadStatus->hori_vec.x;
                mHoriVec.y = pPadStatus->hori_vec.y;
                mHoriVec.z = 0;

                mHoriSpeed = pPadStatus->hori_speed;
                mDist = pPadStatus->dist;
                mDistVec = pPadStatus->dist_vec;
                mDistSpeed = pPadStatus->dist_speed;
            }
            break;
        default:
            break;
    }
}

u32 CPad::calculateFlagValue(CWpadStatus* pPadStatus, const PadButtonMapping* pClassicMap, const PadButtonMapping* pWiimoteMap){
    u32 flagValue = 0;

    switch(mPadType){
        case PAD_TYPE_CLASSIC:
        case PAD_TYPE_7:{
            for(int i = 0; pClassicMap[i].wpadValue != 0; i++){
                if(pPadStatus->ex_status.cl.hold & pClassicMap[i].wpadValue){
                    flagValue |= pClassicMap[i].customValue;
                }
            }

            if(pPadStatus->hold & WPAD_BUTTON_CL_RIGHT) flagValue |= PAD_INPUT_HOME;
            break;
        }
        case PAD_TYPE_CORE:
        case PAD_TYPE_FS:
        case PAD_TYPE_5:
        case PAD_TYPE_6:{
            for(int i = 0; pWiimoteMap[i].wpadValue != 0; i++){
                if(pPadStatus->hold & pWiimoteMap[i].wpadValue){
                    flagValue |= pWiimoteMap[i].customValue;
                }
            }
            break;
        }
        default:
            break;
    }

    return flagValue;
}

void CPad::updateFlagValues(u32 buttonFlags){
    //Set digital joystick direction inputs using the deadzone for each stick
    if(mLStickXRaw <= -CPadManager::spPadData->mConfig.mLStickDeadzone) buttonFlags |= PAD_INPUT_LSTICK_LEFT;
    if(mLStickXRaw > CPadManager::spPadData->mConfig.mLStickDeadzone) buttonFlags |= PAD_INPUT_LSTICK_RIGHT;
    if(mLStickYRaw <= -CPadManager::spPadData->mConfig.mLStickDeadzone) buttonFlags |= PAD_INPUT_LSTICK_DOWN;
    if(mLStickYRaw > CPadManager::spPadData->mConfig.mLStickDeadzone) buttonFlags |= PAD_INPUT_LSTICK_UP;
    if(mRStickXRaw <= -CPadManager::spPadData->mConfig.mRStickDeadzone) buttonFlags |= PAD_INPUT_RSTICK_LEFT;
    if(mRStickXRaw > CPadManager::spPadData->mConfig.mRStickDeadzone) buttonFlags |= PAD_INPUT_RSTICK_RIGHT;
    if(mRStickYRaw <= -CPadManager::spPadData->mConfig.mRStickDeadzone) buttonFlags |= PAD_INPUT_RSTICK_DOWN;
    if(mRStickYRaw > CPadManager::spPadData->mConfig.mRStickDeadzone) buttonFlags |= PAD_INPUT_RSTICK_UP;

    //Update the button flag values
    mLongHoldButtonFlags = 0;
    u32 changedButtonMask = mHeldButtonFlags ^ buttonFlags;
    u32 pressedButtons = buttonFlags & changedButtonMask;
    mPressedButtonFlags = pressedButtons;
    mReleasedButtonFlags = changedButtonMask & ~buttonFlags;
    mTurboPressButtonFlags = pressedButtons;
    mHeldButtonFlags = buttonFlags;
    mShortPressButtonFlags = 0;

    //Update the button hold timers, and all the additional button flag values
    u32 bit = PAD_INPUT_LEFT;

    for(int i = 0; i < MAX_PAD_INPUT_FLAGS; i++){
        if(buttonFlags & bit){
            if(mPressedButtonFlags & bit){
                mButtonHoldTimersTurbo[i] = 0;
                mButtonHoldTimers[i] = 0;
            }

            mButtonHoldTimersTurbo[i]++;

            //BUG?: This should maybe be < instead? This makes the limit 1 more than the max
            if(mButtonHoldTimers[i] <= CPadManager::spPadData->mConfig.longHoldTimerThreshold){
                mButtonHoldTimers[i]++;
            }

            //Enable the bit in the turbo press flagset on every nth frame as long as the timer has passed the threshold
            if(mButtonHoldTimersTurbo[i] >= CPadManager::spPadData->mConfig.turboHoldTimerThreshold +
            CPadManager::spPadData->mConfig.turboInputFrames){
                mTurboPressButtonFlags |= bit;
                mButtonHoldTimersTurbo[i] -= CPadManager::spPadData->mConfig.turboInputFrames;
            }

            if(mButtonHoldTimers[i] >= CPadManager::spPadData->mConfig.longHoldTimerThreshold){
                mLongHoldButtonFlags |= bit;
            }
        }else if(mReleasedButtonFlags & bit){
            if(CPadManager::spPadData->mConfig.shortPressMaxFrames >= mButtonHoldTimers[i]){
                mShortPressButtonFlags |= bit;
            }
        }

        //Go to the next bit
        bit <<= 1;
    }

    CPadData_UnkStruct2* r30 = CPadManager::spPadData->mConfig.unk0;

    while(r30 != nullptr){
        r30->UnkVirtualFunc1(this);
        r30 = r30->mNext;
    }
}

void CPadManager::updatePadInputs(){
    /*
    WPAD button values -> custom button values conversion tables for
    Wiimote + Nunchuck and Classic Controller
    The entry with all zeroes acts as a terminator
    */
    const PadButtonMapping sWiimoteMaskValues[NUM_BUTTONS_WIIMOTE_NUNCHUCK] = {
        {WPAD_BUTTON_LEFT, PAD_INPUT_LEFT},
        {WPAD_BUTTON_RIGHT, PAD_INPUT_RIGHT},
        {WPAD_BUTTON_UP, PAD_INPUT_UP},
        {WPAD_BUTTON_DOWN, PAD_INPUT_DOWN},
        {WPAD_BUTTON_A, PAD_INPUT_CORE_A},
        {WPAD_BUTTON_B, PAD_INPUT_CORE_B},
        {WPAD_BUTTON_1, PAD_INPUT_1},
        {WPAD_BUTTON_2, PAD_INPUT_2},
        {WPAD_BUTTON_HOME, PAD_INPUT_HOME},
        {WPAD_BUTTON_PLUS, PAD_INPUT_PLUS},
        {WPAD_BUTTON_MINUS, PAD_INPUT_MINUS},
        {WPAD_BUTTON_FS_Z, PAD_INPUT_FS_Z},
        {WPAD_BUTTON_FS_C, PAD_INPUT_FS_C},
        {0, 0}
    };

    const PadButtonMapping sClassicMaskValues[NUM_BUTTONS_CLASSIC] = {
        {WPAD_BUTTON_CL_LEFT, PAD_INPUT_LEFT},
        {WPAD_BUTTON_CL_RIGHT, PAD_INPUT_RIGHT},
        {WPAD_BUTTON_CL_UP, PAD_INPUT_UP},
        {WPAD_BUTTON_CL_DOWN, PAD_INPUT_DOWN},
        {WPAD_BUTTON_CL_HOME, PAD_INPUT_HOME},
        {WPAD_BUTTON_CL_PLUS, PAD_INPUT_PLUS},
        {WPAD_BUTTON_CL_MINUS, PAD_INPUT_MINUS},
        {WPAD_BUTTON_CL_A, PAD_INPUT_CLASSIC_A},
        {WPAD_BUTTON_CL_B, PAD_INPUT_CLASSIC_B},
        {WPAD_BUTTON_CL_X, PAD_INPUT_CLASSIC_X},
        {WPAD_BUTTON_CL_Y, PAD_INPUT_CLASSIC_Y},
        {WPAD_BUTTON_CL_L, PAD_INPUT_CLASSIC_L},
        {WPAD_BUTTON_CL_R, PAD_INPUT_CLASSIC_R},
        {WPAD_BUTTON_CL_ZL, PAD_INPUT_CLASSIC_ZL},
        {WPAD_BUTTON_CL_ZR, PAD_INPUT_CLASSIC_ZR},
        {0, 0}
    };

    KPADResult result;

    for(int i = 0; i < MAX_WII_CONTROLLERS; i++){
        KPADChannel channel = (KPADChannel)i;

        KPADReadEx(channel, &spPadData->mWpadStatuses[i], 16, &result);

        CPad* pad = getPadData(0, channel);

        if(pad->mConnected && result == KPAD_ERR_OK){
            CWpadStatus* padStatus = getWpadStatus(i);

            pad->mWpadErr = padStatus->wpad_err;
            s8 error = padStatus->wpad_err;

            if(error == -7){
                pad->mPadType = PAD_TYPE_CORE;
                padStatus->hold &= ~(WPAD_BUTTON_FS_Z | WPAD_BUTTON_FS_C);
                pad->mLStickYRaw = 0;
                pad->mLStickXRaw = 0;
                pad->mLStickX = 0;
            }else if(error != 0){
                pad->mHeldButtonFlags = 0;
                pad->mPressedButtonFlags = 0;
                pad->mReleasedButtonFlags = 0;
                continue;
            }

            u32 buttonFlags = pad->calculateFlagValue(padStatus, sClassicMaskValues, sWiimoteMaskValues);
            pad->setJoystickValues(padStatus);
            pad->updateFlagValues(buttonFlags);
            pad->setAcceleration(padStatus);
            pad->setMiscValues(padStatus);
        }
    }

}

void CPad::updateMotor(){
    if(mMotorTimer > 0){
        mMotorTimer -= MS_PER_FRAME;

        //If the motor timer reached zero, turn off the motor
        if(mMotorTimer <= 0){
            mMotorTimer = 0;

            switch(mPadType){
                case PAD_TYPE_CORE ... PAD_TYPE_7:
                    WPADControlMotor(mChannel, WPAD_MOTOR_STOP);
                    break;
                case PAD_TYPE_GC:
                    //Unused in the release version, but this confirms it was supported :)
                    PADControlMotor(mChannel, PAD_MOTOR_STOP);
                    break;
                default:
                    break;
            }
        }
    }
}

/* Updates the pointers for the current main controllers. This typically will set each
to the entry corresponding to the controllers in the earliest ports, but will instead be
set to the dummy entry if no controller is connected. */
void CPadManager::updateMainControllers(){
    spPadData->mMainPad = &spPadData->mDummyPad;
    
    //Find the first connected controller, starting with Wii controller ports first
    for(int i = 0; i < TOTAL_CONTROLLERS; i++){
        //A connected controller was found, update the pointer
        if(spPadData->mPads[i].mConnected){
            spPadData->mMainPad = &spPadData->mPads[i];
            break;
        }
    }
    
    spPadData->mMainGCPad = &spPadData->mDummyPad;

    //Find the first connected GC controller
    for(int i = 4; i < TOTAL_CONTROLLERS; i++){
        //A connected controller was found, update the pointer
        if(spPadData->mPads[i].mConnected){
            spPadData->mMainGCPad = &spPadData->mPads[i];
            break;
        }
    }
}

void CPadManager::update(){
    updatePadExtensions();
    updatePadInputs();

    spPadData->mMainPad->updateMotor();

    //Update the first controller pointers
    updateMainControllers();
}

CPad* CPadManager::getPadData(s32 type, s32 channel){
    switch(type){
        case PAD_SYSTEM_GC:
        //Gamecube controllers
        if(channel < MAX_GC_CONTROLLERS) return &spPadData->mPads[MAX_WII_CONTROLLERS + channel];
        break;
        case PAD_SYSTEM_WII:
        //Wii controllers
        if(channel < MAX_WII_CONTROLLERS) return &spPadData->mPads[channel];
        break;
    }

    return &spPadData->mDummyPad;
}

CPad* CPadManager::getDummyPad(){
    return &spPadData->mDummyPad;
}

//Returns the controller data for the current main controller (controller in earliest port, Wii ports have priority).
CPad* CPadManager::getMainPad(){
    return spPadData->mMainPad;
}

//Returns the controller data for the current main GC controller (controller in earliest port).
CPad* CPadManager::getMainGCPad(){
    return spPadData->mMainGCPad;
}
