#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceClock.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "revolution/SC.h"

CDeviceSC* CDeviceSC::instance;

CDeviceSC::CDeviceSC(const char* name, CWorkThread* workThread) : CDeviceBase(name, workThread, 8) {
	mAspectRatio = 0;
	mEuRgb60Mode = 0;
	mLanguage = 0;
	mProgMode = 0;
	mSoundMode = 1;
	unk1CD = 0;
	instance = this;
	SCInit();
}

CDeviceSC::~CDeviceSC(){
	instance = nullptr;
}

CDeviceSC* CDeviceSC::getInstance(){
	return instance;
}

bool CDeviceSC::isWideAspectRatio(){
	return instance->mAspectRatio == SC_ASPECT_WIDE;
}

bool CDeviceSC::isSoundModeMono(){
	return instance->mSoundMode == SC_SND_MONO;
}

u8 CDeviceSC::getLanguage(){
	return instance->mLanguage;
}

bool CDeviceSC::func_80447C60(){
	return instance->CWorkThread_inline1();
}

bool CDeviceSC::wkStartup(){
	if(SCCheckStatus() == SC_STATUS_0){
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
	if(mWorkThreadList.empty()){
		if(CDeviceVI::getInstance() == nullptr){
			return CWorkThread::wkShutdown();
		}
	}

	return false;
}
