#include "monolib/core/CPadManager.hpp"
#include <cstring>

struct UnkStruct1{
    u32 unk0;
    u32 unk4;
};

const UnkStruct1 lbl_80526188[] = {
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

const UnkStruct1 lbl_805261F8[] = {
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

void CPadInfo_UnkStruct3::unkInline1(s32 chan, s32 result){
    //TODO: can this be matched better?
    if(result != KPAD_ERR_OK){
        if(result != -1) return;
    }else{
        WPADSetExtensionCallback(chan, CPadManager::wpadExtCB);
        unkED = 1;
        mPadType = PAD_TYPE_0;
        return;
    }

    unkED = 0;
    mPadType = PAD_TYPE_0;
}

//Not the same as convertDevType
void CPadInfo_UnkStruct3::unkInline2(s32 chan, s32 dev){
    switch(dev){
        case WPAD_DEV_CORE:
        mPadType = PAD_TYPE_2;
        break;
        case WPAD_DEV_FREESTYLE:
        mPadType = PAD_TYPE_3;
        break;
        case WPAD_DEV_CLASSIC:
        mPadType = PAD_TYPE_4;
        break;
        case WPAD_DEV_FUTURE:
        mPadType = PAD_TYPE_2;
        break;
    }
}

void CPadInfo_UnkStruct3::unkInline3(s32 chan){
    s32 devType;

    if(unkED != 0 && mPadType == 0){
        s32 result = WPADProbe(chan, &devType);
        if(result == 0){
            mPadType = CPadManager::convertDevType(chan, devType);
        }
    }
}

CPadInfo_UnkStruct4* CPadManager::func_8044676C(int index){
    return &spPadInfo->unk8E8[index];
}

UNKTYPE* CPadManager::wpadAllocFunc(u32 size){
    mtl::ALLOC_HANDLE handle = mtl::MemManager::getHandleMEM2();
    if(spPadInfo != nullptr) handle = spPadInfo->mAllocHandle;
    return mtl::MemManager::allocate_head(handle, size, 4);
}

int CPadManager::wpadDeallocFunc(void* pData){
    if(pData != nullptr){
        mtl::MemManager::deallocate(pData);
    }
    return 1;
}

PadManagerCallback CPadManager::initialize(mtl::ALLOC_HANDLE handle){
    CPadInfo* padInfo = static_cast<CPadInfo*>(mtl::MemManager::allocate_head(handle, sizeof(CPadInfo), 32));
    spPadInfo = padInfo;

    spPadInfo->unk5118 = 0;
    spPadInfo->mAllocHandle = handle;

    WPADRegisterAllocator(wpadAllocFunc, wpadDeallocFunc);
    KPADInitEx(&spPadInfo->mWpadStatus, 0x80);
    
    std::memset(&spPadInfo->unk24, 0, sizeof(spPadInfo->unk24));
    std::memset(&spPadInfo->unk7E4, 0, sizeof(spPadInfo->unk7E4));
    
    spPadInfo->unk8DC = &spPadInfo->unk7E4;
    spPadInfo->unk8E0 = &spPadInfo->unk7E4;

    spPadInfo->unk4.unk4 = 10;
    spPadInfo->unk4.unk8 = 3;
    spPadInfo->unk4.unkC = 20;
    spPadInfo->unk4.unk10 = 5;
    spPadInfo->unk4.unk14 = 0.15f;
    spPadInfo->unk4.unk18 = 0.15f;
    spPadInfo->unk4.unk0 = 0;

    spPadInfo->unk511C = 0;

    for(int i = 0; i < 8; i++){
        spPadInfo->unk24[i].unkED = 0;
    }
    spPadInfo->unk4.unk1C = 3;

    //Wait until the status isn't 3
    while(WPADGetStatus() != WPAD_LIB_STATUS_3){}

    //Setup controller ports
    for(s32 i = 0; i < KPAD_MAX_CONTROLLERS; i++){
        KPADChannel channel = (KPADChannel)i;
        KPADEnableAimingMode(channel);
        KPADSetConnectCallback(channel, kpadConnectCB);
        spPadInfo->unk24[i].unkF0 = i;
    }

    for(int i = 0; i < KPAD_MAX_CONTROLLERS; i++){
        spPadInfo->unk24[i + 4].unkF0 = i;
    }

    KPADReset();

    return func_80447480;
}

void CPadManager::destroy(){
    DELETE_OBJ(spPadInfo);
    
    for(int i = 0; i < KPAD_MAX_CONTROLLERS; i++){
        KPADChannel channel = (KPADChannel)i;
        KPADSetConnectCallback(channel, nullptr);
        WPADSetExtensionCallback(channel, nullptr);
    }
}

void CPadManager::func_80446A34(u32 r3){
    spPadInfo->unk4.unkC = r3;
}

void CPadManager::func_80446A40(){
    spPadInfo->unk4.unk18 = 0.15f;
}

void CPadManager::func_80446A50(float value){
    spPadInfo->unk4.unk18 = value;
}

void CPadManager::kpadConnectCB(s32 chan, s32 result){
    if(spPadInfo == nullptr) return;

    if(spPadInfo->unk4.unk1C & 1){
        CPadInfo_UnkStruct3* r31 = func_80447518(0, chan);
        r31->unkInline1(chan, result);

        Unk511CFunc func = spPadInfo->unk511C;
        if(func != nullptr){
            func(chan, result);
        }
    }

}

void CPadManager::wpadExtCB(s32 chan, s32 dev){
    if(spPadInfo == nullptr) return;

    if(spPadInfo->unk4.unk1C & 1){
        CPadInfo_UnkStruct3* r31 = func_80447518(0, chan);
        r31->unkInline2(chan, dev);
    }
}

void CPadManager::func_80446BB8(){
    if(spPadInfo->unk4.unk1C & 1){
        for(int i = 0; i < KPAD_MAX_CONTROLLERS; i++){
            KPADChannel channel = (KPADChannel)i;
            WPADSetExtensionCallback(channel, wpadExtCB);
            CPadInfo_UnkStruct3* r31 = func_80447518(0, channel);
            r31->unkInline3(channel);
        }
    }
}

void CPadManager::func_80446CC8(CPadInfo_UnkStruct3* r3, u32 r4){
    if(r3->mLeftStickXRaw <= -spPadInfo->unk4.unk14) r4 |= 0x2000;
    if(r3->mLeftStickXRaw > spPadInfo->unk4.unk14) r4 |= 0x4000;
    if(r3->mLeftStickYRaw <= -spPadInfo->unk4.unk14) r4 |= 0x10000;
    if(r3->mLeftStickYRaw > spPadInfo->unk4.unk14) r4 |= 0x8000;
    if(r3->mRightStickXRaw <= -spPadInfo->unk4.unk18) r4 |= 0x20000;
    if(r3->mRightStickXRaw > spPadInfo->unk4.unk18) r4 |= 0x40000;
    if(r3->mRightStickYRaw <= -spPadInfo->unk4.unk18) r4 |= 0x100000;
    if(r3->mRightStickYRaw > spPadInfo->unk4.unk18) r4 |= 0x80000;

    r3->unk14 = 0;
    u32 r6 = r3->unk0 ^ r4;
    u32 r9;
    r3->unk4 = r9;
    r3->unkC = r6 & r4;
    r3->unk8 = r9;
    r3->unk0 = r4;
    r3->unk10 = 0;

    u32 r5 = 1;

    for(int i = 0; i < 32; i++){
        //if(r4 & r5) goto lbl_1c8;

        if(!(r3->unk4 & r5)){
            r3->unk18[i] = 0;
            r3->unk38[i] = 0;
        }

        r3->unk18[i]++;

        if(r3->unk38[i] <= spPadInfo->unk4.unkC){
            r3->unk38[i]++;
        }




        r5 <<= 1;
    }
}

void CPadManager::func_80446F14(){
    UnkStruct1 r1_90[15];
    UnkStruct1 r1_10[15];

    for(int i = 0; i < 15; i++){
        r1_90[i] = lbl_80526188[i];
    }

    for(int i = 0; i < 15; i++){
        r1_10[i] = lbl_805261F8[i];
    }

    for(int i = 0; i < 4; i++){
        KPADChannel channel = (KPADChannel)i;

        KPADResult result;

        KPADReadEx(channel, &spPadInfo->unk8E8[i].mStatus, 0, &result);

        CPadInfo_UnkStruct3* r27 = func_80447518(0, channel);

        if(r27->unkED != 0 && result == 0){
            CPadInfo_UnkStruct4* r28 = &spPadInfo->unk8E8[i];

            r27->unkEC = r28->mStatus.wpad_err;
            s8 error = r28->mStatus.wpad_err;

            if(error == -7){
                r27->mPadType = PAD_TYPE_2;
                r28->mStatus.hold &= ~0x6000;
                r27->mLeftStickYRaw = 0;
                r27->mLeftStickXRaw = 0;
                r27->mLeftStickX = 0;
            }else if(error != 0){
                r27->unk0 = 0;
                r27->unk4 = 0;
                r27->unkC = 0;
                continue;
            }

            PadType padType = r27->mPadType;
            u32 r4 = 0;

            switch(padType){
                case PAD_TYPE_2:
                case PAD_TYPE_3:
                case PAD_TYPE_5:
                case PAD_TYPE_6:{
                    UnkStruct1* r3 = r1_90;

                    int i = 0;

                    while(r3[i].unk0 != 0){
                        if(!(r28->mStatus.hold & r3[i].unk0)){
                            r4 |= r3[i].unk4;
                        }

                        i++;
                    }
                    break;
                }
                case PAD_TYPE_4:{
                    UnkStruct1* r3 = r1_10;

                    int i = 0;

                    while(r3[i].unk0 != 0){
                        if(!(r28->mStatus.hold & r3[i].unk0)){
                            r4 |= r3[i].unk4;
                        }

                        i++;
                    }

                    if(!(r28->mStatus.hold & 0x8000)) r4 |= 0x100;
                }
                break;
                default:
                break;
            }

            switch((u32)padType){
                case PAD_TYPE_3:
                case PAD_TYPE_6:
                    //Nunchuck?
                    r27->mLeftStickXRaw = r28->mStatus.ex_status.fs.stick.x;
                    r27->mLeftStickYRaw = r28->mStatus.ex_status.fs.stick.y;
                    r27->mLeftStickX = 56.0f * r27->mLeftStickXRaw;
                    r27->mLeftStickY = 56.0f * r27->mLeftStickYRaw;
                    break;
                case PAD_TYPE_4:
                case PAD_TYPE_7:
                    //Classic controller
                    r27->mLeftStickXRaw = r28->mStatus.ex_status.cl.lstick.x; //[0x954];
                    r27->mLeftStickYRaw = r28->mStatus.ex_status.cl.lstick.y; //[0x958];
                    r27->mRightStickXRaw = r28->mStatus.ex_status.cl.rstick.x; //[0x95C];
                    r27->mRightStickYRaw = r28->mStatus.ex_status.cl.rstick.y; //[0x960];

                    r27->mLeftTriggerByte = r28->mStatus.ex_status.cl.ltrigger; //0x964
                    r27->mRightTriggerByte = r28->mStatus.ex_status.cl.rtrigger; //0x968

                    r27->mLeftStickX = 56.0f * r27->mLeftStickXRaw;
                    r27->mLeftStickY = 56.0f * r27->mLeftStickYRaw;
                    r27->mRightStickX = 56.0f * r27->mRightStickXRaw;
                    r27->mRightStickY = 56.0f * r27->mRightStickYRaw;

                    r27->mLeftTriggerFloat = r27->mLeftTriggerByte/150.0f;
                    r27->mRightTriggerFloat = r27->mRightTriggerByte/150.0f;
                    break;
                default:
                    break;
            }

            func_80446CC8(r27, r4);

        }
    }

}

CPadInfo_UnkStruct3* CPadManager::func_804473E4(){
    return nullptr;
}

void CPadManager::func_80447480(){
    func_80446BB8();
    func_80446F14();

}

CPadInfo_UnkStruct3* CPadManager::func_80447518(s32 r3, s32 r4){
    switch(r3){
        case 1:
        if(r4 < 4) return &spPadInfo->unk24[r4 + 4];
        break;
        case 0:
        if(r4 < 4) return &spPadInfo->unk24[r4];
        break;
    }

    return &spPadInfo->unk7E4;
}

void* CPadManager::func_80447574(){
    return &spPadInfo->unk7E4;
}

int* CPadManager::func_80447580(){
    return (int*)spPadInfo->unk8DC;
}

UNKTYPE* CPadManager::func_8044758C(){
    return spPadInfo->unk8E0;
}
