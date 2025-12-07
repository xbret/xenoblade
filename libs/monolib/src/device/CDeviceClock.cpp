#include "monolib/device.hpp"
#include "monolib/lib.hpp"
#include "monolib/work.hpp"
#include <string.h>

CDeviceClock* CDeviceClock::spInstance;

/* Won't match because of stupid extab issue (the start pc for the first pc action
is 0xA0 instead of 0xA4) */
CDeviceClock::CDeviceClock(const char* pName, CWorkThread* pWorkThread) :
CDeviceBase(pName,pWorkThread,0),
unk1C8(0),
unk1F0(0),
unk1F8(0),
unk200(0),
unk208(0) {
    spInstance = this;
    memset((void*)&mCalendar, 0, sizeof(OSCalendarTime));
    s64 time = getTimeNow();
    unk1F0 = time;
    unk1C8 |= 1;
    unk1CC.initList(mAllocHandle, 16);
}

CDeviceClock::~CDeviceClock(){
    spInstance = nullptr;
}

CDeviceClock* CDeviceClock::getInstance(){
    return spInstance;
}

bool CDeviceClock::func_8044DEE0(){
    return spInstance->isRunning();
}

s64 CDeviceClock::getTimeNow(){
    return OSGetTime();
}

void CDeviceClock::func_8044DF8C(){
    s64 time = getTimeNow();
    spInstance->unk200 = time;

    for(reslist<IDeviceClockFrame*>::iterator it = spInstance->unk1CC.begin(); it != spInstance->unk1CC.end(); it++){
        (*it)->IDeviceClockFrame_UnkVirtualFunc2();
    }
}

void CDeviceClock::func_8044DFF4(){
    s64 time = getTimeNow();
    spInstance->unk208 = time - spInstance->unk200;
    
    for(reslist<IDeviceClockFrame*>::iterator it = spInstance->unk1CC.begin(); it != spInstance->unk1CC.end(); it++){
        (*it)->IDeviceClockFrame_UnkVirtualFunc3();
    }
}

void CDeviceClock::wkUpdate(){
    unk1F8 = getTimeNow();
    OSTicksToCalendarTime(unk1F8, &mCalendar);
}

bool CDeviceClock::wkStandbyLogin(){
    func_80447598();
    return CWorkThread::wkStandbyLogin(); //Call base
}

bool CDeviceClock::wkStandbyLogout(){
    if(mChildren.empty()){
        if(CDeviceSC::getInstance() == nullptr && CWorkSystem::getInstance() == nullptr
        && CLib::getInstance() == nullptr){
            return CWorkThread::wkStandbyLogout(); //Call base
        }
    }

    return false;
}
