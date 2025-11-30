#include <monolib/device.hpp>
#include <revolution/SC.h>

CDeviceSC* CDeviceSC::spInstance;

CDeviceSC::CDeviceSC(const char* pName, CWorkThread* pWorkThread) : CDeviceBase(pName, pWorkThread, 8) {
    mAspectRatio = 0;
    mEuRgb60Mode = 0;
    mLanguage = 0;
    mProgMode = 0;
    mSoundMode = 1;
    unk1CD = 0;
    spInstance = this;
    SCInit();
}

CDeviceSC::~CDeviceSC(){
    spInstance = nullptr;
}

CDeviceSC* CDeviceSC::getInstance(){
    return spInstance;
}

bool CDeviceSC::isWideAspectRatio(){
    return spInstance->mAspectRatio == SC_ASPECT_WIDE;
}

bool CDeviceSC::isSoundModeMono(){
    return spInstance->mSoundMode == SC_SND_MONO;
}

u8 CDeviceSC::getLanguage(){
    return spInstance->mLanguage;
}

bool CDeviceSC::func_80447C60(){
    return spInstance->isRunning();
}

bool CDeviceSC::wkStandbyLogin(){
    if(SCCheckStatus() == SC_STATUS_OK){
        u32 r3 = CDeviceClock::func_8044DEE0();
        if(r3 != 0){
            //Update SC values
            mAspectRatio = SCGetAspectRatio();
            mEuRgb60Mode = SCGetEuRgb60Mode();
            mLanguage = SCGetLanguage();
            mProgMode = SCGetProgressiveMode();
            mSoundMode = SCGetSoundMode();
            return CWorkThread::wkStandbyLogin(); //Call the base method
        }
    }

    return false;
}

bool CDeviceSC::wkStandbyLogout(){
    if(mChildren.empty()){
        if(CDeviceVI::getInstance() == nullptr){
            return CWorkThread::wkStandbyLogout();
        }
    }

    return false;
}
