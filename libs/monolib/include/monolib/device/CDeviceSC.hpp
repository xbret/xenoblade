#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/MemManager.hpp"

//size: 0x1D0
class CDeviceSC : public CDeviceBase {
public:
    CDeviceSC(const char* name, CWorkThread* workThread);
    virtual ~CDeviceSC();
    virtual bool wkStartup();
    virtual bool wkShutdown();
    static CDeviceSC* getInstance();
    static bool isWideAspectRatio();
    static bool isSoundModeMono();
    static u8 getLanguage();
    static bool func_80447C60();

    static inline CDeviceSC* init(const char* name, CWorkThread* workThread){
        CDeviceSC* device = new (WorkThreadSystem::getHeapHandle()) CDeviceSC(name, workThread);
        device->func_80438BD8(workThread, 0);
        device->unk1C4 |= 1;
        return device;
    }

    //0x0: vtable
    //0x0-1C8: CDeviceBase
    u8 mAspectRatio; //0x1c8
    u8 mEuRgb60Mode; //0x1c9
    u8 mLanguage; //0x1ca
    u8 mProgMode; //0x1cb
    u8 mSoundMode; //0x1cc
    u8 unk1CD;
    u8 unk1CE[2];

    static CDeviceSC* sInstance;
};
