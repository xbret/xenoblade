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
mUpdateTime(0),
mFrameStartTime(0),
mFrameDuration(0) {
    spInstance = this;
    memset((void*)&mCalendar, 0, sizeof(OSCalendarTime));
    unk1F0 = getTimeNow();
    unk1C8 |= 1;
    mFrameList.reserve(mAllocHandle, 16);
}

CDeviceClock::~CDeviceClock(){
    spInstance = nullptr;
}

CDeviceClock* CDeviceClock::getInstance(){
    return spInstance;
}

bool CDeviceClock::isInitialized(){
    return spInstance->isRunning();
}

s64 CDeviceClock::getTimeNow(){
    return OSGetTime();
}

void CDeviceClock::onStartFrame(){
    s64 time = getTimeNow();
    spInstance->mFrameStartTime = time;

    //Trigger the event function for each class in the list
    for(reslist<IDeviceClockFrame*>::iterator it = spInstance->mFrameList.begin(); it != spInstance->mFrameList.end(); it++){
        (*it)->onStartFrame();
    }
}

void CDeviceClock::onEndFrame(){
    s64 time = getTimeNow();
    spInstance->mFrameDuration = time - spInstance->mFrameStartTime;
    
    //Trigger the event function for each class in the list
    for(reslist<IDeviceClockFrame*>::iterator it = spInstance->mFrameList.begin(); it != spInstance->mFrameList.end(); it++){
        (*it)->onEndFrame();
    }
}

void CDeviceClock::wkUpdate(){
    mUpdateTime = getTimeNow();
    OSTicksToCalendarTime(mUpdateTime, &mCalendar);
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
