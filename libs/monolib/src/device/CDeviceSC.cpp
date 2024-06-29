#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceClock.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "revolution/SC.h"

CDeviceSC* CDeviceSC::instance;

CDeviceSC::CDeviceSC(const char* name, CWorkThread* workThread) : CDeviceBase(name, workThread, 8) {
	aspectRatio = 0;
	euRgb60Mode = 0;
	language = 0;
	progMode = 0;
	soundMode = 1;
	unk1CD = 0;
	instance = this;
	SCInit();
}

CDeviceSC::~CDeviceSC(){
	instance = nullptr;
}

CDeviceSC* CDeviceSC::getInstance(){
	return CDeviceSC::instance;
}

bool func_80447C28(){
	return CDeviceSC::instance->aspectRatio - 1 == 0;
}

bool checkIfScSoundModeMono(){
	return CDeviceSC::instance->soundMode == SC_SND_MONO;
}

u8 getSCLanguage(){
	return CDeviceSC::instance->language;
}

bool func_80447C60(){
	return CDeviceSC::instance->CWorkThread_inline2();
}

bool CDeviceSC::WorkThreadEvent4(){
	if(SCCheckStatus() == SC_STATUS_0){
		u32 r3 = func_8044DEE0();
		if(r3 != 0){
			//Update SC values
			aspectRatio = SCGetAspectRatio();
			euRgb60Mode = SCGetEuRgb60Mode();
			language = SCGetLanguage();
			progMode = SCGetProgressiveMode();
			soundMode = SCGetSoundMode();
			return CWorkThread::WorkThreadEvent4(); //Call the base method
		}
	}

	return false;
}

bool CDeviceSC::WorkThreadEvent5(){
	if((u32)*unk5C.unk4 == (u32)unk5C.unk4){
		if(func_804482A8() == nullptr){
			return CWorkThread::WorkThreadEvent5();
		}
	}

	return false;
}
