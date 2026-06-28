#pragma once

#include <types.h>

#include "monolib/device/CDeviceBase.hpp"

#include <nw4r/lyt/lyt_layout.h>

//size: 0x1f0
class CDeviceFont : public CDeviceBase {
public:
    CDeviceFont(const char* pName, CWorkThread* pParent);
    static CDeviceFont* getInstance();

    //todo: when true return type is found clean :
    // CMCEffCrystal::func_80224CE4
    // CTitleAHelp::OnFileEvent
    static void* func_80452C10(u32, nw4r::lyt::Layout*);

    DECL_WORKTHREAD_CREATE(CDeviceFont);

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    u8 unk1C8[0x1F0 - 0x1C8];
};
