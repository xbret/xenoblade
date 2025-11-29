#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/util.hpp"
#include "monolib/work.hpp"
#include <revolution/OS.h>

class IDeviceClockFrame {
public:
    virtual void IDeviceClockFrame_UnkVirtualFunc1() = 0;
    virtual void IDeviceClockFrame_UnkVirtualFunc2() = 0;
    virtual void IDeviceClockFrame_UnkVirtualFunc3() = 0;
};

//size: 0x238
class CDeviceClock : public CDeviceBase {
public:
    CDeviceClock(const char* pName, CWorkThread* pWorkThread);
    virtual ~CDeviceClock();
    virtual void wkUpdate();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    static CDeviceClock* getInstance();
    static bool func_8044DEE0();
    static s64 getTimeNow();
    static void func_8044DF8C();
    static void func_8044DFF4();

    static inline CDeviceClock* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceClock* device = new (CWorkThreadSystem::getWorkMem()) CDeviceClock(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, 0);
        device->unk1C4 |= 1;
        return device;
    }

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    u32 unk1C8;
    reslist<IDeviceClockFrame*> unk1CC;
    u32 unk1EC;
    s64 unk1F0;
    s64 unk1F8;
    s64 unk200;
    s64 unk208;
    OSCalendarTime mCalendar; //0x210

    static CDeviceClock* spInstance;
};

extern u32 func_8044DEE0();
