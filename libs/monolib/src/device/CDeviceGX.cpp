#include "monolib/device/CDeviceGX.hpp"
#include "monolib/device/CDevice.hpp"
#include "monolib/UnkClass_804561AC.hpp"
#include "monolib/work/CWorkSystem.hpp"
#include "monolib/lib/CLib.hpp"

float CDeviceGX::lbl_80667F70;
GXPixelFmt CDeviceGX::pixelFormat;
CDeviceGX* CDeviceGX::instance;
CGXCache* CDeviceGX::cacheInstance;
int CDeviceGX::gxHeapSize = 0x200000; //2 MB
const char* CDeviceGX::someString = "GPCost";

//Graphics callback tokens
const u16 token1 = 0xB00B;
const u16 token2 = 0xBEEF;

CDeviceGX::CDeviceGX(const char* name, CWorkThread* workThread) : CDeviceBase(name, workThread, 0),
CDeviceVICb(), unk1CC(false), mGxHeap(nullptr), mGxHeapEndAddr(nullptr), unk264(0), unk26C(0),
unk270(0), unk274(1), mFilter(VFILTER_NONE){
    instance = this;
    cacheInstance = &unk27C;
    mGxHeap = (u8*)mtl::MemManager::allocate_array_ex(gxHeapSize, CDevice::func_8044D058(), 32);
    mGxHeapEndAddr = (void*)((u32)mGxHeap + gxHeapSize);
    cacheInstance->unk50C = 0;
    updateVerticalFilter(VFILTER_NONE);
    cacheInstance->func_8044B294(0);
    setUnk260(1);
}

CDeviceGX::~CDeviceGX(){
    if(mGxHeap != nullptr){
        delete[](mGxHeap);
        mGxHeap = nullptr;
    }

    instance = nullptr;
}

CDeviceGX* CDeviceGX::getInstance(){
    return instance;
}

bool CDeviceGX::func_804552B4(){
    return instance->CWorkThread_inline1();
}

void CDeviceGX::func_8045535C(u32 r3){
    instance->unk1CC = r3;
}

bool CDeviceGX::func_80455368(){
    return instance->unk1CC == 1;
}

void CDeviceGX::updateVerticalFilter(EVerticalFilter filter){
    instance->mFilter = filter;
    
    //This doesn't seem to actually be used by the game, and is
    //just a leftover.
    if(instance->mFilter == VFILTER_1){
        instance->mVFilter[0] = 0;
        instance->mVFilter[1] = 3;
        instance->mVFilter[2] = 19;
        instance->mVFilter[3] = 20;
        instance->mVFilter[4] = 19;
        instance->mVFilter[5] = 3;
        instance->mVFilter[6] = 0;
        instance->mVFilter[7] = 0;
    }else if(instance->mFilter == VFILTER_2){
        instance->mVFilter[0] = 4;
        instance->mVFilter[1] = 4;
        instance->mVFilter[2] = 15;
        instance->mVFilter[3] = 18;
        instance->mVFilter[4] = 15;
        instance->mVFilter[5] = 4;
        instance->mVFilter[6] = 4;
        instance->mVFilter[7] = 0;
    }else if(instance->mFilter == VFILTER_3){
        instance->mVFilter[0] = 8;
        instance->mVFilter[1] = 8;
        instance->mVFilter[2] = 10;
        instance->mVFilter[3] = 12;
        instance->mVFilter[4] = 10;
        instance->mVFilter[5] = 8;
        instance->mVFilter[6] = 8;
        instance->mVFilter[7] = 0;
    }
}

void CDeviceGX::CDeviceVICb_vtableFunc3(){
    GXFifoObj fifoTemp;
    void* readPtr;
    void* writePtr;

    GXFlush();
    GXGetCPUFifo(&fifoTemp);
    GXGetFifoPtrs(&fifoTemp, &readPtr, &writePtr);
    
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

        GXFifoObj fifoTemp;
        void* readPtr;
        void* writePtr;

        GXGetCPUFifo(&fifoTemp);
        GXGetFifoPtrs(&fifoTemp, &readPtr, &writePtr);
        instance->unk26C = (u32)writePtr;
        instance->unk270 = (u32)readPtr;
        GXEnableBreakPt(writePtr);

        GXSetDrawSync(token1);
        cacheInstance->func_8044BE38();

        if(instance->unk274 == 0){
            UnkClass_804561AC something;
            something.func_804564A0(cacheInstance->func_8044B5B4());
            s16 efbHeight = CDeviceVI::getRenderModeObj()->efbHeight;
            s16 fbWidth = CDeviceVI::getRenderModeObj()->fbWidth;
            CRect16 sp10 = CRect16(0,0,fbWidth,efbHeight);
            something.func_80456DAC(sp10);
        }
    }else{
        func_804475E4(someString);
    }
}

void CDeviceGX::func_8045565C(void* r3){
    if(instance->unk1CC == true){
        GXSetDrawSync(token2);
        someInline(r3);
        while(GXReadDrawSync() != token2){}
    }else{
        someInline(r3);
        GXDrawDone();
        anotherInline();
    }
}

void CDeviceGX::func_8045579C(){
}

int CDeviceGX::func_804557A0(){
    return instance->gxHeapSize;
}

bool CDeviceGX::wkStartup(){
    if(CDeviceVI::func_804482DC()){
        GXInit(mGxHeap, gxHeapSize);

        if(instance->unk1CC == true){
            GXSetDrawDone();
            GXInitFifoBase(&mFifo, mGxHeap, gxHeapSize);
            GXSetCPUFifo(&mFifo);
            GXSetGPFifo(&mFifo);
            GXSetDrawSync(token2);
        }

        cacheInstance->unk50C = 0;
        updateVerticalFilter(VFILTER_NONE);

        GXRenderModeObj* renderMode = CDeviceVI::getRenderModeObj();

        if(renderMode->aa != 0){
            GXSetPixelFmt(GX_PF_RGBA565_Z16, GX_ZC_LINEAR);
        }else{
            GXSetPixelFmt(pixelFormat, GX_ZC_LINEAR);
        }

        cacheInstance->func_8044BE38();
        GXSetDither(GX_DISABLE);

        if(instance->unk1CC == true){
            GXSetDrawSyncCallback(drawSyncCallback);
        }

        return CWorkThread::wkStartup();
    }

    return false;
}

bool CDeviceGX::wkShutdown(){
    if(instance->unk1CC == true){
        GXSetDrawSyncCallback(nullptr);
    }

    if(mWorkThreadList.empty() && CDevice::func_8044D438() && CWorkSystem::getInstance() == nullptr
    && CLib::getInstance() == nullptr){
        return CWorkThread::wkShutdown();
    }

    return false;
}

void CDeviceGX::drawSyncCallback(u16 token){
    if(token == token1){
        func_804475E4(someString);
    }else if(token == token2){
        anotherInline();
    }
}

void CDeviceGX::setValues(GXPixelFmt format, u32 heapSize){
    pixelFormat = format;
    gxHeapSize = heapSize;
}
