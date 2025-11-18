#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceClock.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include <revolution/SC.h>

CDeviceSC* CDeviceSC::sInstance;

CDeviceSC::CDeviceSC(const char* name, CWorkThread* workThread) : CDeviceBase(name, workThread, 8) {
    mAspectRatio = 0;
    mEuRgb60Mode = 0;
    mLanguage = 0;
    mProgMode = 0;
    mSoundMode = 1;
    unk1CD = 0;
    sInstance = this;
    SCInit();
}

CDeviceSC::~CDeviceSC(){
    sInstance = nullptr;
}

CDeviceSC* CDeviceSC::getInstance(){
    return sInstance;
}

bool CDeviceSC::isWideAspectRatio(){
    return sInstance->mAspectRatio == SC_ASPECT_WIDE;
}

bool CDeviceSC::isSoundModeMono(){
    return sInstance->mSoundMode == SC_SND_MONO;
}

u8 CDeviceSC::getLanguage(){
    return sInstance->mLanguage;
}

bool CDeviceSC::func_80447C60(){
    return sInstance->CWorkThread_inline1();
}

bool CDeviceSC::wkStartup(){
    if(SCCheckStatus() == SC_STATUS_OK){
        u32 r3 = CDeviceClock::func_8044DEE0();
        if(r3 != 0){
            //Update SC values
            mAspectRatio = SCGetAspectRatio();
            mEuRgb60Mode = SCGetEuRgb60Mode();
            mLanguage = SCGetLanguage();
            mProgMode = SCGetProgressiveMode();
            mSoundMode = SCGetSoundMode();
            return CWorkThread::wkStartup(); //Call the base method
        }
    }

    return false;
}

bool CDeviceSC::wkShutdown(){
    if(mChildThreads.empty()){
        if(CDeviceVI::getInstance() == nullptr){
            return CWorkThread::wkShutdown();
        }
    }

    return false;
}
