#pragma once

#include <types.h>

//size: 0x4
class CDeviceVICb {
public:
    enum VICallback {
        VI_CALLBACK_BEFORE_DRAW_DONE,
        VI_CALLBACK_AFTER_DRAW_DONE,
        VI_CALLBACK_BEGIN_FRAME
    };

    CDeviceVICb();
    virtual ~CDeviceVICb();
    virtual void viBeforeDrawDone(){}
    virtual void viAfterDrawDone(){}
    virtual void viBeginFrame(){}
};
