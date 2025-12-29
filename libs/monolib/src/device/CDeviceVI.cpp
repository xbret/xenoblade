#include "monolib/device.hpp"
#include "monolib/lib.hpp"
#include "monolib/work.hpp"
#include "monolib/util.hpp"
#include "monolib/math.hpp"
#include <revolution/VI.h>
#include <revolution/GX.h>

using namespace ml;

CDeviceVI* CDeviceVI::spInstance;

const VIGamma CDeviceVI::gammaLevels[] = {
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

GXRenderModeObj* CDeviceVI::renderModes[] = {
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
CPnt16 CDeviceVI::lbl_8065A6B8[] = {
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

bool CDeviceVI::sUseStaticHandle;

CDeviceVI::CDeviceVI(const char* pName, CWorkThread* pWorkThread) : CDeviceBase(pName, pWorkThread, 8),
UnkClass_80447FDC(),
mViFlags(0),
mTvFormat(VI_TVFORMAT_NTSC),
mGammaLevel(VI_GM_0_9),
mScanMode(VI_SCANMODE_INT),
mDimmingCount(0),
mViXOrigin(0),
mViYOrigin(0),
mViWidth(0),
mViHeight(0),
mXfbBuffersPtr(nullptr),
unk284(2),
unk294(0),
unk298(0),
unk29C(0),
unk2A4(0),
mVisPerFrame(VI_PER_FRAME),
unk2AC(0),
mNewVisPerFrame(0),
unk2B5(1),
mTargetFramerate(TARGET_FRAMERATE),
mSecPerFrame(1.0f/TARGET_FRAMERATE) {
    spInstance = this;
    unk2A0.set(0,0);
    mtl::ALLOC_HANDLE handle = sUseStaticHandle ? mtl::MemManager::getHandleStatic() : CDevice::getDevSys1Handle();
    mXfbBuffersPtr = new (handle, 32) u8[getXfbBuffersSize()];

    std::memcpy(&mMainRenderMode, &GXNtsc480Int, sizeof(GXRenderModeObj));
    setFlag0(true);
    setFlag4(true);
    mCallbackList.reserve(mAllocHandle, 16);

    UNKTYPE* ptr = static_cast<UnkClass_80447FDC*>(this);
    CErrorWii::entrySomething(ptr);
}

CDeviceVI::~CDeviceVI(){
    UNKTYPE* ptr = static_cast<UnkClass_80447FDC*>(this);
    CErrorWii::removeSomething(ptr);

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

void CDeviceVI::func_804483DC(u32 gamma){
    if(spInstance != nullptr){
        u32 val = gamma;
        if(val >= VI_GM_3_0) val = VI_GM_2_9;
        spInstance->mGammaLevel = val;
    }
}

GXRenderModeObj* CDeviceVI::getRenderModeObj(){
    return &spInstance->mMainRenderMode;
}

u32 CDeviceVI::getTargetFramerate(){
    return spInstance->mTargetFramerate;
}

float CDeviceVI::getSecPerFrame(){
    return spInstance->mSecPerFrame;
}

u32 CDeviceVI::func_80448420(){
    return spInstance->unk2AC;
}

u32 CDeviceVI::getVisPerFrame(){
    return spInstance->mVisPerFrame;
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

bool CDeviceVI::unkInline1(){
    if(spInstance == nullptr) return false;
    return (spInstance->mViFlags >> VI_FLAG_31) & 1;
}

void CDeviceVI::copyEfb(u32 index){
    CDeviceGX::copyEfb(spInstance->mFrameBufferPtrArray[index]);
}

void CDeviceVI::setNextFrameBuffer(){
    VISetNextFrameBuffer(mFrameBufferPtrArray[unk294]);
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

/* Initializes the base render mode struct, which gets modified/copied every frame to the actually used
struct through GXAdjustForOverscan. */
bool CDeviceVI::initBaseRenderModeStruct(u32 renderModeIndex, u32 viWidth){
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

        //If the tv format is EURGB60, change it to PAL if the scan mode isn't progressive
        //Why is this done?
        if(tvFormat == TV_FORMAT_EURGB60 && instance->mScanMode != VI_SCANMODE_PROG){
            tvFormat = TV_FORMAT_PAL;
        }

        u32 newIndex = tvFormat + (scanMode * 4);
        GXRenderModeObj* renderMode = renderModes[newIndex];

        //Make sure the render mode is valid
        if(renderMode == nullptr){
            return false;
        }

        //Copy the render mode struct
        std::memcpy(&spInstance->mBaseRenderMode, renderMode, sizeof(GXRenderModeObj));

        //TODO: replace raw values with constant variables/defines
        u16 width = XFB_WIDTH;
        u32 height = 456;

        //Why not just get the instance variable once???
        spInstance->mBaseRenderMode.fbWidth = width;
        spInstance->mBaseRenderMode.efbHeight = height;
        spInstance->mBaseRenderMode.xfbHeight = height;
        spInstance->mBaseRenderMode.viHeight = height;

        if(viWidth == 0){
            viWidth = isWideAspectRatio() ? 686 : 670;
        }else{
            //???
            spInstance->mBaseRenderMode.viWidth = viWidth;
        }

        spInstance->mBaseRenderMode.viWidth = viWidth;

        u16 xOffset = (720 - spInstance->mBaseRenderMode.viWidth)/2;
        spInstance->mBaseRenderMode.viXOrigin = xOffset;
        u16 yOffset = (480 - spInstance->mBaseRenderMode.xfbHeight)/2;
        spInstance->mBaseRenderMode.viYOrigin = yOffset;

        spInstance->unk2A0 = lbl_8065A6B8[newIndex];
        spInstance->setFlag(VI_FLAG_3, true);
    }

    return true;
}

inline void CDeviceVI::unkInline3(u32 index, u32 val){
    if((val & 0x1F) != 0){
        val = val + 32 - (val & 0x1F);
    }

    mFrameBufferPtrArray[index] = (void*)val;
}

bool CDeviceVI::updateMainRenderModeStruct(){
    if(checkFlag(VI_FLAG_3)){
        GXAdjustForOverscan(&mBaseRenderMode, &mMainRenderMode, unk2A0.x, unk2A0.y);
        VIConfigure(&mMainRenderMode);

        setFlag(VI_FLAG_3, false);
        mViXOrigin = mMainRenderMode.viXOrigin;
        mViYOrigin = mMainRenderMode.viYOrigin;
        mViWidth = mMainRenderMode.viWidth;
        mViHeight = mMainRenderMode.viHeight;
        unk29C = (((mMainRenderMode.fbWidth + 15) & 0xFFF0) * mMainRenderMode.xfbHeight) * 2;
        unkInline3(0, (u32)mXfbBuffersPtr);

        for(u32 i = 1; i < unk284; i++){
            u32 temp1 = unk29C;
            u32 temp = (u32)mFrameBufferPtrArray[i - 1];
            unkInline3(i, temp + temp1);
        }

        setNextFrameBuffer();
        setFlag(VI_FLAG_2, false);

        VIFlush();
        VIWaitForRetrace();
        VIWaitForRetrace();

        return true;
    }

    return false;
}

void CDeviceVI::wkUpdate(){
    VISetGamma(gammaLevels[mGammaLevel]);

    if(checkFlag(VI_FLAG_3)){
        VISetBlack(VI_TRUE);
    }else{
        VISetBlack(checkFlag(VI_FLAG_0));
    }

    VIFlush();
    updateMainRenderModeStruct();
}

//Calls the specified callback for all entries in the callback list.
void CDeviceVI::cb(CDeviceVICb::VICallback callback){
    if(!unkInline1()){
        for(reslist<CDeviceVICb*>::iterator it = spInstance->mCallbackList.begin(); it != spInstance->mCallbackList.end(); it++){
            CDeviceVICb* viCb = *it;
            switch(callback){
                case CDeviceVICb::VI_CALLBACK_BEFORE_DRAW_DONE:
                    viCb->viBeforeDrawDone();
                    break;
                case CDeviceVICb::VI_CALLBACK_AFTER_DRAW_DONE:
                    viCb->viAfterDrawDone();
                    break;
                case CDeviceVICb::VI_CALLBACK_BEGIN_FRAME:
                    viCb->viBeginFrame();
                    break;
            }
        }
    }
}

void CDeviceVI::beginFrame(){
    if(!spInstance->isRunning() || spInstance->isThreadFlag0() || CDeviceGX::getInstance() == nullptr){
        return;
    }

    //Call the frame begin callback
    cb(CDeviceVICb::VI_CALLBACK_BEGIN_FRAME);

    //Update the fps values if a new VIs/frame value is set. This doesn't get used in release.
    if(spInstance->mNewVisPerFrame != 0){
        spInstance->mVisPerFrame = spInstance->mNewVisPerFrame;
        spInstance->mNewVisPerFrame = 0;
        spInstance->mTargetFramerate = isTvFormatPal() ? 50/spInstance->mVisPerFrame : 60/spInstance->mVisPerFrame;
        spInstance->mSecPerFrame = 1.0f/spInstance->mTargetFramerate;
    }

    //Draw the frame
    CDeviceGX::drawFrame();

}

//Waits for drawing for the current frame to be finished? (not entirely sure)
void CDeviceVI::waitForDrawDone(){
    /* If the GX device is fully initialized, wait until the set sync token for the EFB -> XFB copy
    is read back, which signals that the copy has finished/end of drawing. Otherwise, just wait for
    drawing to be done, just like in EFB copy function in CDeviceGX. */
    if(CDeviceGX::devicesInitialized() != false){
        while(GXReadDrawSync() != CDeviceGX::token2){
        }
    }else{
        GXDrawDone();
    }
}

void CDeviceVI::endFrame(){
    if(!spInstance->isRunning() || spInstance->isThreadFlag0() || CDeviceGX::getInstance() == nullptr){
        return;
    }

    //Call the pre-draw done callback
    //Nothing overrides this, so this does nothing
    cb(CDeviceVICb::VI_CALLBACK_BEFORE_DRAW_DONE);

    CDeviceClock::func_8044DFF4();

    //Copy the EFB to the current nonactive framebuffer, and wait until drawing is done
    if(CDeviceGX::devicesInitialized()){
        spInstance->copyEfb(spInstance->unk298);
    }else{
        spInstance->copyEfb(spInstance->unk294);
    }

    //Call the post-draw done callback
    cb(CDeviceVICb::VI_CALLBACK_AFTER_DRAW_DONE);

    if(!checkFlag4()){
        //Wait for remaining retraces
        while(VIGetRetraceCount() - spInstance->unk2A4 < spInstance->mVisPerFrame - 1){
        }
    }

    spInstance->setNextFrameBuffer();

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

//This is meant to run code when preretrace happens, but it got stubbed for some reason.
bool CDeviceVI::onPreRetrace(){
    return true;
}

/* Utility functions to convert the tv format/scan mode to the right values for the render
    mode table index. */

u32 CDeviceVI::getTvFormatIndex() const {
    u32 format = mTvFormat;
    TVFormat result = TV_FORMAT_NTSC;
    if(format == VI_TVFORMAT_PAL) result = TV_FORMAT_PAL;
    else if(format == VI_TVFORMAT_MPAL) result = TV_FORMAT_MPAL;
    else if(format == VI_TVFORMAT_EURGB60) result = TV_FORMAT_EURGB60;
    return (u32)result;
}

u32 CDeviceVI::getScanModeIndex() const {
    /* There isn't a check for progressive soft, so the index for interlaced will be returned in that case.
    Is this intentional? */
    u32 mode = mScanMode;
    u32 result = (u32)SCAN_MODE_INT << 4;
    if(mode == VI_SCANMODE_DS) result = (u32)SCAN_MODE_DS << 4;
    else if(mode == VI_SCANMODE_PROG) result = (u32)SCAN_MODE_PROG << 4;
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

        initBaseRenderModeStruct(calculateRenderModeIndex(), 0);
        updateMainRenderModeStruct();

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

void CDeviceVI::setUseStaticHandle(bool state){
    sUseStaticHandle = state;
}

bool CDeviceVI::usingStaticHandle(){
    return sUseStaticHandle;
}

void CDeviceVI::UnkClass_80447FDC_UnkVirtualFunc1(){
    setFlag(VI_FLAG_31, true);
}
