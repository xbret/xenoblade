#pragma once

#include <types.h>
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/util.hpp"
#include "monolib/math.hpp"
#include <revolution/GX.h>
#include <revolution/VI.h>

//size: 0x2c0
class CDeviceVI : public CDeviceBase, public IErrorWii {
public:
    CDeviceVI(const char* pName, CWorkThread* pWorkThread);
    virtual ~CDeviceVI();
    static CDeviceVI* getInstance();

    static void setFlag4(bool state);
    static bool checkFlag4();
    static bool checkFlag2();
    static bool func_804482DC();
    static void setFlag0(bool state);
    static bool checkFlag0();

    static void func_804483DC(u32 gamma);
    static GXRenderModeObj* getRenderModeObj();
    static u32 getTargetFramerate();
    static float getSecPerFrame();
    static u32 func_80448420();
    static u32 getVisPerFrame();
    static bool entryCb(CDeviceVICb* entry);
    static bool removeCb(CDeviceVICb* entry);
    static bool isWideAspectRatio();
    static bool isTvFormatPal();
    static u32 getXfbBuffersSize();
    static float getWidthScale();
    static bool initBaseRenderModeStruct(u32 r3, u32 r4);
    bool updateMainRenderModeStruct();
    virtual void wkUpdate();
    static void beginFrame();
    static void waitForDrawDone();
    static void endFrame();
    static bool onPreRetrace();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    static void setUseStaticHandle(bool state);
    static bool usingStaticHandle();
    void func_80448E88();
    virtual void errorWiiCB();

    static bool unkInline1();
    static void copyEfb(u32 index);
    void setNextFrameBuffer();
    static void cb(CDeviceVICb::VICallback callback);
    static void setupRenderMode2(GXRenderModeObj* pRenderMode, u32 viWidth);
    void unkInline3(u32 index, u32 val);

    static inline CDeviceVI* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceVI* device = new (CWorkThreadSystem::getWorkMem()) CDeviceVI(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, false);
        device->unk1C4 |= 1;
        return device;
    }

    static inline u16 getEfbHeight(){
        return getRenderModeObj()->efbHeight;
    }

    static inline u16 getFbWidth(){
        return getRenderModeObj()->fbWidth;
    }

    //0x0: vtable
    //0x0-1C8: CDeviceBase
    //0x1C8-1CC: UnkClass_80447FDC
    u32 mViFlags; //0x1CC
    reslist<CDeviceVICb*> mCallbackList; //0x1D0
    u32 mTvFormat; //0x1F0
    u32 mGammaLevel; //0x1F4
    u32 mScanMode; //0x1F8
    u32 mDimmingCount; //0x1FC
    GXRenderModeObj mMainRenderMode; //0x200
    GXRenderModeObj mBaseRenderMode; //0x23C
    //These four are unused?
    u16 mViXOrigin; //0x278
    u16 mViYOrigin; //0x27A
    u16 mViWidth; //0x27C
    u16 mViHeight; //0x27E
    u8* mXfbBuffersPtr; //0x280
    u32 unk284;
    void* mFrameBufferPtrArray[3]; //0x288
    u32 unk294;
    u32 unk298;
    u32 unk29C;
    ml::CPnt16 unk2A0;
    u32 unk2A4;
    u32 mVisPerFrame; //0x2A8
    u32 unk2AC;
    u32 mNewVisPerFrame;
    u8 unk2B4; //padding?
    u8 unk2B5;
    u8 unk2B6[2]; //padding?
    u32 mTargetFramerate; //0x2B8
    float mSecPerFrame; //0x2BC

private:
    enum Flags{
        VI_FLAG_0 = 0,
        VI_FLAG_1 = 1,
        VI_FLAG_2 = 2,
        VI_FLAG_3 = 3,
        VI_FLAG_4 = 4,
        VI_FLAG_31 = 31
    };

    //Custom tv format/scan mode enums for the render mode table
    enum TVFormat {
        TV_FORMAT_NTSC,
        TV_FORMAT_PAL,
        TV_FORMAT_EURGB60,
        TV_FORMAT_MPAL,
        MAX_TV_FORMAT = 4
    };

    enum ScanMode {
        SCAN_MODE_DS,
        SCAN_MODE_INT,
        SCAN_MODE_PROG,
        SCAN_MODE_PROGSOFT,
        MAX_SCAN_MODE = 4
    };

    u32 getTvFormatIndex() const;
    u32 getScanModeIndex() const;
    u32 calculateRenderModeIndex() const;
    
    void setFlag(u32 flag, bool state){
        if(state != false) mViFlags |= (1 << flag);
        else mViFlags &= ~(1 << flag);
    }

    bool checkFlag(u32 flag) const {
        return mViFlags & (1 << flag);
    }

    //General screen dimensions
    static const int SCREEN_WIDTH = 640;
    static const int SCREEN_HEIGHT = 456;

    //VI max output dimensions
    static const int VI_MAX_WIDTH = 720;
    static const int VI_MAX_HEIGHT = 480;
    //VI width
    static const int VI_WIDTH_4_3 = 670;
    static const int VI_WIDTH_16_9 = 686;

    //XFB dimensions
    //JP: 640x480, US: 640x456, PAL: 640x542
    static const int XFB_WIDTH = 640;
    #if defined(VERSION_JP)
    static const int XFB_HEIGHT = 480;
    #elif defined(VERSION_EU)
    static const int XFB_HEIGHT = 542;
    #elif defined(VERSION_US)
    static const int XFB_HEIGHT = 456;
    #endif

    static const int NUM_XFB_BUFFERS = 2; //double buffered

    static const int NTSC_VPS = 60;
    static const int PAL_VPS = 50;
    //2 VIs (vertical interrupts) per frame -> 30fps
    static const int VI_PER_FRAME = 2;
    static const int TARGET_FRAMERATE = NTSC_VPS/VI_PER_FRAME;

    static CDeviceVI* spInstance;
    static const VIGamma gammaLevels[];
    static GXRenderModeObj* renderModes[];
    static ml::CPnt16 lbl_8065A6B8[];
    static bool sUseStaticHandle;
};
