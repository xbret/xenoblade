#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDeviceRemotePad.hpp"
#include "monolib/CGXCache.hpp"
#include "monolib/MemManager.hpp"
#include "revolution/GX.h"

enum EVerticalFilter {
	VFILTER_NONE,
	VFILTER_1,
	VFILTER_2,
	VFILTER_3
};

//size: 0x798
class CDeviceGX : public CDeviceBase, public CDeviceVICb {
public:
	CDeviceGX(const char* name, CWorkThread* workThread);
	virtual ~CDeviceGX();
	static bool func_804552B4();
	static void func_8045535C(u32 r3);
	static bool func_80455368();
	static CDeviceGX* getInstance();
	static void updateVerticalFilter(EVerticalFilter filter);
	virtual void CDeviceVICb_vtableFunc3();
	virtual void CDeviceVICb_vtableFunc4();
	static void func_80455560();
	static void func_8045565C(void* r3);
	static void func_8045579C();
	static int func_804557A0();
	virtual bool wkStartup();
	virtual bool wkShutdown();
	static void drawSyncCallback(u16 token);
	static void setValues(GXPixelFmt format, u32 heapSize);


	static inline CGXCache* getCacheInstance(){
		return cacheInstance;
	}

	inline void setUnk260(float f){
		if(f < 0) f = 0;
		else if(f > 2) f = 2;
		unk260 = f;
	}

	static inline void someInline(void* r3){
		CDeviceGX* gx = instance;
		GXBool vf = gx->filter != VFILTER_NONE;
		GXRenderModeObj* rmode = CDeviceVI::getRenderModeObj();
		GXBool aa = CDeviceVI::getRenderModeObj()->aa;
		u8* vfilter = gx->vfilter;
		GXSetCopyFilter(aa, rmode->sample_pattern, vf, vfilter);
		GXCopyDisp(r3, instance->unk274);
	}

	static inline void anotherInline(){
		func_804476E8(someString);
		float temp = CDeviceVI::func_8044842C();
		float temp2 = func_804477E8(someString);
		lbl_80667F70 = temp2/temp;
	}

	static inline CDeviceGX* init(const char* name, CWorkThread* workThread){
		CDeviceGX* device = new (WorkThreadSystem::getHeapIndex()) CDeviceGX(name, workThread);
		device->func_80438BD8(workThread, 0);
		device->unk1C4 |= 1;
		return device;
	}

	//0x0: vtable
	//0x0-1c8: CDeviceBase
	//0x1c8-1cc: CDeviceVICb
	BOOL unk1CC;
	GXFifoObj fifo; //0x1D0
	void* gxHeap; //0x250
	void* gxHeapEndAddress; //0x254
	u8 vfilter[8]; //0x258
	float unk260;
	float unk264;
	u8 unk268[4];
	u32 unk26C;
	u32 unk270;
	u8 unk274;
	u8 unk275[3];
	EVerticalFilter filter; //0x278
	CGXCache unk27C;

protected:
	static CDeviceGX* instance;
	static CGXCache* cacheInstance;
	static GXPixelFmt pixelFormat;
	static int gxHeapSize;
	static float lbl_80667F70;
	static const char* someString;
};

