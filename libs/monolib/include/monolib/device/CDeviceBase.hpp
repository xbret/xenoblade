#pragma once

#include <types.h>
#include <monolib/work.hpp>

//size: 0x1C8
class CDeviceBase : public CWorkThread {
public:
    CDeviceBase(const char* pName, CWorkThread* pWorkThread, int capacity) : CWorkThread(pName, pWorkThread, capacity) {
        unk1C4 = 0;
    }
    virtual ~CDeviceBase(){}

    inline void CDeviceBase_inline1(CWorkThread* pWorkThread){
        CWorkUtil::entryWork(this, pWorkThread, 0);
        unk1C4 |= 1;
    }

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;
};
