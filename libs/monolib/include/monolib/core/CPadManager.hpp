#pragma once

#include <types.h>
#include "monolib/util/MemManager.hpp"
#include <revolution/WPAD.h>
#include <revolution/KPAD.h>

typedef void (*PadManagerCallback)();
typedef void (*Unk511CFunc)(s32 chan, s32 result);

enum PadType{
    PAD_TYPE_0,
    PAD_TYPE_1,
    PAD_TYPE_2,
    PAD_TYPE_3,
    PAD_TYPE_4,
    PAD_TYPE_5,
    PAD_TYPE_6,
    PAD_TYPE_7
};

struct CPadInfo_UnkStruct1{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    float unk14;
    float unk18;
    u32 unk1C;
};

//size: 0xF8
struct CPadInfo_UnkStruct3{
    void unkInline1(s32 chan, s32 result);
    void unkInline2(s32 chan, s32 dev);
    void unkInline3(s32 chan);

    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u8 unk18[32];
    u8 unk38[32];
    u8 mLeftStickX; //0x58
    u8 mLeftStickY; //0x59
    u8 mRightStickX; //0x5A
    u8 mRightStickY; //0x5B
    u8 mLeftTriggerByte; //0x5C
    u8 mRightTriggerByte; //0x5D
    u8 unk5E[2]; //padding?
    float mLeftStickXRaw; //0x60
    float mLeftStickYRaw; //0x64
    float mRightStickXRaw; //0x68
    float mRightStickYRaw; //0x6C
    float mLeftTriggerFloat; //0x70
    float mRightTriggerFloat; //0x74
    u8 unk78[0xE8 - 0x78];
    PadType mPadType; //0xE8
    u8 unkEC;
    u8 unkED; //first instance at 0x111
    u8 unkEE[0xF0 - 0xEE];
    u32 unkF0; //first instance at 0x114
    u8 unkF4[0xF8 - 0xF4];
};

struct CPadInfo_UnkStruct4{
    KPADStatus mStatus; //0x0
    float unk84;
    u8 unk88[0xB00 - 0x88]; //0x88
};

struct CPadInfo {
    mtl::ALLOC_HANDLE mAllocHandle;
    CPadInfo_UnkStruct1 unk4;
    CPadInfo_UnkStruct3 unk24[8];
    CPadInfo_UnkStruct3 unk7E4;
    UNKTYPE* unk8DC;
    UNKTYPE* unk8E0;
    u32 unk8E4;
    CPadInfo_UnkStruct4 unk8E8[4];
    u8 unk34E8[0x3518 - 0x34E8];
    KPADUnifiedWpadStatus mWpadStatus; //0x3518
    u8 unk3550[0x5118 - 0x3550];
    u32 unk5118;
    Unk511CFunc unk511C;
};

class CPadManager {
public:
    static CPadInfo_UnkStruct4* func_8044676C(int index);
    static UNKTYPE* wpadAllocFunc(u32 size);
    static int wpadDeallocFunc(void* pData);
    static PadManagerCallback initialize(mtl::ALLOC_HANDLE handle);
    static void destroy();
    static void func_80446A34(u32 r3);
    static void func_80446A40();
    static void func_80446A50(float value);
    static void kpadConnectCB(s32 chan, s32 result);
    static void wpadExtCB(s32 r3, s32 r4);
    static DECOMP_DONT_INLINE void func_80446BB8();
    static void func_80446CC8(CPadInfo_UnkStruct3* r3, u32 r4);
    static void func_80446F14();
    static CPadInfo_UnkStruct3* func_804473E4();
    static void func_80447480();
    static CPadInfo_UnkStruct3* func_80447518(s32 r3, s32 r4);
    static void* func_80447574();
    static int* func_80447580();
    static UNKTYPE* func_8044758C();

    static PadType convertDevType(s32 chan, s32 dev){
       switch((u32)dev){
           case WPAD_DEV_CORE:
           return PAD_TYPE_2;
           case WPAD_DEV_FREESTYLE:
           return PAD_TYPE_3;
           case WPAD_DEV_CLASSIC:
           return PAD_TYPE_4;
           case WPAD_DEV_FUTURE:
           return PAD_TYPE_2;
           default:
           return PAD_TYPE_0;
       }
    }

private:
    static CPadInfo* spPadInfo;
};
