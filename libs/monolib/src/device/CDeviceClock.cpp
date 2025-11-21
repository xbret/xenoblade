#include "monolib/device/CDeviceClock.hpp"
#include "monolib/device/CDeviceRemotePad.hpp"
#include "monolib/device/CDeviceSC.hpp"
#include "monolib/reslist.hpp"
#include "monolib/work/CWorkSystem.hpp"
#include "monolib/lib/CLib.hpp"
#include <string.h>

CDeviceClock* CDeviceClock::sInstance;

/* Won't match because of stupid extab issue (the start pc for the first pc action
is 0xA0 instead of 0xA4) */
CDeviceClock::CDeviceClock(const char* name, CWorkThread* workThread) :
CDeviceBase(name,workThread,0),
unk1C8(0),
unk1F0(0),
unk1F8(0),
unk200(0),
unk208(0) {
    sInstance = this;
    memset((void*)&mCalendar, 0, sizeof(OSCalendarTime));
    s64 time = getTimeNow();
    unk1F0 = time;
    unk1C8 |= 1;
    unk1CC.initList(16, mAllocHandle);
}

CDeviceClock::~CDeviceClock(){
    sInstance = nullptr;
}

CDeviceClock* CDeviceClock::getInstance(){
    return sInstance;
}

bool CDeviceClock::func_8044DEE0(){
    return sInstance->IsRunning();
}

s64 CDeviceClock::getTimeNow(){
    return OSGetTime();
}

void CDeviceClock::func_8044DF8C(){
    s64 time = getTimeNow();
    sInstance->unk200 = time;

    for(reslist<IDeviceClockFrame*>::iterator it = sInstance->unk1CC.begin(); it != sInstance->unk1CC.end(); it++){
        (*it)->virtualFunc2();
    }
}

void CDeviceClock::func_8044DFF4(){
    s64 time = getTimeNow();
    sInstance->unk208 = time - sInstance->unk200;
    
    for(reslist<IDeviceClockFrame*>::iterator it = sInstance->unk1CC.begin(); it != sInstance->unk1CC.end(); it++){
        (*it)->virtualFunc3();
    }
}

void CDeviceClock::wkUpdate(){
    unk1F8 = getTimeNow();
    OSTicksToCalendarTime(unk1F8, &mCalendar);
}

bool CDeviceClock::wkStartup(){
    func_80447598();
    return CWorkThread::wkStartup(); //Call base
}

bool CDeviceClock::wkShutdown(){
    if(mChildren.empty()){
        if(CDeviceSC::getInstance() == nullptr && CWorkSystem::getInstance() == nullptr
        && CLib::getInstance() == nullptr){
            return CWorkThread::wkShutdown(); //Call base
        }
    }

    return false;
}
