#pragma once

#include <types.h>
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDeviceRemotePad.hpp"
#include "monolib/device/CGXCache.hpp"
#include <revolution/GX.h>

enum EVerticalFilter {
    VFILTER_NONE,
    VFILTER_1,
    VFILTER_2,
    VFILTER_3
};

//size: 0x798
class CDeviceGX : public CDeviceBase, public CDeviceVICb {
public:
    CDeviceGX(const char* pName, CWorkThread* pWorkThread);
    virtual ~CDeviceGX();
    static bool checkIfRunning();
    static void setDevicesInitializedFlag(bool state);
    static bool devicesInitialized();
    static CDeviceGX* getInstance();
    static void updateVerticalFilter(EVerticalFilter filter);
    virtual void CDeviceVICb_UnkVirtualFunc3();
    virtual void CDeviceVICb_UnkVirtualFunc4();
    static void func_80455560();
    static void func_8045565C(void* r3);
    static void func_8045579C();
    static int func_804557A0();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    static void drawSyncCallback(u16 token);
    static void setValues(GXPixelFmt format, u32 heapSize);


    static inline CGXCache* getCacheInstance(){
        return cacheInstance;
    }

    inline void setUnk260(float f){
        if(f < 0) f = 0;
        else if(f > 2) f = 2;
        unk260 = f;
    }

    static inline void someInline(void* r3){
        CDeviceGX* gx = spInstance;
        GXBool vf = gx->mFilter != VFILTER_NONE;
        GXRenderModeObj* rmode = CDeviceVI::getRenderModeObj();
        GXBool aa = CDeviceVI::getRenderModeObj()->aa;
        u8* vfilter = gx->mVFilter;
        GXSetCopyFilter(aa, rmode->sample_pattern, vf, vfilter);
        GXCopyDisp(r3, spInstance->unk274);
    }

    static inline void anotherInline(){
        func_804476E8(someString);
        float temp = CDeviceVI::func_8044842C();
        float temp2 = func_804477E8(someString);
        lbl_80667F70 = temp2/temp;
    }

    static inline CDeviceGX* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceGX* device = new (CWorkThreadSystem::getWorkMem()) CDeviceGX(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, 0);
        device->unk1C4 |= 1;
        return device;
    }

    static inline void initialize(){
        setValues(GX_PF_RGB8_Z24, REGION_SIZE);
    }

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    //0x1c8-1cc: CDeviceVICb
    BOOL mDevicesInitialized; //0x1CC
    GXFifoObj mFifo; //0x1D0
    u8* mGxHeap; //0x250
    void* mGxHeapEndAddr; //0x254
    u8 mVFilter[8]; //0x258
    float unk260;
    float unk264;
    u8 unk268[4];
    u32 unk26C;
    u32 unk270;
    u8 unk274;
    u8 unk275[3];
    EVerticalFilter mFilter; //0x278
    CGXCache unk27C;

private:
    //Graphics callback tokens
    static const u16 token1 = 0xB00B;
    static const u16 token2 = 0xBEEF;

    static const u32 REGION_SIZE = 0x180000;

    static CDeviceGX* spInstance;
    static CGXCache* cacheInstance;
    static GXPixelFmt pixelFormat;
    static int gxHeapSize;
    static float lbl_80667F70;
    static const char* someString;
};
