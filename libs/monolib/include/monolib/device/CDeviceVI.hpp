#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/reslist.hpp"
#include "revolution/GX.h"

class CDeviceVICb {

};

class UnkClass_80447FDC {
public:
	UnkClass_80447FDC(){
	}
	~UnkClass_80447FDC(){
	}

	void init(u32* val){
		unk0 = val;
	}

	u32* unk0;
	u32 unk4;

	void func_804EE194();
	void func_804EE1B0();
};

//size: 0x2c0
class CDeviceVI : public CDeviceBase {
public:
	CDeviceVI(const char* name, CWorkThread* workThread);
	virtual ~CDeviceVI();
	static CDeviceVI* getInstance();

	//0x0: vtable
	//0x0-1c8: CDeviceBase
	UnkClass_80447FDC unk1C8;
	reslist<CDeviceVICb*> unk1D0;
	u32 unk1F0;
	u32 unk1F4;
	u32 unk1F8;
	u32 unk1FC;
	GXRenderModeObj unk200;
	GXRenderModeObj unk23C;
	u16 unk278;
	u16 unk27A;
	u16 unk27C;
	u16 unk27E;
	u32* unk280;
	u32 unk284;
	u32 unk288;
	u8 unk28C[0x8]; //padding?
	u32 unk294;
	u32 unk298;
	u32 unk29C;
	u16 unk2A0;
	u16 unk2A2;
	u32 unk2A4;
	u32 unk2A8;
	u32 unk2AC;
	u32 unk2B0;
	u8 unk2B4; //padding?
	u8 unk2B5;
	u8 unk2B6[2]; //padding?
	u32 unk2B8;
	float unk2BC;

	static CDeviceVI* instance;
};
