#include "monolib/core/CPadManager.hpp"
#include <cstring>

CPadData* CPadManager::spPadData;

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
        mPadType = PAD_TYPE_WIIMOTE;
        break;
        case WPAD_DEV_FREESTYLE:
        mPadType = PAD_TYPE_NUNCHUCK;
        break;
        case WPAD_DEV_CLASSIC:
        mPadType = PAD_TYPE_CLASSIC;
        break;
        case WPAD_DEV_FUTURE:
        //Unknown device, default to Wiimote
        mPadType = PAD_TYPE_WIIMOTE;
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

void CPad::setJoystickValues(CWpadStatus* pPadStatus){
    //Update joystick/trigger values
    switch((u32)mPadType){
        case PAD_TYPE_NUNCHUCK:
        case PAD_TYPE_6:
            //Nunchuck
            mLeftStickXRaw = pPadStatus->ex_status.fs.stick.x;
            mLeftStickYRaw = pPadStatus->ex_status.fs.stick.y;
            mLeftStickX = PAD_STICK_AXIS_SCALE * mLeftStickXRaw;
            mLeftStickY = PAD_STICK_AXIS_SCALE * mLeftStickYRaw;
            break;
        case PAD_TYPE_CLASSIC:
        case PAD_TYPE_7:
            //Classic controller
            mLeftStickXRaw = pPadStatus->ex_status.cl.lstick.x;
            mLeftStickYRaw = pPadStatus->ex_status.cl.lstick.y;
            mRightStickXRaw = pPadStatus->ex_status.cl.rstick.x;
            mRightStickYRaw = pPadStatus->ex_status.cl.rstick.y;

            mLeftTriggerByte = pPadStatus->ex_status.cl.ltrigger;
            mRightTriggerByte = pPadStatus->ex_status.cl.rtrigger;

            mLeftStickX = PAD_STICK_AXIS_SCALE * mLeftStickXRaw;
            mLeftStickY = PAD_STICK_AXIS_SCALE * mLeftStickYRaw;
            mRightStickX = PAD_STICK_AXIS_SCALE * mRightStickXRaw;
            mRightStickY = PAD_STICK_AXIS_SCALE * mRightStickYRaw;

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
        case PAD_TYPE_WIIMOTE ... PAD_TYPE_7:
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
        case PAD_TYPE_NUNCHUCK:
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
        case PAD_TYPE_WIIMOTE ... PAD_TYPE_7:
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

u32 CPad::calculateFlagValue(CWpadStatus* pPadStatus, const PadButtonMask* pClassicMaskValues, const PadButtonMask* pWiimoteMaskValues){
    u32 flagValue = 0;

    switch(mPadType){
        case PAD_TYPE_CLASSIC:
        case PAD_TYPE_7:{
            for(int i = 0; pClassicMaskValues[i].unk0 != 0; i++){
                if(pPadStatus->ex_status.cl.hold & pClassicMaskValues[i].unk0){
                    flagValue |= pClassicMaskValues[i].unk4;
                }
            }

            if(pPadStatus->hold & WPAD_BUTTON_CL_RIGHT) flagValue |= 0x100;
            break;
        }
        case PAD_TYPE_WIIMOTE:
        case PAD_TYPE_NUNCHUCK:
        case PAD_TYPE_5:
        case PAD_TYPE_6:{
            for(int i = 0; pWiimoteMaskValues[i].unk0 != 0; i++){
                if(pPadStatus->hold & pWiimoteMaskValues[i].unk0){
                    flagValue |= pWiimoteMaskValues[i].unk4;
                }
            }
            break;
        }
        default:
            break;
    }

    return flagValue;
}

CWpadStatus* CPadManager::getWpadStatus(int index){
    return &spPadData->mWpadStatusArray[index];
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

PadUpdateCallback CPadManager::initialize(mtl::ALLOC_HANDLE handle){
    CPadData* padData = static_cast<CPadData*>(mtl::MemManager::allocate_head(handle, sizeof(CPadData), 32));
    spPadData = padData;

    spPadData->unk5118 = 0;
    spPadData->mAllocHandle = handle;

    WPADRegisterAllocator(wpadAllocFunc, wpadDeallocFunc);
    KPADInitEx(&spPadData->mWpadStatus, 128);
    
    std::memset(&spPadData->mPads, 0, sizeof(spPadData->mPads));
    std::memset(&spPadData->mDefaultPad, 0, sizeof(CPad));
    
    spPadData->mMainWiiPad = &spPadData->mDefaultPad;
    spPadData->mMainGCPad = &spPadData->mDefaultPad;

    spPadData->unk4.unk4 = 10;
    spPadData->unk4.unk8 = 3;
    spPadData->unk4.unkC = 20;
    spPadData->unk4.unk10 = 5;
    spPadData->unk4.mLeftStickDeadzone = PAD_STICK_DEADZONE;
    spPadData->unk4.mRightStickDeadzone = PAD_STICK_DEADZONE;
    spPadData->unk4.unk0 = nullptr;

    spPadData->unk511C = nullptr;

    //Reset the connected flag for all controllers
    for(int i = 0; i < MAX_CONTROLLERS; i++){
        spPadData->mPads[i].mConnected = false;
    }

    spPadData->unk4.unk1C = 0b11;

    //Wait until the status isn't 3
    while(WPADGetStatus() != WPAD_LIB_STATUS_3){}

    //Setup controller ports

    //Wii controllers
    for(s32 i = 0; i < MAX_WII_CONTROLLERS; i++){
        KPADChannel channel = (KPADChannel)i; //Required for matching
        KPADEnableAimingMode(channel);
        KPADSetConnectCallback(channel, kpadConnectCallback);
        spPadData->mPads[channel].mChannel = channel;
    }

    //GC controllers
    for(int i = 0; i < MAX_GC_CONTROLLERS; i++){
        spPadData->mPads[i + 4].mChannel = i;
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

void CPadManager::func_80446A34(u32 r3){
    spPadData->unk4.unkC = r3;
}

void CPadManager::setRightStickDeadzoneDefault(){
    spPadData->unk4.mRightStickDeadzone = PAD_STICK_DEADZONE;
}

void CPadManager::setRightStickDeadzone(float value){
    spPadData->unk4.mRightStickDeadzone = value;
}

void CPadManager::kpadConnectCallback(s32 chan, s32 result){
    if(spPadData == nullptr) return;

    if(spPadData->unk4.unk1C & 1){
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

    if(spPadData->unk4.unk1C & 1){
        CPad* r31 = getPadData(0, chan);
        r31->setWiiPadType(dev);
    }
}

void CPadManager::updatePadExtensions(){
    if(spPadData->unk4.unk1C & 1){
        for(int i = 0; i < MAX_WII_CONTROLLERS; i++){
            KPADChannel channel = (KPADChannel)i; //Required for matching
            WPADSetExtensionCallback(channel, wpadExtensionCallback);
            CPad* r31 = getPadData(0, channel);
            r31->checkExtension(channel);
        }
    }
}

void CPadManager::func_80446CC8(CPad* r3, u32 r4){
    //Check joystick inputs
    if(r3->mLeftStickXRaw <= -spPadData->unk4.mLeftStickDeadzone) r4 |= 0x2000;
    if(r3->mLeftStickXRaw > spPadData->unk4.mLeftStickDeadzone) r4 |= 0x4000;
    if(r3->mLeftStickYRaw <= -spPadData->unk4.mLeftStickDeadzone) r4 |= 0x10000;
    if(r3->mLeftStickYRaw > spPadData->unk4.mLeftStickDeadzone) r4 |= 0x8000;
    if(r3->mRightStickXRaw <= -spPadData->unk4.mRightStickDeadzone) r4 |= 0x20000;
    if(r3->mRightStickXRaw > spPadData->unk4.mRightStickDeadzone) r4 |= 0x40000;
    if(r3->mRightStickYRaw <= -spPadData->unk4.mRightStickDeadzone) r4 |= 0x100000;
    if(r3->mRightStickYRaw > spPadData->unk4.mRightStickDeadzone) r4 |= 0x80000;

    r3->unk14 = 0;
    u32 r6 = r3->unk0 ^ r4;
    u32 r9 = r4 & r6;
    r3->unk4 = r9;
    u32 r8 = r6 & ~r4;
    r3->unkC = r8;
    r3->unk8 = r9;
    r3->unk0 = r4;
    r3->unk10 = 0;

    u32 r5 = 1;

    for(int i = 0; i < 32; i++){
        if(r4 & r5){
            if(r3->unk4 & r5){
                r3->unk18[i] = 0;
                r3->unk38[i] = 0;
            }

            r3->unk18[i]++;

            if(r3->unk38[i] <= spPadData->unk4.unkC){
                r3->unk38[i]++;
            }

            if(r3->unk18[i] >= spPadData->unk4.unk4 + spPadData->unk4.unk8){
                r3->unk8 |= r5;
                r3->unk18[i] -= spPadData->unk4.unk8;
            }

            if(r3->unk38[i] >= spPadData->unk4.unkC){
                r3->unk14 |= r5;
            }
        }else if(r3->unkC & r5){
            u8 r7_1 = r3->unk38[i];
            if(spPadData->unk4.unk10 >= r7_1){
                r3->unk10 |= r5;
            }
        }

        r5 <<= 1;
    }

    CPadData_UnkStruct2* r30 = spPadData->unk4.unk0;

    while(r30 != nullptr){
        CPadData_UnkStruct3* r12 = r30->unk24;
        WeirdCPadCallbackFunc func = r12->unk8;
        func(r30, r3);
        r30 = r30->mNext;
    }
}

void CPadManager::updatePadInputs(){
    const PadButtonMask sWiimoteMaskValues[] = {
        {0x00000001, 0x00000001},
        {0x00000002, 0x00000002},
        {0x00000008, 0x00000004},
        {0x00000004, 0x00000008},
        {0x00000800, 0x00000010},
        {0x00000400, 0x00000020},
        {0x00000200, 0x00000040},
        {0x00000100, 0x00000080},
        {0x00008000, 0x00000100},
        {0x00000010, 0x00000200},
        {0x00001000, 0x00000400},
        {0x00002000, 0x00001000},
        {0x00004000, 0x00000800},
        {0x00000000, 0x00000000}
    };

    const PadButtonMask sClassicMaskValues[] = {
        {0x00000002, 0x00000001},
        {0x00008000, 0x00000002},
        {0x00000001, 0x00000004},
        {0x00004000, 0x00000008},
        {0x00000800, 0x00000100},
        {0x00000400, 0x00000200},
        {0x00001000, 0x00000400},
        {0x00000010, 0x00200000},
        {0x00000040, 0x00400000},
        {0x00000008, 0x00800000},
        {0x00000020, 0x01000000},
        {0x00002000, 0x02000000},
        {0x00000200, 0x04000000},
        {0x00000080, 0x08000000},
        {0x00000004, 0x10000000},
        {0x00000000, 0x00000000}
    };

    KPADResult result;

    for(int i = 0; i < MAX_WII_CONTROLLERS; i++){
        KPADChannel channel = (KPADChannel)i;

        KPADReadEx(channel, &spPadData->mWpadStatusArray[i], 16, &result);

        CPad* pad = getPadData(0, channel);

        if(pad->mConnected && result == KPAD_ERR_OK){
            CWpadStatus* padStatus = getWpadStatus(i);

            pad->mWpadErr = padStatus->wpad_err;
            s8 error = padStatus->wpad_err;

            if(error == -7){
                pad->mPadType = PAD_TYPE_WIIMOTE;
                padStatus->hold &= ~(WPAD_BUTTON_FS_Z | WPAD_BUTTON_FS_C);
                pad->mLeftStickYRaw = 0;
                pad->mLeftStickXRaw = 0;
                pad->mLeftStickX = 0;
            }else if(error != 0){
                pad->unk0 = 0;
                pad->unk4 = 0;
                pad->unkC = 0;
                continue;
            }

            u32 r4 = pad->calculateFlagValue(padStatus, sClassicMaskValues, sWiimoteMaskValues);
            pad->setJoystickValues(padStatus);
            func_80446CC8(pad, r4);
            pad->setAcceleration(padStatus);
            pad->setMiscValues(padStatus);
        }
    }

}

void CPad::updateMotor(){
    if(mMotorTimer > 0){
        //NOTE: this assumes 30fps
        mMotorTimer -= 1.0/30.0;

        //If the motor timer reached zero, turn off the motor
        if(mMotorTimer <= 0){
            mMotorTimer = 0;

            switch(mPadType){
                case PAD_TYPE_WIIMOTE ... PAD_TYPE_7:
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

/* Searches for the Wii controller in the earliest port, and sets the current Wii controller data pointer
to its entry if found. If not, it gets set to the default entry instead. */
void CPadManager::updateMainWiiController(){
    spPadData->mMainWiiPad = &spPadData->mDefaultPad;
    
    for(int i = 0; i < MAX_CONTROLLERS; i++){
        //A connected controller was found, update the pointer
        if(spPadData->mPads[i].mConnected){
            spPadData->mMainWiiPad = &spPadData->mPads[i];
            return;
        }
    }
}

/* Searches for the GC controller in the earliest port, and sets the current GC controller data pointer
to its entry if found. If not, it gets set to the default entry instead. */
void CPadManager::updateMainGCController(){
    spPadData->mMainGCPad = &spPadData->mDefaultPad;

    for(int i = 4; i < MAX_CONTROLLERS; i++){
        //A connected controller was found, update the pointer
        if(spPadData->mPads[i].mConnected){
            spPadData->mMainGCPad = &spPadData->mPads[i];
            return;
        }
    }
}

/* Updates the pointers for the current main Wii/GC controllers. This typically will set each
to the entry corresponding to the controllers in the earliest ports, but will instead be
set to the default entry if no controller is connected. */
void CPadManager::updateFirstControllers(){
    updateMainWiiController();
    updateMainGCController();
}

void CPadManager::update(){
    updatePadExtensions();
    updatePadInputs();

    spPadData->mMainWiiPad->updateMotor();

    //Update the first controller pointers
    updateFirstControllers();
}

CPad* CPadManager::getPadData(s32 type, s32 channel){
    switch(type){
        case 1:
        //Gamecube controllers
        if(channel < MAX_GC_CONTROLLERS) return &spPadData->mPads[channel + MAX_WII_CONTROLLERS];
        break;
        case 0:
        //Wii controllers
        if(channel < MAX_WII_CONTROLLERS) return &spPadData->mPads[channel];
        break;
    }

    return &spPadData->mDefaultPad;
}

CPad* CPadManager::getDefaultPad(){
    return &spPadData->mDefaultPad;
}

//Returns the controller data for the current main Wii controller (controller in earliest port).
CPad* CPadManager::getMainWiiPad(){
    return spPadData->mMainWiiPad;
}

//Returns the controller data for the current main GC controller (controller in earliest port).
CPad* CPadManager::getMainGCPad(){
    return spPadData->mMainGCPad;
}
