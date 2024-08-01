#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/device/UnkClass_80447FDC.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/reslist.hpp"
#include "revolution/GX.h"
#include "revolution/VI.h"
#include "monolib/MemManager.hpp"

//size: 0x2c0
class CDeviceVI : public CDeviceBase, public UnkClass_80447FDC {
public:
	CDeviceVI(const char* name, CWorkThread* workThread);
	virtual ~CDeviceVI();
	static CDeviceVI* getInstance();
	static void func_804482B0(u32 r3);
	static bool func_804482DC();
	static void func_804483A0(u32 r3);
	static u32 func_804483CC();
	static void func_804483DC(u32 r3);
	static GXRenderModeObj* getRenderModeObj();
	static u32 func_80448408();
	static float func_80448414();
	static u32 func_80448420();
	static u32 func_8044842C();
	static bool addCallback(CDeviceVICb* entry);
	static bool removeCallback(CDeviceVICb* entry);
	static bool isWideAspectRatio();
	static bool isTvFormatPal();
	static u32 getSomeSize();
	static float getSomeRatio();
	static void func_8044857C(u32 r3, u32 r4);
	void func_804486E4();
	virtual void wkUpdate();
	static void func_80448878();
	static void func_80448A44();
	static void func_80448A84();
	static u32 func_80448D10();
	virtual bool wkStartup();
	virtual bool wkShutdown();
	static void func_80448E78(bool state);
	static bool func_80448E80();
	void func_80448E88();
	virtual void UnkVirtualFunc2();

	inline u32 convertTvFormat() {
		u32 r4 = 0;
		if(tvFormat == VI_PAL) r4 = 1;
		else if(tvFormat == VI_MPAL) r4 = 3;
		else if(tvFormat == VI_EURGB60) r4 = 2;
		return r4;
	}

	inline u32 convertScanMode() {
		u32 r3 = 16;
		if(scanMode == VI_NON_INTERLACE) r3 = 0;
		else if(scanMode == VI_PROGRESSIVE) r3 = 32;
		return r3;
	}

	static inline u16 getEfbHeight(){
		return getRenderModeObj()->efbHeight;
	}

	static inline u16 getFbWidth(){
		return getRenderModeObj()->fbWidth;
	}

	static inline CDeviceVI* init(const char* name, CWorkThread* workThread){
		CDeviceVI* device = new (WorkThreadSystem::getHeapIndex()) CDeviceVI(name, workThread);
		device->func_80438BD8(workThread, 0);
		device->unk1C4 |= 1;
		return device;
	}

	//0x0: vtable
	//0x0-1c8: CDeviceBase
	//0x1c8-1d0: UnkClass_80447FDC
	reslist<CDeviceVICb*> callbackList;
	u32 tvFormat; //0x1F0
	u32 unk1F4;
	u32 scanMode; //0x1F8
	u32 dimmingCount; //0x1FC
	GXRenderModeObj unk200;
	GXRenderModeObj unk23C;
	u16 unk278;
	u16 unk27A;
	u16 unk27C;
	u16 unk27E;
	void* unk280;
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

protected:
	static CDeviceVI* instance;
};
