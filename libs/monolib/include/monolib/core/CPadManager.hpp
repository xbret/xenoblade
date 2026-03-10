#pragma once

#include <types.h>
#include "monolib/util/MemManager.hpp"
#include "monolib/math/CVec2.hpp"
#include "monolib/math/CVec3.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include <revolution/WPAD.h>
#include <revolution/KPAD.h>
#include <revolution/PAD.h>

//Forward declarations
struct CPad;
struct CPadData_UnkStruct2;

typedef void (*PadUpdateFunc)();
typedef void (*Unk511CFunc)(s32 chan, s32 result);

const float PAD_STICK_DEADZONE = 0.15f;

const int MAX_WII_CONTROLLERS = 1;
const int TOTAL_CONTROLLERS = WPAD_MAX_CONTROLLERS + PAD_CHANMAX;

//This is kind of ugly but better than hardcoded values I guess
#define TURBO_HOLD_TIMER_THRESHOLD (int)(CDeviceVI::TARGET_FRAMERATE/3.0f)
#define TURBO_INPUT_FRAMES (int)(CDeviceVI::TARGET_FRAMERATE * 0.1f)
#define LONG_HOLD_TIMER_THRESHOLD (int)(CDeviceVI::TARGET_FRAMERATE * (2.0f/3.0f))
#define SHORT_PRESS_MAX_FRAMES (int)(CDeviceVI::TARGET_FRAMERATE/6.0f)

enum PadType{
    PAD_TYPE_NONE,
    PAD_TYPE_GC, //Gamecube controller
    PAD_TYPE_CORE, //Wiimote
    PAD_TYPE_FS, //Freestyle (Nunchuck)
    PAD_TYPE_CLASSIC, //Classic controller
    PAD_TYPE_5,
    PAD_TYPE_6,
    PAD_TYPE_7
};

enum PadSystem{
    PAD_SYSTEM_WII,
    PAD_SYSTEM_GC
};

enum PadInput{
    PAD_INPUT_LEFT,
    PAD_INPUT_RIGHT,
    PAD_INPUT_UP,
    PAD_INPUT_DOWN,
    PAD_INPUT_CORE_A,
    PAD_INPUT_CORE_B,
    PAD_INPUT_1,
    PAD_INPUT_2,
    PAD_INPUT_HOME,
    PAD_INPUT_PLUS,
    PAD_INPUT_MINUS,
    PAD_INPUT_FS_C,
    PAD_INPUT_FS_Z,
    PAD_INPUT_LSTICK_LEFT,
    PAD_INPUT_LSTICK_RIGHT,
    PAD_INPUT_LSTICK_UP,
    PAD_INPUT_LSTICK_DOWN,
    PAD_INPUT_RSTICK_LEFT,
    PAD_INPUT_RSTICK_RIGHT,
    PAD_INPUT_RSTICK_UP,
    PAD_INPUT_RSTICK_DOWN,
    PAD_INPUT_CLASSIC_A,
    PAD_INPUT_CLASSIC_B,
    PAD_INPUT_CLASSIC_X,
    PAD_INPUT_CLASSIC_Y,
    PAD_INPUT_CLASSIC_L,
    PAD_INPUT_CLASSIC_R,
    PAD_INPUT_CLASSIC_ZL,
    PAD_INPUT_CLASSIC_ZR,

    MAX_PAD_INPUT = 32
};

//Flag enum for inputs
enum PadInputFlags{
    PAD_INPUT_FLAG_LEFT = (1 << PAD_INPUT_LEFT),
    PAD_INPUT_FLAG_RIGHT = (1 << PAD_INPUT_RIGHT),
    PAD_INPUT_FLAG_UP = (1 << PAD_INPUT_UP),
    PAD_INPUT_FLAG_DOWN = (1 << PAD_INPUT_DOWN),
    PAD_INPUT_FLAG_CORE_A = (1 << PAD_INPUT_CORE_A),
    PAD_INPUT_FLAG_CORE_B = (1 << PAD_INPUT_CORE_B),
    PAD_INPUT_FLAG_1 = (1 << PAD_INPUT_1),
    PAD_INPUT_FLAG_2 = (1 << PAD_INPUT_2),
    PAD_INPUT_FLAG_HOME = (1 << PAD_INPUT_HOME),
    PAD_INPUT_FLAG_PLUS = (1 << PAD_INPUT_PLUS),
    PAD_INPUT_FLAG_MINUS = (1 << PAD_INPUT_MINUS),
    PAD_INPUT_FLAG_FS_C = (1 << PAD_INPUT_FS_C),
    PAD_INPUT_FLAG_FS_Z = (1 << PAD_INPUT_FS_Z),
    PAD_INPUT_FLAG_LSTICK_LEFT = (1 << PAD_INPUT_LSTICK_LEFT),
    PAD_INPUT_FLAG_LSTICK_RIGHT = (1 << PAD_INPUT_LSTICK_RIGHT),
    PAD_INPUT_FLAG_LSTICK_UP = (1 << PAD_INPUT_LSTICK_UP),
    PAD_INPUT_FLAG_LSTICK_DOWN = (1 << PAD_INPUT_LSTICK_DOWN),
    PAD_INPUT_FLAG_RSTICK_LEFT = (1 << PAD_INPUT_RSTICK_LEFT),
    PAD_INPUT_FLAG_RSTICK_RIGHT = (1 << PAD_INPUT_RSTICK_RIGHT),
    PAD_INPUT_FLAG_RSTICK_UP = (1 << PAD_INPUT_RSTICK_UP),
    PAD_INPUT_FLAG_RSTICK_DOWN = (1 << PAD_INPUT_RSTICK_DOWN),
    PAD_INPUT_FLAG_CLASSIC_A = (1 << PAD_INPUT_CLASSIC_A),
    PAD_INPUT_FLAG_CLASSIC_B = (1 << PAD_INPUT_CLASSIC_B),
    PAD_INPUT_FLAG_CLASSIC_X = (1 << PAD_INPUT_CLASSIC_X),
    PAD_INPUT_FLAG_CLASSIC_Y = (1 << PAD_INPUT_CLASSIC_Y),
    PAD_INPUT_FLAG_CLASSIC_L = (1 << PAD_INPUT_CLASSIC_L),
    PAD_INPUT_FLAG_CLASSIC_R = (1 << PAD_INPUT_CLASSIC_R),
    PAD_INPUT_FLAG_CLASSIC_ZL = (1 << PAD_INPUT_CLASSIC_ZL),
    PAD_INPUT_FLAG_CLASSIC_ZR = (1 << PAD_INPUT_CLASSIC_ZR),

    PAD_INPUT_FLAG_DPAD = PAD_INPUT_FLAG_LEFT | PAD_INPUT_FLAG_RIGHT | PAD_INPUT_FLAG_UP | PAD_INPUT_FLAG_DOWN,
    PAD_INPUT_FLAG_LSTICK = PAD_INPUT_FLAG_LSTICK_LEFT | PAD_INPUT_FLAG_LSTICK_RIGHT | PAD_INPUT_FLAG_LSTICK_UP | PAD_INPUT_FLAG_LSTICK_DOWN,

    MAX_PAD_INPUT_FLAGS = MAX_PAD_INPUT
};

struct PadButtonMapping {
    u32 wpadValue;
    u32 customValue;
};

//unused?
struct CPadData_UnkStruct2{
    CPadData_UnkStruct2* mNext;
    u8 unk4[0x20];

    virtual void UnkVirtualFunc1(CPad* pPad);
};

struct CPadConfig{
    CPadData_UnkStruct2* unk0;
    //Minimum number of frames before allowing turbo inputs (10 by default)
    int turboHoldTimerThreshold; //0x4
    //Number of frames between turbo inputs (3 by default)
    int turboInputFrames; //0x8
    //Minimum number of frames for a long hold (20 by default)
    int longHoldTimerThreshold; //0xC
    //Maximum number of frames for a short press (5 by default)
    int shortPressMaxFrames; //0x10
    float mLStickDeadzone; //0x14
    float mRStickDeadzone; //0x18
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
    //Wiimote inputs
    struct CWpadData{
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
    };

    struct CAccelData{
        ml::CVec3 mAcc; //0x0
        float mAccValue; //0xC
        float mAccSpeed; //0x10
    };

    void setExtensionCB(s32 chan, s32 result);
    void setWiiPadType(s32 dev);
    void checkExtension(s32 chan);
    void updateMotor();

    inline u32 calculateFlagValue(CWpadStatus* r28, const PadButtonMapping* pClassicMap, const PadButtonMapping* pWiimoteMap);
    inline void setJoystickValues(CWpadStatus* r28);
    inline void setAcceleration(CWpadStatus* r28);
    inline void setMiscValues(CWpadStatus* r28);
    void updateFlagValues(u32 buttonFlags);

    //Button flagsets
    u32 mHeldButtonFlags; //0x0
    u32 mPressedButtonFlags; //0x4
    u32 mTurboPressButtonFlags; //0x8
    u32 mReleasedButtonFlags; //0xC
    u32 mShortPressButtonFlags; //0x10
    u32 mLongHoldButtonFlags; //0x14

    u8 mButtonHoldTimersTurbo[MAX_PAD_INPUT_FLAGS]; //0x18
    u8 mButtonHoldTimers[MAX_PAD_INPUT_FLAGS]; //0x38

    //Stick/trigger inputs
    u8 mLStickX; //0x58
    u8 mLStickY; //0x59
    u8 mRStickX; //0x5A
    u8 mRStickY; //0x5B
    u8 mLeftTriggerByte; //0x5C
    u8 mRightTriggerByte; //0x5D

    float mLStickXRaw; //0x60
    float mLStickYRaw; //0x64
    float mRStickXRaw; //0x68
    float mRStickYRaw; //0x6C
    float mLeftTriggerFloat; //0x70
    float mRightTriggerFloat; //0x74

    CWpadData mWpadData; //0x78
    CAccelData mWiimoteAccelData; //0xC0
    CAccelData mNunchuckAccelData; //0xD4

    u32 mPadType; //0xE8
    s8 mWpadErr; //0xEC
    bool mConnected; //0xED
    u32 mChannel; //0xF0
    float mMotorTimer; //0xF4
};

struct CPadData {
    mtl::ALLOC_HANDLE mAllocHandle;
    CPadConfig mConfig; //0x4
    //The first 4 are for Wii controllers, the last 4 are probably for GC controllers
    CPad mPads[TOTAL_CONTROLLERS]; //0x24
    CPad mDummyPad; //0x7E4
    CPad* mMainPad; //0x8DC
    CPad* mMainGCPad; //0x8E0
    u32 unk8E4; //0x8E4
    CWpadStatus mWpadStatuses[WPAD_MAX_CONTROLLERS]; //0x8E8
    //unused
    PADStatus mPadStatuses[PAD_CHANMAX]; //0x34E8
    KPADUnifiedWpadStatus mWpadStatus; //0x3518
    u8 unk3550[0x5118 - 0x3550];
    u32 unk5118;
    Unk511CFunc unk511C;
};

//Unofficial name
class CPadManager {
    friend class CPad;
public:
    static CWpadStatus* getWpadStatus(int index);
    static void* wpadAllocFunc(u32 size);
    static int wpadDeallocFunc(void* pData);
    static PadUpdateFunc initialize(mtl::ALLOC_HANDLE handle);
    static void destroy();
    static void updateLongHoldTimerThreshold(u32 r3);
    static void setRightStickDeadzoneDefault();
    static void setRightStickDeadzone(float value);
    static void kpadConnectCallback(s32 chan, s32 result);
    static void wpadExtensionCallback(s32 r3, s32 r4);
    static DECOMP_DONT_INLINE void updatePadExtensions();
    static void updateFlagValues(CPad* r3, u32 r4);
    static void updatePadInputs();
    static DECOMP_DONT_INLINE void updateMainControllers();
    static void update();
    static CPad* getPadData(s32 type, s32 channel);
    static CPad* getDummyPad();
    static CPad* getMainPad();
    static CPad* getMainGCPad();

    static PadType convertWiiDevType(u32 dev){
       switch(dev){
           case WPAD_DEV_CORE:
           return PAD_TYPE_CORE;
           case WPAD_DEV_FREESTYLE:
           return PAD_TYPE_FS;
           case WPAD_DEV_CLASSIC:
           return PAD_TYPE_CLASSIC;
           case WPAD_DEV_FUTURE:
           //Unknown type, default to wiimote
           return PAD_TYPE_CORE;
           default:
           return PAD_TYPE_NONE;
       }
    }

private:
    static CPadData* spPadData;
};
