#pragma once

#include <types.h>
#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkUtil.hpp"

//size: 0x1C8
class CDeviceBase : public CWorkThread {
public:
    enum DEVICE_BASE_FLAGS{
        FLAG_CREATED = (1 << 0)
    };

    CDeviceBase(const char* pName, CWorkThread* pParent, int capacity) : CWorkThread(pName, pParent, capacity) {
        mFlags = 0;
    }
    virtual ~CDeviceBase(){}

    inline void CDeviceBase_inline1(CWorkThread* pWorkThread){
        CWorkUtil::entryWork(this, pWorkThread, false);
        mFlags |= FLAG_CREATED;
    }

    inline bool CDeviceBase_inline2() const {
        return mFlags & FLAG_CREATED;
    }

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 mFlags; //0x1C4
};
