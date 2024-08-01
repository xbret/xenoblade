#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceGX.hpp"
#include "monolib/device/CDevice.hpp"
#include "monolib/lib/CLib.hpp"
#include "monolib/work/CWorkSystem.hpp"
#include "monolib/Math.hpp"
#include <string.h>

CDeviceVI* CDeviceVI::instance;

static const VIGamma gammaLevels[] = {
	VI_GM_0_1,
	VI_GM_0_2,
	VI_GM_0_3,
	VI_GM_0_4,
	VI_GM_0_5,
	VI_GM_0_6,
	VI_GM_0_7,
	VI_GM_0_8,
	VI_GM_0_9,
	VI_GM_1_0,
	VI_GM_1_1,
	VI_GM_1_2,
	VI_GM_1_3,
	VI_GM_1_4,
	VI_GM_1_5,
	VI_GM_1_6,
	VI_GM_1_7,
	VI_GM_1_8,
	VI_GM_1_9,
	VI_GM_2_0,
	VI_GM_2_1,
	VI_GM_2_2,
	VI_GM_2_3,
	VI_GM_2_4,
	VI_GM_2_5,
	VI_GM_2_6,
	VI_GM_2_7,
	VI_GM_2_8,
	VI_GM_2_9,
	VI_GM_3_0
};

GXRenderModeObj* renderModes[] = {
	&GXNtsc240Ds,
	&GXNtsc480Int,
	&GXNtsc480Prog,
	&GXNtsc480ProgSoft,
	&GXPal264Ds,
	&GXPal528Int,
	nullptr, //GXPal528Prog
	nullptr, //GXPal528ProgSoft
	&GXEurgb60Hz240Ds,
	&GXEurgb60Hz480Int,
	&GXEurgb60Hz480Prog,
	&GXEurgb60Hz480ProgSoft,
	&GXMpal240Ds,
	&GXMpal480Int,
	&GXMpal480Prog,
	&GXMpal480ProgSoft
};

static CPnt16 lbl_8065A6B8[] = {
	CPnt16(0,8),
	CPnt16(0,0),
	CPnt16(0,0),
	CPnt16(0,16),
	CPnt16(0,8),
	CPnt16(0,16),
	CPnt16(0,0),
	CPnt16(0,0),
	CPnt16(0,8),
	CPnt16(0,16),
	CPnt16(0,16),
	CPnt16(0,16),
	CPnt16(0,8),
	CPnt16(0,16),
	CPnt16(0,16),
	CPnt16(0,16)
};

static bool lbl_80667F2C;

CDeviceVI::CDeviceVI(const char* name, CWorkThread* workThread) : CDeviceBase(name, workThread, 8)
, UnkClass_80447FDC() {
	tvFormat = 0;
	unk1F4 = 9;
	scanMode = 0;
	dimmingCount = 0;
	unk278 = 0;
	unk27A = 0;
	unk27C = 0;
	unk27E = 0;
	unk280 = 0;
	unk284 = 2;
	unk294 = 0;
	unk298 = 0;
	unk29C = 0;
	unk2A4 = 0;
	unk2A8 = 2;
	unk2AC = 0;
	unk2B0 = 0;
	unk2B5 = 1;
	unk2B8 = 0x1E;
	unk2BC = 0.033333335;
	instance = this;
	unk2A0 = 0;
	unk2A2 = 0;
	unk280 = mtl::allocateHeap(getSomeSize(), lbl_80667F2C ? mtl::Heap_getRegionIndex2_2() : CDevice::func_8044D058(), 0x20);

	memcpy(&unk200, &GXNtsc480Int, sizeof(GXRenderModeObj));
	instance->unk4 |= 0x1;
	instance->unk4 |= 0x10;
	callbackList.initList(16, unk54);

	UNKTYPE* ptr = static_cast<UnkClass_80447FDC*>(this);
	func_804EE194(ptr);
}

CDeviceVI::~CDeviceVI(){
	UNKTYPE* ptr = static_cast<UnkClass_80447FDC*>(this);
	func_804EE1B0(ptr);

	if(unk280 != nullptr){
		delete[](unk280);
		unk280 = nullptr;
	}

	instance = nullptr;
}

CDeviceVI* CDeviceVI::getInstance(){
	return instance;
}

void CDeviceVI::func_804482B0(u32 r3){
	CDeviceVI* vi = instance;
	if(r3 != 0) vi->unk4 |= 0x10;
	else vi->unk4 &= ~0x10;
}

bool CDeviceVI::func_804482DC(){
	bool result = instance->CWorkThread_inline1();
	return result == false || (instance->unk4 & 0x4) != 0 ? false : true;
}

void CDeviceVI::func_804483A0(u32 r3){
	CDeviceVI* vi = instance;
	if(r3 != 0) vi->unk4 |= 0x1;
	else vi->unk4 &= ~0x1;
}

u32 CDeviceVI::func_804483CC(){
	return instance->unk4 & 0x1;
}

void CDeviceVI::func_804483DC(u32 r3){
	if(instance != nullptr){
		u32 val = r3;
		if(val >= 0x1E) val = 0x1D;
		instance->unk1F4 = val;
	}
}

GXRenderModeObj* CDeviceVI::getRenderModeObj(){
	return &instance->unk200;
}

u32 CDeviceVI::func_80448408(){
	return instance->unk2B8;
}

float CDeviceVI::func_80448414(){
	return instance->unk2BC;
}

u32 CDeviceVI::func_80448420(){
	return instance->unk2AC;
}

u32 CDeviceVI::func_8044842C(){
	return instance->unk2A8;
}

bool CDeviceVI::addCallback(CDeviceVICb* entry){
	instance->callbackList.push_back(entry);
	return true;
}

bool CDeviceVI::removeCallback(CDeviceVICb* entry){
	instance->callbackList.remove(entry);
	return true;
}

bool CDeviceVI::isWideAspectRatio(){
	return CDeviceSC::isWideAspectRatio();
}

bool CDeviceVI::isTvFormatPal(){
	return VIGetTvFormat() == VI_PAL;
}

u32 CDeviceVI::getSomeSize(){
	return 0x12C000;
}

float CDeviceVI::getSomeRatio(){
	float ratio;

	if(isWideAspectRatio()){
		ratio = 1.33333333;
	}else{
		ratio = 1.0;
	}

	return ratio;
}

void CDeviceVI::wkUpdate(){
	VISetGamma(gammaLevels[unk1F4]);

	if(unk4 & 8){
		VISetBlack(VI_TRUE);
	}else{
		VISetBlack(unk4 & 1);
	}

	VIFlush();
	func_804486E4();
}

void CDeviceVI::func_80448A44(){
	if(CDeviceGX::func_80455368() != false){
		while(GXReadDrawSync() != 0xBEEF){
		}
	}else{
		GXDrawDone();
	}
}

void CDeviceVI::func_80448A84(){
	CDeviceVI* vi = instance;

	u32 r0 = vi->unk7C & 0x10;
	if(r0 != 0){
		r0 = 1;
	}else{
		int r0_1 = vi->unk80.field4;
		int r6 = 0;
		if(r0_1 > 0){

		}

		r6 = -1;

		lbl_78:
		r0 = r6 < 0;
	}

	u32 r0_2 = 0;
	if(r0 == 0){
		int r4 = vi->unk48;
		u32 r3 = 1;
		if(r4 != 2 && r4 != 3){
			r3 = 0;
		}
		if(r3 != 0){
			r0_2 = 1;
		}
	}

	if(r0_2 != 0){

	}

}

u32 CDeviceVI::func_80448D10(){
	return 1;
}

bool CDeviceVI::wkStartup(){
	if(CDeviceSC::func_80447C60() != false){
		//Initialize VI
		VIInit();
		u32 dtvStatus = VIGetDTVStatus(); //unused
		dimmingCount = VIGetDimmingCount();
		scanMode = VIGetScanMode();
		tvFormat = VIGetTvFormat();
		u32 val = convertTvFormat() | convertScanMode();
		func_8044857C(val, 0);
		func_804486E4();
		VIEnableDimming(VI_ENABLE);
		VISetTrapFilter(VI_FALSE);
		return CWorkThread::wkStartup();
	}

	return false;
}

bool CDeviceVI::wkShutdown(){
	VISetBlack(VI_TRUE);
	VIFlush();
	if(workThreadList.empty()){
		if(CDeviceGX::getInstance() == nullptr && CDevice::func_8044D438() &&
		CWorkSystem::getInstance() == nullptr && CLib::getInstance() == nullptr){
			return CWorkThread::wkShutdown();
		}
	}

	return false;
}

void CDeviceVI::func_80448E78(bool state){
	lbl_80667F2C = state;
}

bool CDeviceVI::func_80448E80(){
	return lbl_80667F2C;
}

void CDeviceVI::UnkVirtualFunc2(){
	unk4 |= 0x80000000;
}

