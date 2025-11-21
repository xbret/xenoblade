#pragma once

#include "types.h"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkUtil.hpp"

//size: 0x1C8
class CDeviceBase : public CWorkThread {
public:
    CDeviceBase(const char* name, CWorkThread* workThread, int r6) : CWorkThread(name, workThread, r6) {
        unk1C4 = 0;
    }
    virtual ~CDeviceBase(){}

    inline void CDeviceBase_inline1(CWorkThread* workThread){
        CWorkUtil::entryWork(this, workThread, 0);
        unk1C4 |= 1;
    }

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;
};
