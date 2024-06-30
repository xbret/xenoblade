#include "monolib/device/CDeviceVI.hpp"
#include <string.h>

extern int Heap_getRegionIndex2_2();
extern u32* MemManager_80434B64(u32 r3, int index, u32 r5);
extern u32 func_8044D058();

bool lbl_80667F2C;

CDeviceVI::CDeviceVI(const char* name, CWorkThread* workThread) : CDeviceBase(name, workThread, 8) {
	unk1C8.init((u32*)unkA0);
	//unk1C8.unk0 = (u32*)unkA0;
	unk1F0 = 0;
	unk1F4 = 9;
	unk1F8 = 0;
	unk1FC = 0;
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
	if(lbl_80667F2C != 0){
		index = Heap_getRegionIndex2_2();
	}else{
		index = func_8044D058();
	}
	unk280 = MemManager_80434B64(0x12C000, index, 0x20);

	memcpy(&unk200, &GXNtsc480Int, sizeof(GXRenderModeObj));
	instance->unk1C8.unk4 |= 0x1;
	instance->unk1C8.unk4 |= 0x10;
	unk1D0.initList(16, unk54);

	//what are you doing
	if(this != nullptr){
		unk1C8.func_804EE194();
	}
}

CDeviceVI::~CDeviceVI(){
	unk1C8.unk0 = (u32*)unkA0;
	unk1C8.func_804EE1B0();

	if(unk280 != nullptr){
		delete[](unk280);
		unk280 = nullptr;
	}

	instance = nullptr;
}
