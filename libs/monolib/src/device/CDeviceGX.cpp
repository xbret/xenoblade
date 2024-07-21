#include "monolib/device/CDeviceGX.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDevice.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/UnkClass_804561AC.hpp"

extern void func_804475E4(const char* str);
extern void func_804476E8(const char* str);
extern float func_804477E8(const char* str);

GXPixelFmt CDeviceGX::pixelFormat;
CDeviceGX* CDeviceGX::instance;
CGXCache* CDeviceGX::cacheInstance;
int CDeviceGX::gxHeapSize = 0x200000; //2 MB

static float lbl_80667F70;
static const char* someString = "GPCost";

const u16 token1 = 0xB00B; //kinda sus but ok
const u16 token2 = 0xBEEF;

CDeviceGX::CDeviceGX(const char* name, CWorkThread* workThread) : CDeviceBase(name, workThread, 0),
CDeviceVICb(), unk1CC(false), gxHeap(nullptr), gxHeapEndAddress(nullptr), unk264(0), unk26C(0),
unk270(0), unk274(1), filter(None){
	instance = this;
	cacheInstance = &unk27C;
	gxHeap = mtl::allocateHeap(gxHeapSize, func_8044D058(), 0x20);
	gxHeapEndAddress = (void*)((u32)gxHeap + gxHeapSize);
	cacheInstance->unk50C = 0;
	updateVerticalFilter(None);
	cacheInstance->func_8044B294(0);
	setUnk260(1);
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
	GXFifoObj fifo;
	void* readPtr;
	void* writePtr;

	GXFlush();
	GXGetCPUFifo(&fifo);
	GXGetFifoPtrs(&fifo, &readPtr, &writePtr);
	
	u32 temp1 = unk26C;
	u32 temp = (u32)writePtr;
	u32 temp2;

	if(temp >= temp1){
		temp2 = temp - temp1;
	}else{
		temp1 -= temp;
		temp2 = gxHeapSize - temp1;
	}
	unk264 = ((float)temp2/(float)gxHeapSize) * 2.0f;
}

void CDeviceGX::CDeviceVICb_vtableFunc4(){
	if(instance->unk1CC != true){
		cacheInstance->func_8044BE38();
	}
}

void CDeviceGX::func_80455560(){
	if(instance->unk1CC == true){
		GXFlush();

		GXFifoObj fifo;
		void* readPtr;
		void* writePtr;

		GXGetCPUFifo(&fifo);
		GXGetFifoPtrs(&fifo, &readPtr, &writePtr);
		instance->unk26C = (u32)writePtr;
		instance->unk270 = (u32)readPtr;
		GXEnableBreakPt(writePtr);
		GXSetDrawSync(token1);
		cacheInstance->func_8044BE38();
		if(instance->unk274 == 0){
			UnkClass_804561AC something;
			something.func_80456134();
			u32 r4 = cacheInstance->func_8044B5B4();
			something.func_804564A0(r4);
			s16 efbHeight = CDeviceVI::func_804483FC()->efbHeight;
			s16 fbWidth = CDeviceVI::func_804483FC()->fbWidth;
			CRect16 sp10 = CRect16(0,0,fbWidth,efbHeight);
			something.func_80456DAC(sp10);
		}
	}else{
		func_804475E4(someString);
	}
}

void CDeviceGX::func_8045579C(){
}

int CDeviceGX::func_804557A0(){
	return instance->gxHeapSize;
}

void CDeviceGX::drawSyncCallback(u16 token){
	if(token == token1){
		func_804475E4(someString);
	}else if(token == token2){
		func_804476E8(someString);
		float temp = CDeviceVI::func_8044842C();
		float temp2 = func_804477E8(someString);
		lbl_80667F70 = temp2/temp;
	}
}

void CDeviceGX::init(GXPixelFmt format, u32 heapSize){
	pixelFormat = format;
	gxHeapSize = heapSize;
}

