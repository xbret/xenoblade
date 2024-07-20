#include "monolib/device/CDeviceGX.hpp"
#include "monolib/device/CDevice.hpp"
#include "monolib/MemManager.hpp"

CDeviceGX* CDeviceGX::instance;
CGXCache* CDeviceGX::cacheInstance;

static float lbl_80667F70;
static GXPixelFmt lbl_80667F74;
static u32 gxHeapSize = 0x200000; //2 MB

CDeviceGX::CDeviceGX(const char* name, CWorkThread* workThread) : CDeviceBase(name, workThread, 0),
CDeviceVICb(), unk1CC(0), gxHeap(0), gxHeapEndAddress(0), unk264(0), unk26C(0),
unk270(0), unk274(1), filter(None){
	instance = this;
	cacheInstance = &unk27C;
	gxHeap = mtl::allocateHeap(gxHeapSize, func_8044D058(), 0x20);
	gxHeapEndAddress = (void*)((u32)gxHeap + gxHeapSize);
	cacheInstance->unk50C = 0;
	updateVerticalFilter(None);
	cacheInstance->func_8044B294(0);

	//what
	float val = 1;
	if(val < 0) val = 0;
	else if(val > 2) val = 2;
	unk260 = val;
}

CDeviceGX::~CDeviceGX(){
	if(gxHeap != nullptr){
		delete[](gxHeap);
		gxHeap = nullptr;
	}

	instance = nullptr;
}

CDeviceGX* CDeviceGX::getInstance(){
	return instance;
}

bool CDeviceGX::func_804552B4(){
	return instance->CWorkThread_inline2();
}

void CDeviceGX::func_8045535C(u32 r3){
	instance->unk1CC = r3;
}

bool CDeviceGX::func_80455368(){
	return instance->unk1CC == 1;
}

void CDeviceGX::updateVerticalFilter(EVerticalFilter filter){
	instance->filter = filter;
	
	if(instance->filter == 1){
		instance->vfilter[0] = 0;
		instance->vfilter[1] = 3;
		instance->vfilter[2] = 19;
		instance->vfilter[3] = 20;
		instance->vfilter[4] = 19;
		instance->vfilter[5] = 3;
		instance->vfilter[6] = 0;
		instance->vfilter[7] = 0;
	}else if(instance->filter == 2){
		instance->vfilter[0] = 4;
		instance->vfilter[1] = 4;
		instance->vfilter[2] = 15;
		instance->vfilter[3] = 18;
		instance->vfilter[4] = 15;
		instance->vfilter[5] = 4;
		instance->vfilter[6] = 4;
		instance->vfilter[7] = 0;
	}else if(instance->filter == 3){
		instance->vfilter[0] = 8;
		instance->vfilter[1] = 8;
		instance->vfilter[2] = 10;
		instance->vfilter[3] = 12;
		instance->vfilter[4] = 10;
		instance->vfilter[5] = 8;
		instance->vfilter[6] = 8;
		instance->vfilter[7] = 0;
	}
}

void CDeviceGX::CDeviceVICb_vtableFunc3(){
}

void CDeviceGX::CDeviceVICb_vtableFunc4(){
	if(instance->unk1CC != true){
		cacheInstance->func_8044BE38();
	}
}

void CDeviceGX::init(GXPixelFmt pixelFormat, u32 heapSize){
	lbl_80667F74 = pixelFormat;
	gxHeapSize = heapSize;
}

