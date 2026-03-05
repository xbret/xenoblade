#pragma once

#include <types.h>
#include "monolib/util/MemManager.hpp"
#include "monolib/math/CVec2.hpp"
#include "monolib/math/CVec3.hpp"
#include <revolution/WPAD.h>
#include <revolution/KPAD.h>
#include <revolution/PAD.h>

//Forward declarations
struct CPad;
struct CPadData_UnkStruct2;

typedef void (*PadUpdateCallback)();
typedef void (*Unk511CFunc)(s32 chan, s32 result);
typedef void (*Unk511CFunc)(s32 chan, s32 result);
typedef void (*WeirdCPadCallbackFunc)(CPadData_UnkStruct2* r3, CPad* pPad);

//Constants
#define PAD_STICK_AXIS_SCALE 56.0f
#define PAD_STICK_DEADZONE 0.15f
#define PAD_TRIGGER_SCALE 150.0f
#define PAD_WIIMOTE_X_POS_SCALE 320
#define PAD_WIIMOTE_Y_POS_SCALE 210

const int MAX_WII_CONTROLLERS = KPAD_MAX_CONTROLLERS;
const int MAX_GC_CONTROLLERS = PAD_CHANMAX;
const int MAX_CONTROLLERS = MAX_WII_CONTROLLERS + MAX_GC_CONTROLLERS;

enum PadType{
    PAD_TYPE_NONE,
    PAD_TYPE_GC,
    PAD_TYPE_WIIMOTE,
    PAD_TYPE_NUNCHUCK,
    PAD_TYPE_CLASSIC,
    PAD_TYPE_5,
    PAD_TYPE_6,
    PAD_TYPE_7
};

struct PadButtonMask{
    u32 unk0;
    u32 unk4;
};

struct CPadData_UnkStruct3{
    u8 unk0[8];
    WeirdCPadCallbackFunc unk8;
};

struct CPadData_UnkStruct2{
    CPadData_UnkStruct2* mNext;
    u8 unk4[0x20];
    CPadData_UnkStruct3* unk24;
};

struct CPadData_UnkStruct1{
    CPadData_UnkStruct2* unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    float mLeftStickDeadzone; //0x14
    float mRightStickDeadzone; //0x18
    u32 unk1C;
};

struct CWpadStatus : public KPADStatus {
    float unk84;
    u8 unk88[0xB00 - 0x88]; //0x88
};

//size: 0xF8
/* General struct used to store controller data for any type of Wii controller configuration
(Wiimote only, Wiimote + Nunchuck, Wiimote + Classic Controller). It was also used for
Gamecube controllers, but the functionality was mostly removed in the release build. */
struct CPad{
    void setExtensionCB(s32 chan, s32 result);
    void setWiiPadType(s32 dev);
    void checkExtension(s32 chan);
    void updateMotor();

    inline u32 calculateFlagValue(CWpadStatus* r28, const PadButtonMask* pClassicMaskValues, const PadButtonMask* pWiimoteMaskValues);
    inline void setJoystickValues(CWpadStatus* r28);
    inline void setAcceleration(CWpadStatus* r28);
    inline void setMiscValues(CWpadStatus* r28);

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

    ml::CVec3 mPos; //0x78
    ml::CVec3 mVec; //0x84
    float mSpeed; //0x90
    ml::CVec3 mHorizon; //0x94
    ml::CVec3 mHoriVec; //0xA0
    float mHoriSpeed; //0xAC
    float mDist; //0xB0
    float mDistVec; //0xB4
    float mDistSpeed; //0xB8

    s8 mDpdValidFg; //0xBC
    u8 unkBD[3]; //padding?

    //Acceleration values
    ml::CVec3 mAcc; //0xC0
    float mAccValue; //0xCC
    float mAccSpeed; //0xD0
    ml::CVec3 mNunchuckAcc; //0xD4
    float mNunchuckAccValue; //0xE0
    float mNunchuckAccSpeed; //0xE4

    PadType mPadType; //0xE8
    s8 mWpadErr; //0xEC
    bool mConnected; //0xED
    u8 unkEE[0xF0 - 0xEE]; //padding?
    u32 mChannel; //0xF0
    float mMotorTimer; //0xF4
};

struct CPadData {
    mtl::ALLOC_HANDLE mAllocHandle;
    CPadData_UnkStruct1 unk4;
    //The first 4 are for Wii controllers, the last 4 are probably for GC controllers
    CPad mPads[MAX_CONTROLLERS]; //0x24
    //TODO: default controller instance?
    CPad mDefaultPad; //0x7E4
    CPad* mMainWiiPad; //0x8DC
    CPad* mMainGCPad; //0x8E0
    u32 unk8E4; //0x8E4
    CWpadStatus mWpadStatusArray[MAX_WII_CONTROLLERS]; //0x8E8
    //unused
    PADStatus unk34E8[MAX_GC_CONTROLLERS]; //0x34E8
    KPADUnifiedWpadStatus mWpadStatus; //0x3518
    u8 unk3550[0x5118 - 0x3550];
    u32 unk5118;
    Unk511CFunc unk511C;
};

class CPadManager {
public:
    static CWpadStatus* getWpadStatus(int index);
    static void* wpadAllocFunc(u32 size);
    static int wpadDeallocFunc(void* pData);
    static PadUpdateCallback initialize(mtl::ALLOC_HANDLE handle);
    static void destroy();
    static void func_80446A34(u32 r3);
    static void setRightStickDeadzoneDefault();
    static void setRightStickDeadzone(float value);
    static void kpadConnectCallback(s32 chan, s32 result);
    static void wpadExtensionCallback(s32 r3, s32 r4);
    static DECOMP_DONT_INLINE void updatePadExtensions();
    static void func_80446CC8(CPad* r3, u32 r4);
    static void updatePadInputs();
    static DECOMP_DONT_INLINE void updateFirstControllers();
    static void update();
    static CPad* getPadData(s32 r3, s32 r4);
    static CPad* getDefaultPad();
    static CPad* getMainWiiPad();
    static CPad* getMainGCPad();

    static PadType convertWiiDevType(s32 dev){
       switch((u32)dev){
           case WPAD_DEV_CORE:
           return PAD_TYPE_WIIMOTE;
           case WPAD_DEV_FREESTYLE:
           return PAD_TYPE_NUNCHUCK;
           case WPAD_DEV_CLASSIC:
           return PAD_TYPE_CLASSIC;
           case WPAD_DEV_FUTURE:
           return PAD_TYPE_WIIMOTE;
           default:
           return PAD_TYPE_NONE;
       }
    }

    static void updateMainWiiController();
    static void updateMainGCController();

private:
    static CPadData* spPadData;
};
