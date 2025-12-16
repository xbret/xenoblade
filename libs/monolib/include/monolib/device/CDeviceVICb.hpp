#pragma once

#include <types.h>

//size: 0x4
class CDeviceVICb {
public:
    enum VICallback {
        VI_CALLBACK_2,
        VI_CALLBACK_3,
        VI_CALLBACK_4
    };

    CDeviceVICb();
    virtual ~CDeviceVICb();
    virtual void CDeviceVICb_UnkVirtualFunc2(){}
    virtual void CDeviceVICb_UnkVirtualFunc3(){}
    virtual void CDeviceVICb_UnkVirtualFunc4(){}
};
