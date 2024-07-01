#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceGX.hpp"
#include "monolib/lib/CLib.hpp"
#include <string.h>

extern int Heap_getRegionIndex2_2();
extern u32* MemManager_80434B64(u32 r3, int index, u32 r5);
extern u32 func_8044D058();

struct Test {
	Test(u16 x, u16 y){
		this->x = x;
		this->y = y;
	}
	u16 x;
	u16 y;
};

CDeviceVI* CDeviceVI::instance;

//why not just... do index + 1?
const u32 lbl_805262A8[] = {
	1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
	16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
};

GXRenderModeObj* renderModes[] = {
	&GXNtsc240Ds,
	&GXNtsc480Int,
	&GXNtsc480Prog,
	&GXNtsc480ProgSoft,
	&GXPal264Ds,
	&GXPal528Int,
	nullptr,
	nullptr,
	&GXEurgb60Hz240Ds,
	&GXEurgb60Hz480Int,
	&GXEurgb60Hz480Prog,
	&GXEurgb60Hz480ProgSoft,
	&GXMpal240Ds,
	&GXMpal480Int,
	&GXMpal480Prog,
	&GXMpal480ProgSoft
};

static Test lbl_8065A6B8[] = {
	Test(0,8),
	Test(0,0),
	Test(0,0),
	Test(0,16),
	Test(0,8),
	Test(0,16),
	Test(0,0),
	Test(0,0),
	Test(0,8),
	Test(0,16),
	Test(0,16),
	Test(0,16),
	Test(0,8),
	Test(0,16),
	Test(0,16),
	Test(0,16)
};

//UnkClass_8065A6B8 lbl_8065A6B8;
bool lbl_80667F2C;

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

	//idk wtf this is
	int index;
	if(lbl_80667F2C != false){
		index = Heap_getRegionIndex2_2();
	}else{
		index = func_8044D058();
	}
	unk280 = MemManager_80434B64(0x12C000, index, 0x20);

	memcpy(&unk200, &GXNtsc480Int, sizeof(GXRenderModeObj));
	instance->unk4 |= 0x1;
	instance->unk4 |= 0x10;
	unk1D0.initList(16, unk54);

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
	bool result = instance->CWorkThread_inline2();
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

GXRenderModeObj* CDeviceVI::func_804483FC(){
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

bool CDeviceVI::isWideAspectRatio(){
	return CDeviceSC::isWideAspectRatio();
}

bool CDeviceVI::isTvFormatPal(){
	return VIGetTvFormat() == VI_PAL;
}

u32 CDeviceVI::func_8044853C(){
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

void CDeviceVI::func_80448A44(){
	if(CDeviceGX::func_80455368() != false){
		while(GXReadDrawSync() != 0xBEEF){
		}
	}else{
		GXDrawDone();
	}
}

bool CDeviceVI::WorkThreadEvent4(){
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
		return CWorkThread::WorkThreadEvent4();
	}

	return false;
}

bool CDeviceVI::WorkThreadEvent5(){
	VISetBlack(VI_TRUE);
	VIFlush();
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

