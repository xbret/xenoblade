#pragma once

#include <types.h>
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/device/UnkClass_80447FDC.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/util.hpp"
#include "monolib/math.hpp"
#include <revolution/GX.h>
#include <revolution/VI.h>

//size: 0x2c0
class CDeviceVI : public CDeviceBase, public UnkClass_80447FDC {
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

    static void func_804483DC(u32 r3);
    static GXRenderModeObj* getRenderModeObj();
    static u32 func_80448408();
    static float func_80448414();
    static u32 func_80448420();
    static u32 func_8044842C();
    static bool entryCb(CDeviceVICb* entry);
    static bool removeCb(CDeviceVICb* entry);
    static bool isWideAspectRatio();
    static bool isTvFormatPal();
    static u32 getXfbBuffersSize();
    static float getWidthScale();
    static bool func_8044857C(u32 r3, u32 r4);
    void func_804486E4();
    virtual void wkUpdate();
    static void func_80448878();
    static void func_80448A44();
    static void func_80448A84();
    static u32 func_80448D10();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    static void func_80448E78(bool state);
    static bool func_80448E80();
    void func_80448E88();
    virtual void UnkClass_80447FDC_UnkVirtualFunc1();

    static void runCallbackFunction2();
    static void runCallbackFunction3();
    static bool unkInline1();
    static void unkInline2(u32 index);
    static void runViCallback(CDeviceVICb::VICallback callback);
    static void runFunc3Callback();
    static void runFunc4Callback();
    static void setupRenderMode2(u32 viWidth);

    static inline CDeviceVI* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceVI* device = new (CWorkThreadSystem::getWorkMem()) CDeviceVI(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, 0);
        device->unk1C4 |= 1;
        return device;
    }

    void setFlag(u32 flag, bool state){
        if(state != false) mViFlags |= (1 << flag);
        else mViFlags &= ~(1 << flag);
    }

    bool checkFlag(u32 flag) const {
        return mViFlags & (1 << flag);
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
    u32 unk1F4;
    u32 mScanMode; //0x1F8
    u32 mDimmingCount; //0x1FC
    GXRenderModeObj mRenderMode1; //0x200
    GXRenderModeObj mRenderMode2; //0x23C
    u16 unk278;
    u16 unk27A;
    u16 unk27C;
    u16 unk27E;
    u8* mXfbBuffersPtr; //0x280
    u32 unk284;
    void* mFrameBufferPtrArray[3]; //0x288
    u32 unk294;
    u32 unk298;
    u32 unk29C;
    ml::CPnt16 unk2A0;
    u32 unk2A4;
    u32 unk2A8;
    u32 unk2AC;
    u32 unk2B0;
    u8 unk2B4; //padding?
    u8 unk2B5;
    u8 unk2B6[2]; //padding?
    u32 unk2B8;
    float unk2BC;

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
        NUM_TV_FORMAT = 4
    };

    enum ScanMode {
        SCAN_MODE_DS,
        SCAN_MODE_INT,
        SCAN_MODE_PROG,
        SCAN_MODE_PROGSOFT,
        NUM_SCAN_MODE = 4
    };

    u32 getTvFormatIndex() const;
    u32 getScanModeIndex() const;
    u32 calculateRenderModeIndex() const;

    static const u16 drawSyncToken = 0xBEEF;
    
    //XFB defines

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

    static CDeviceVI* spInstance;
    static bool lbl_80667F2C;
};
