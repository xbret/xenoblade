#pragma once

#include <types.h>
#include "monolib/device/CDeviceBase.hpp"

//size: 0x1f0
class CDeviceRemotePad : public CDeviceBase {
public:
    CDeviceRemotePad(const char* pName, CWorkThread* pParent);
    static CDeviceRemotePad* getInstance();

    DECL_WORKTHREAD_CREATE(CDeviceRemotePad);

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    u8 unk1C8[0x1F0 - 0x1C8];
};

class CPadManager {
public:
    static void func_804469D0();
    static int* func_80447580();
};

class UnkClass_80447598 {
public:
    static void func_80447598();
    static void func_804475E4(const char* str);
    static void func_804476E8(const char* str);
    static float func_804477E8(const char* str);
};
