#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/CGXCache.hpp"
#include "revolution/GX.h"

enum EVerticalFilter {
	None,
	Filter1,
	Filter2,
	Filter3
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
	static void func_8045579C();
	static int func_804557A0();
	static void drawSyncCallback(u16 token);
	static void init(GXPixelFmt format, u32 heapSize);

	static inline CGXCache* getCacheInstance(){
		return cacheInstance;
	}

	inline void setUnk260(float f){
		if(f < 0) f = 0;
		else if(f > 2) f = 2;
		unk260 = f;
	}

	//0x0: vtable
	//0x0-1c8: CDeviceBase
	//0x1c8-1cc: CDeviceVICb
	BOOL unk1CC;
	u8 unk1D0[0x250 - 0x1D0];
	void* gxHeap;
	void* gxHeapEndAddress;
	u8 vfilter[8];
	float unk260;
	float unk264;
	u8 unk268[4];
	u32 unk26C;
	u32 unk270;
	u8 unk274;
	u8 unk275[3];
	EVerticalFilter filter;
	CGXCache unk27C;

protected:
	static CDeviceGX* instance;
	static CGXCache* cacheInstance;
	static GXPixelFmt pixelFormat;
	static int gxHeapSize;
};

