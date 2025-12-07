#include "monolib/device.hpp"
#include "monolib/lib.hpp"
#include "monolib/math.hpp"
#include "monolib/work.hpp"

using namespace ml;

float CDeviceGX::lbl_80667F70;
GXPixelFmt CDeviceGX::pixelFormat;
CDeviceGX* CDeviceGX::spInstance;
CGXCache* CDeviceGX::cacheInstance;
int CDeviceGX::gxHeapSize = 0x200000; //2 MB
const char* CDeviceGX::someString = "GPCost";

CDeviceGX::CDeviceGX(const char* pName, CWorkThread* pWorkThread) :
CDeviceBase(pName, pWorkThread, 0),
CDeviceVICb(),
mDevicesInitialized(false),
mGxHeap(nullptr),
mGxHeapEndAddr(nullptr),
unk264(0),
unk26C(0),
unk270(0),
unk274(1),
mFilter(VFILTER_NONE){
    spInstance = this;
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

    spInstance = nullptr;
}

CDeviceGX* CDeviceGX::getInstance(){
    return spInstance;
}

bool CDeviceGX::checkIfRunning(){
    return spInstance->isRunning();
}

void CDeviceGX::setDevicesInitializedFlag(bool state){
    spInstance->mDevicesInitialized = state;
}

bool CDeviceGX::devicesInitialized(){
    return spInstance->mDevicesInitialized == true;
}

void CDeviceGX::updateVerticalFilter(EVerticalFilter filter){
    spInstance->mFilter = filter;
    
    //This doesn't seem to actually be used by the game, and is
    //just a leftover.
    if(spInstance->mFilter == VFILTER_1){
        spInstance->mVFilter[0] = 0;
        spInstance->mVFilter[1] = 3;
        spInstance->mVFilter[2] = 19;
        spInstance->mVFilter[3] = 20;
        spInstance->mVFilter[4] = 19;
        spInstance->mVFilter[5] = 3;
        spInstance->mVFilter[6] = 0;
        spInstance->mVFilter[7] = 0;
    }else if(spInstance->mFilter == VFILTER_2){
        spInstance->mVFilter[0] = 4;
        spInstance->mVFilter[1] = 4;
        spInstance->mVFilter[2] = 15;
        spInstance->mVFilter[3] = 18;
        spInstance->mVFilter[4] = 15;
        spInstance->mVFilter[5] = 4;
        spInstance->mVFilter[6] = 4;
        spInstance->mVFilter[7] = 0;
    }else if(spInstance->mFilter == VFILTER_3){
        spInstance->mVFilter[0] = 8;
        spInstance->mVFilter[1] = 8;
        spInstance->mVFilter[2] = 10;
        spInstance->mVFilter[3] = 12;
        spInstance->mVFilter[4] = 10;
        spInstance->mVFilter[5] = 8;
        spInstance->mVFilter[6] = 8;
        spInstance->mVFilter[7] = 0;
    }
}

void CDeviceGX::CDeviceVICb_UnkVirtualFunc3(){
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

void CDeviceGX::CDeviceVICb_UnkVirtualFunc4(){
    if(spInstance->mDevicesInitialized != true){
        cacheInstance->func_8044BE38();
    }
}

void CDeviceGX::func_80455560(){
    if(spInstance->mDevicesInitialized == true){
        GXFlush();

        GXFifoObj fifoTemp;
        void* readPtr;
        void* writePtr;

        GXGetCPUFifo(&fifoTemp);
        GXGetFifoPtrs(&fifoTemp, &readPtr, &writePtr);
        spInstance->unk26C = (u32)writePtr;
        spInstance->unk270 = (u32)readPtr;
        GXEnableBreakPt(writePtr);

        GXSetDrawSync(token1);
        cacheInstance->func_8044BE38();

        if(spInstance->unk274 == 0){
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
    if(spInstance->mDevicesInitialized == true){
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
    return spInstance->gxHeapSize;
}

bool CDeviceGX::wkStandbyLogin(){
    if(CDeviceVI::func_804482DC()){
        GXInit(mGxHeap, gxHeapSize);

        if(spInstance->mDevicesInitialized == true){
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

        if(spInstance->mDevicesInitialized == true){
            GXSetDrawSyncCallback(drawSyncCallback);
        }

        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CDeviceGX::wkStandbyLogout(){
    if(spInstance->mDevicesInitialized == true){
        GXSetDrawSyncCallback(nullptr);
    }

    if(mChildren.empty() && CDevice::func_8044D438() && CWorkSystem::getInstance() == nullptr
    && CLib::getInstance() == nullptr){
        return CWorkThread::wkStandbyLogout();
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
