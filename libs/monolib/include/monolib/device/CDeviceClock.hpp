#pragma once

#include <types.h>
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/util.hpp"
#include <revolution/OS.h>

//Interface that classes can inherit to run code at the start/end of each frame.
class IDeviceClockFrame {
public:
    virtual void IDeviceClockFrame_UnkVirtualFunc1() = 0;
    virtual void onStartFrame() = 0;
    virtual void onEndFrame() = 0;
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
    static bool isInitialized();
    static s64 getTimeNow();
    static void onStartFrame();
    static void onEndFrame();

    static inline CDeviceClock* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceClock* device = new (CWorkThreadSystem::getWorkMem()) CDeviceClock(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, false);
        device->unk1C4 |= 1;
        return device;
    }

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    u32 unk1C8;
    reslist<IDeviceClockFrame*> mFrameList; //0x1CC
    u32 unk1EC;
    s64 unk1F0;
    s64 mUpdateTime; //0x1F8
    s64 mFrameStartTime; //0x200
    s64 mFrameDuration; //0x208
    OSCalendarTime mCalendar; //0x210

    static CDeviceClock* spInstance;
};
