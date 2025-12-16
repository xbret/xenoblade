#include "monolib/device.hpp"
#include "monolib/lib.hpp"
#include "monolib/work.hpp"
#include "monolib/math.hpp"
#include <revolution/VI.h>
#include <string.h>

using namespace ml;

CDeviceVI* CDeviceVI::spInstance;

static const VIGamma gammaLevels[] = {
    VI_GM_0_1,
    VI_GM_0_2,
    VI_GM_0_3,
    VI_GM_0_4,
    VI_GM_0_5,
    VI_GM_0_6,
    VI_GM_0_7,
    VI_GM_0_8,
    VI_GM_0_9,
    VI_GM_1_0,
    VI_GM_1_1,
    VI_GM_1_2,
    VI_GM_1_3,
    VI_GM_1_4,
    VI_GM_1_5,
    VI_GM_1_6,
    VI_GM_1_7,
    VI_GM_1_8,
    VI_GM_1_9,
    VI_GM_2_0,
    VI_GM_2_1,
    VI_GM_2_2,
    VI_GM_2_3,
    VI_GM_2_4,
    VI_GM_2_5,
    VI_GM_2_6,
    VI_GM_2_7,
    VI_GM_2_8,
    VI_GM_2_9,
    VI_GM_3_0
};

GXRenderModeObj* renderModes[] = {
    &GXNtsc240Ds,
    &GXNtsc480Int,
    &GXNtsc480Prog,
    &GXNtsc480ProgSoft,
    &GXPal264Ds,
    &GXPal528Int,
    nullptr, //GXPal528Prog
    nullptr, //GXPal528ProgSoft
    &GXEurgb60Hz240Ds,
    &GXEurgb60Hz480Int,
    &GXEurgb60Hz480Prog,
    &GXEurgb60Hz480ProgSoft,
    &GXMpal240Ds,
    &GXMpal480Int,
    &GXMpal480Prog,
    &GXMpal480ProgSoft
};

//Each entry is related to the above render modes somehow
static CPnt16 lbl_8065A6B8[] = {
    CPnt16(0,8),
    CPnt16(0,0),
    CPnt16(0,0),
    CPnt16(0,16),
    CPnt16(0,8),
    CPnt16(0,16),
    CPnt16(0,0),
    CPnt16(0,0),
    CPnt16(0,8),
    CPnt16(0,16),
    CPnt16(0,16),
    CPnt16(0,16),
    CPnt16(0,8),
    CPnt16(0,16),
    CPnt16(0,16),
    CPnt16(0,16)
};

bool CDeviceVI::lbl_80667F2C;

CDeviceVI::CDeviceVI(const char* pName, CWorkThread* pWorkThread) :
CDeviceBase(pName, pWorkThread, 8),
UnkClass_80447FDC(),
mViFlags(0),
mTvFormat(0),
unk1F4(9),
mScanMode(0),
mDimmingCount(0),
unk278(0),
unk27A(0),
unk27C(0),
unk27E(0),
mXfbBuffersPtr(nullptr),
unk284(2),
unk294(0),
unk298(0),
unk29C(0),
unk2A4(0),
unk2A8(2),
unk2AC(0),
unk2B0(0),
unk2B5(1),
unk2B8(30),
unk2BC(1.0f/30.0f) {
    spInstance = this;
    unk2A0 = CPnt16(0,0);
    mXfbBuffersPtr = (u8*)mtl::MemManager::allocate_array_ex(getXfbBuffersSize(),
     lbl_80667F2C ? mtl::MemManager::getHandleStatic() : CDevice::func_8044D058(), 32);

    std::memcpy(&mRenderMode1, &GXNtsc480Int, sizeof(GXRenderModeObj));
    setFlag0(true);
    setFlag4(true);
    mCallbackList.reserve(mAllocHandle, 16);

    UNKTYPE* ptr = static_cast<UnkClass_80447FDC*>(this);
    func_804EE194(ptr);
}

CDeviceVI::~CDeviceVI(){
    UNKTYPE* ptr = static_cast<UnkClass_80447FDC*>(this);
    func_804EE1B0(ptr);

    if(mXfbBuffersPtr != nullptr){
        delete[](mXfbBuffersPtr);
        mXfbBuffersPtr = nullptr;
    }

    spInstance = nullptr;
}

CDeviceVI* CDeviceVI::getInstance(){
    return spInstance;
}

void CDeviceVI::setFlag4(bool state){
    spInstance->setFlag(VI_FLAG_4, state);
}

bool CDeviceVI::checkFlag4(){
    return spInstance->checkFlag(VI_FLAG_4);
}

bool CDeviceVI::checkFlag2(){
    return spInstance->checkFlag(VI_FLAG_2);
}

bool CDeviceVI::func_804482DC(){
    return spInstance->isRunning() && !checkFlag2();
}

void CDeviceVI::setFlag0(bool state){
    spInstance->setFlag(VI_FLAG_0, state);
}

bool CDeviceVI::checkFlag0(){
    return spInstance->checkFlag(VI_FLAG_0);
}

void CDeviceVI::func_804483DC(u32 r3){
    if(spInstance != nullptr){
        u32 val = r3;
        if(val >= 30) val = 29;
        spInstance->unk1F4 = val;
    }
}

GXRenderModeObj* CDeviceVI::getRenderModeObj(){
    return &spInstance->mRenderMode1;
}

u32 CDeviceVI::func_80448408(){
    return spInstance->unk2B8;
}

float CDeviceVI::func_80448414(){
    return spInstance->unk2BC;
}

u32 CDeviceVI::func_80448420(){
    return spInstance->unk2AC;
}

u32 CDeviceVI::func_8044842C(){
    return spInstance->unk2A8;
}

bool CDeviceVI::entryCb(CDeviceVICb* entry){
    spInstance->mCallbackList.push_back(entry);
    return true;
}

bool CDeviceVI::removeCb(CDeviceVICb* entry){
    spInstance->mCallbackList.remove(entry);
    return true;
}

bool CDeviceVI::isWideAspectRatio(){
    return CDeviceSC::isWideAspectRatio();
}

bool CDeviceVI::isTvFormatPal(){
    return VIGetTvFormat() == VI_TVFORMAT_PAL;
}

u32 CDeviceVI::getXfbBuffersSize(){
    //2 bytes per pixel
    return XFB_WIDTH * XFB_HEIGHT * NUM_XFB_BUFFERS * 2;
}

/* Returns the scale factor for the screen width based on the current aspect ratio mode.
This is used to handle squishing everything horizontally to fit into 4:3 so that it looks
correct when stretched back to anamorphic 16:9. */
float CDeviceVI::getWidthScale(){
    float scale;

    if(isWideAspectRatio()){
        scale = 4.0f/3.0f; //If in 16:9 mode, width gets scaled by 4/3 ((4/3)^2 * height = 16/9 * height)
    }else{
        scale = 1.0f; //Otherwise, no scaling
    }

    return scale;
}

//TODO: replace raw values with constant variables/defines
inline void CDeviceVI::setupRenderMode2(u32 viWidth){
    u16 width = 640;
    u32 height = 456;

    //Why not just get the instance variable once???
    spInstance->mRenderMode2.fbWidth = width;
    spInstance->mRenderMode2.efbHeight = height;
    spInstance->mRenderMode2.xfbHeight = height;
    spInstance->mRenderMode2.viHeight = height;

    if(viWidth == 0){
        viWidth = isWideAspectRatio() ? 686 : 670;
    }else{
        //???
        spInstance->mRenderMode2.viWidth = viWidth;
    }

    spInstance->mRenderMode2.viWidth = viWidth;
            
    u16 xOffset = (720 - spInstance->mRenderMode2.viWidth)/2;
    spInstance->mRenderMode2.viXOrigin = xOffset;
    u16 yOffset = (480 - spInstance->mRenderMode2.xfbHeight)/2;
    spInstance->mRenderMode2.viYOrigin = yOffset;
}

bool CDeviceVI::func_8044857C(u32 renderModeIndex, u32 viWidth){
    if(renderModeIndex != 0){
        //Get the converted tv format/scan mode from the index value
        u32 scanMode = renderModeIndex & 0xF;
        u32 tvFormat = (renderModeIndex >> 4) & 0xF;

        //Has to be be like this to match for some reason :/
        CDeviceVI* instance = spInstance;

        //Return if either the scan mode/tv format values are invalid
        if(scanMode >= NUM_SCAN_MODE){
            return false;
        }
        
        if(tvFormat >= NUM_TV_FORMAT){
            return false;
        }

        //If the tv format is EURGB60, change it to PAL if the scan mode isn't progressive.
        //Why is this done?
        if(tvFormat == TV_FORMAT_EURGB60 && instance->mScanMode != VI_SCANMODE_PROG){
            tvFormat = TV_FORMAT_PAL;
        }

        u32 newIndex = tvFormat + (scanMode * 4);
        GXRenderModeObj* renderMode = renderModes[newIndex];

        //Check for the two empty render mode slots
        if(renderMode == nullptr){
            return false;
        }

        std::memcpy(&spInstance->mRenderMode2, renderMode, sizeof(GXRenderModeObj));

        setupRenderMode2(viWidth);

        spInstance->unk2A0 = lbl_8065A6B8[newIndex];
        spInstance->setFlag(VI_FLAG_3, true);
    }

    return true;
}

void CDeviceVI::wkUpdate(){
    VISetGamma(gammaLevels[unk1F4]);

    if(checkFlag(VI_FLAG_3)){
        VISetBlack(VI_TRUE);
    }else{
        VISetBlack(checkFlag(VI_FLAG_0));
    }

    VIFlush();
    func_804486E4();
}

//Calls the specified callback for all entries in the callback list.
void CDeviceVI::runViCallback(CDeviceVICb::VICallback callback){
    if(!unkInline1()){
        for(reslist<CDeviceVICb*>::iterator it = spInstance->mCallbackList.begin(); it != spInstance->mCallbackList.end(); it++){
            CDeviceVICb* viCb = *it;
            switch(callback){
                case CDeviceVICb::VI_CALLBACK_2:
                    viCb->CDeviceVICb_UnkVirtualFunc2();
                    break;
                case CDeviceVICb::VI_CALLBACK_3:
                    viCb->CDeviceVICb_UnkVirtualFunc3();
                    break;
                case CDeviceVICb::VI_CALLBACK_4:
                    viCb->CDeviceVICb_UnkVirtualFunc4();
                    break;
            }
        }
    }
}

void CDeviceVI::func_80448878(){
    if(!spInstance->isRunning() || spInstance->isThreadFlag0() || CDeviceGX::getInstance() == nullptr){
        return;
    }

    runViCallback(CDeviceVICb::VI_CALLBACK_4);

    if(spInstance->unk2B0 != 0){
        spInstance->unk2A8 = spInstance->unk2B0;
        spInstance->unk2B0 = 0;
        spInstance->unk2B8 = isTvFormatPal() ? 50/spInstance->unk2A8 : 60/spInstance->unk2A8;
        spInstance->unk2BC = 1.0f/spInstance->unk2B8;
    }

    CDeviceGX::func_80455560();

}

void CDeviceVI::func_80448A44(){
    if(CDeviceGX::devicesInitialized() != false){
        while(GXReadDrawSync() != drawSyncToken){
        }
    }else{
        GXDrawDone();
    }
}

bool CDeviceVI::unkInline1(){
    if(spInstance == nullptr) return false;
    return (spInstance->mViFlags >> VI_FLAG_31) & 1;
}

void CDeviceVI::unkInline2(u32 index){
    CDeviceGX::func_8045565C(spInstance->mFrameBufferPtrArray[index]);
}


void CDeviceVI::func_80448A84(){
    if(!spInstance->isRunning() || spInstance->isThreadFlag0() || CDeviceGX::getInstance() == nullptr){
        return;
    }

    runViCallback(CDeviceVICb::VI_CALLBACK_2);

    CDeviceClock::func_8044DFF4();

    if(CDeviceGX::devicesInitialized()){
        spInstance->unkInline2(spInstance->unk298);
    }else{
        spInstance->unkInline2(spInstance->unk294);
    }

    runViCallback(CDeviceVICb::VI_CALLBACK_3);

    if(!checkFlag4()){
        while(VIGetRetraceCount() - spInstance->unk2A4 < spInstance->unk2A8 - 1){
        }
    }

    VISetNextFrameBuffer(spInstance->mFrameBufferPtrArray[spInstance->unk294]);

    //TODO: this feel like it should be an inline, but the instance accesses don't let it work :p
    spInstance->unk298 = spInstance->unk294;

    if(++spInstance->unk294 >= spInstance->unk284){
        spInstance->unk294 = 0;
    }

    VIFlush();

    if(!checkFlag4()){
        VIWaitForRetrace();
    }

    //Also feels like an inline
    spInstance->unk2AC = VIGetRetraceCount() - spInstance->unk2A4;
    spInstance->unk2A4 = VIGetRetraceCount();

}

u32 CDeviceVI::func_80448D10(){
    return 1;
}

/* Utility functions to convert the tv format/scan mode to the right values for the render
    mode table index. */

u32 CDeviceVI::getTvFormatIndex() const {
    TVFormat result = TV_FORMAT_NTSC;
    if(mTvFormat == VI_TVFORMAT_PAL) result = TV_FORMAT_PAL;
    else if(mTvFormat == VI_TVFORMAT_MPAL) result = TV_FORMAT_MPAL;
    else if(mTvFormat == VI_TVFORMAT_EURGB60) result = TV_FORMAT_EURGB60;
    return (u32)result;
}

u32 CDeviceVI::getScanModeIndex() const {
    /* There isn't a check for progressive soft, so the index for interlaced will be returned in that case.
    Is this intentional? */
    u32 result = (u32)SCAN_MODE_INT << 4;
    if(mScanMode == VI_SCANMODE_DS) result = (u32)SCAN_MODE_DS << 4;
    else if(mScanMode == VI_SCANMODE_PROG) result = (u32)SCAN_MODE_PROG << 4;
    return result;
}

/* Calcuates the render mode table index from the tv format and scan mode values.
Bits 0-3: tv format, bits 4-7: scan mode */
u32 CDeviceVI::calculateRenderModeIndex() const {
    u32 tvFormatIndex = getTvFormatIndex();
    u32 scanModeIndex = getScanModeIndex();

    return tvFormatIndex | scanModeIndex;
}

bool CDeviceVI::wkStandbyLogin(){
    if(CDeviceSC::func_80447C60() != false){
        //Initialize VI
        VIInit();
        u32 dtvStatus = VIGetDTVStatus(); //unused
        mDimmingCount = VIGetDimmingCount();
        mScanMode = VIGetScanMode();
        mTvFormat = VIGetTvFormat();
        func_8044857C(calculateRenderModeIndex(), 0);
        func_804486E4();
        VIEnableDimming(VI_ENABLE);
        VISetTrapFilter(VI_FALSE);
        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CDeviceVI::wkStandbyLogout(){
    VISetBlack(VI_TRUE);
    VIFlush();
    if(mChildren.empty()){
        if(CDeviceGX::getInstance() == nullptr && CDevice::func_8044D438() &&
        CWorkSystem::getInstance() == nullptr && CLib::getInstance() == nullptr){
            return CWorkThread::wkStandbyLogout();
        }
    }

    return false;
}

void CDeviceVI::func_80448E78(bool state){
    lbl_80667F2C = state;
}

bool CDeviceVI::func_80448E80(){
    return lbl_80667F2C;
}

void CDeviceVI::UnkClass_80447FDC_UnkVirtualFunc1(){
    setFlag(VI_FLAG_31, true);
}
