#pragma once

#include "types.h"
#include <monolib/device/CDeviceBase.hpp>
#include <monolib/work.hpp>

//size: 0x1f0
class CDeviceFont : public CDeviceBase {
public:
    CDeviceFont(const char* pName, CWorkThread* pWorkThread);
    static CDeviceFont* getInstance();

    static inline CDeviceFont* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceFont* device = new (CWorkThreadSystem::getWorkMem()) CDeviceFont(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, 0);
        return device;
    }

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    u8 unk1C8[0x1F0 - 0x1C8];
};
