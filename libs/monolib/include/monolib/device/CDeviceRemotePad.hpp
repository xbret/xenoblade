#pragma once

#include "types.h"
#include <monolib/device/CDeviceBase.hpp>
#include <monolib/work.hpp>

//size: 0x1f0
class CDeviceRemotePad : public CDeviceBase {
public:
    CDeviceRemotePad(const char* pName, CWorkThread* pWorkThread);
    static CDeviceRemotePad* getInstance();

    static inline CDeviceRemotePad* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceRemotePad* device = new (CWorkThreadSystem::getWorkMem()) CDeviceRemotePad(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, 0);
        return device;
    }

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    u8 unk1C8[0x1F0 - 0x1C8];
};

int* CDeviceRemotePad_80447580();
void func_80447598();

void func_804475E4(const char* str);
void func_804476E8(const char* str);
float func_804477E8(const char* str);
