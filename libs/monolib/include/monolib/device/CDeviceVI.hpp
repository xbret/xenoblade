#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/device/UnkClass_80447FDC.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/reslist.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/CWorkUtil.hpp"
#include <revolution/GX.h>
#include <revolution/VI.h>

//size: 0x2c0
class CDeviceVI : public CDeviceBase, public UnkClass_80447FDC {
public:
    CDeviceVI(const char* pName, CWorkThread* pWorkThread);
    virtual ~CDeviceVI();
    static CDeviceVI* getInstance();
    static void func_804482B0(u32 r3);
    static bool func_804482DC();
    static void func_804483A0(u32 r3);
    static u32 func_804483CC();
    static void func_804483DC(u32 r3);
    static GXRenderModeObj* getRenderModeObj();
    static u32 func_80448408();
    static float func_80448414();
    static u32 func_80448420();
    static u32 func_8044842C();
    static bool addCallback(CDeviceVICb* entry);
    static bool removeCallback(CDeviceVICb* entry);
    static bool isWideAspectRatio();
    static bool isTvFormatPal();
    static u32 getXfbBuffersSize();
    static float getWidthScale();
    static void func_8044857C(u32 r3, u32 r4);
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

    //TODO: these should use enums

    inline u32 convertTvFormat() {
        u32 result = 0;
        if(mTvFormat == VI_PAL) result = 1;
        else if(mTvFormat == VI_MPAL) result = 3;
        else if(mTvFormat == VI_EURGB60) result = 2;
        return result;
    }

    inline u32 convertScanMode() {
        u32 result = 16;
        if(mScanMode == VI_NON_INTERLACE) result = 0;
        else if(mScanMode == VI_PROGRESSIVE) result = 32;
        return result;
    }

    static inline u16 getEfbHeight(){
        return getRenderModeObj()->efbHeight;
    }

    static inline u16 getFbWidth(){
        return getRenderModeObj()->fbWidth;
    }

    static inline CDeviceVI* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceVI* device = new (CWorkThreadSystem::getWorkMem()) CDeviceVI(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, 0);
        device->unk1C4 |= 1;
        return device;
    }

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    //0x1c8-1d0: UnkClass_80447FDC
    reslist<CDeviceVICb*> mCallbackList; //0x1D0
    u32 mTvFormat; //0x1F0
    u32 unk1F4;
    u32 mScanMode; //0x1F8
    u32 mDimmingCount; //0x1FC
    GXRenderModeObj unk200;
    GXRenderModeObj unk23C;
    u16 unk278;
    u16 unk27A;
    u16 unk27C;
    u16 unk27E;
    u8* mXfbBuffersPtr; //0x280
    u32 unk284;
    u32 unk288;
    u8 unk28C[0x8]; //padding?
    u32 unk294;
    u32 unk298;
    u32 unk29C;
    u16 unk2A0;
    u16 unk2A2;
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
    static const u16 drawSyncToken = 0xBEEF;

    static CDeviceVI* spInstance;
    static bool lbl_80667F2C;
};

//XFB defines

//XFB dimensions
//JP: 640x480, US: 640x456, PAL: 640x542
#define XFB_WIDTH 640
#if defined(VERSION_JP)
#define XFB_HEIGHT 480
#elif defined(VERSION_EU)
#define XFB_HEIGHT 542
#elif defined(VERSION_US)
#define XFB_HEIGHT 456
#endif
#define NUM_XFB_BUFFERS 2 //double buffered
