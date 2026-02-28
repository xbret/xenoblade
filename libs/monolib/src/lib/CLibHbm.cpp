#include "monolib/lib/CLibHbm.hpp"
#include "monolib/lib/CLibHbmControl.hpp"
#include "monolib/device.hpp"
#include "monolib/scn.hpp"
#include <cstring>

CLibHbm* CLibHbm::spInstance;
u32 CLibHbm::lbl_806660E0 = -1;
bool CLibHbm::lbl_80667FD4;
TPLPalette* CLibHbm::spTplData;
bool CLibHbm::lbl_80667FDC;
bool CLibHbm::lbl_80667FDD;
GXTexObj CLibHbm::sTplTexObj;

CLibHbm::CLibHbm(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, MAX_CHILD),
unk1C4(mtl::INVALID_HANDLE),
unk1C8(0),
unk1CC(0),
unk1D0(0),
unk1D4(0),
unk1D8(0),
unk1DC(0),
unk1E0(0),
unk1E4(0),
unk1E8(0),
unk22C(0),
mpHbmArcFileHandle(0),
unk234(0),
unk238(),
unk25C(0),
unk260(-1),
unk264(0),
unk265(0){
    spInstance = this;
    mType = THREAD_CLIBHBM;
}

CLibHbm::~CLibHbm(){
    spInstance = nullptr;
}

CLibHbm* CLibHbm::getInstance(){
    return spInstance;
}

void CLibHbm::func_8045D45C(u32 r3){
    if(r3 + 1 <= 4) lbl_806660E0 = r3;
}

void CLibHbm::func_8045D470(bool r3){
    lbl_80667FDD = r3;
}

bool CLibHbm::func_8045D478(){
    return lbl_80667FDC;
}

void CLibHbm::loadTplImage(void* pTplData){
    if(spTplData == nullptr){
        TPLPalette* tpl = (TPLPalette*)pTplData;
        spTplData = tpl;

        if(tpl != nullptr){
            TPLBind(tpl);
            TPLGetGXTexObjFromPalette(spTplData, &sTplTexObj, 0);
            GXInitTexObjLOD(&sTplTexObj, GX_LINEAR, GX_LINEAR, 0, 0, 0,
            GX_FALSE, GX_FALSE, GX_ANISO_1);
        }
    }
}

void CLibHbm::removeTplImage(){
    CDeviceVI::waitForDrawDone();
    spTplData = nullptr;
}

void CLibHbm::addCallback(IHBMCallback* r3){
    CLibHbm* instance = spInstance;
    if(instance == nullptr) return;

    if(instance->unk238.mCount < 8){
        instance->unk238.push_back(r3);
    }
}

//TODO: same as the erase function in CErrorWii
void CLibHbm::removeCallback(IHBMCallback* r3){
    if(spInstance == nullptr) return;

    for(int i = 0; i < spInstance->unk238.size(); i++){
        if(spInstance->unk238.mArray[i] == r3){
            while(i < spInstance->unk238.mCount - 1){
                spInstance->unk238.mArray[i] = spInstance->unk238.mArray[i + 1];
                i++;
            }

            spInstance->unk238.mCount--;
            return;
        }
    }

}

void CLibHbm::func_8045D5C8(bool r3){
    lbl_80667FD4 = r3;
}

void CLibHbm::destroy(){
    CDeviceVI::waitForDrawDone();

    //TODO: custom delete operator?
    if(mpHbmArcFileHandle != nullptr){
        CDeviceFile::cancel(mpHbmArcFileHandle);
        mpHbmArcFileHandle = nullptr;
    }

    DELETE_OBJ(unk1E4);
    DELETE_OBJ(unk1E8);
    unk1D0 = 0;
    unk1D8 = 0;
    unk1DC = 0;
    unk1CC = 0;
    unk1D4 = 0;
    DELETE_OBJ(unk1E0);

    unk1C4 = mtl::INVALID_HANDLE;

    if(unk22C & 0x20){
        func_804900A0(0);
        unk22C &= ~0x20;
    }

    unk22C &= ~0xC0;
}

bool CLibHbm::func_8045D6AC(){
    return spInstance->unk1E0 != nullptr;
}

bool CLibHbm::func_8045D6C4(){
    return (spInstance->unk22C >> 6) & 1;
}

void CLibHbm::loadHbmArcFile(){
    spInstance->unk22C &= ~0x40;

    CDeviceVI::waitForDrawDone();
    func_804900A0(1);
    spInstance->unk22C |= 0x20;
    spInstance->unk1C4 = func_80490098();

    if(spInstance->unk1C4 == mtl::INVALID_HANDLE){
        spInstance->unk1C4 = mtl::MemManager::getHandleMEM2();
    }

    if(CDeviceFile::getFileSize("hbm.arc") > 0){
        CFileHandle* handle = CDeviceFile::readFile(spInstance->unk1C4, "hbm.arc",
        spInstance, 0, 0);
        spInstance->mpHbmArcFileHandle = handle;
        CDeviceFile::func_8044F154(spInstance->mpHbmArcFileHandle, 0);
    }
}

bool CLibHbm::isInitialized(){
    return spInstance->isRunning();
}

float CLibHbm::getFrameDeltaFactor(){
    return CDeviceVI::isTvFormatPal() ? 1.2f : 1;
}

void CLibHbm::initHbmInfoStruct(){
    std::memset(&spInstance->unk1EC, 0, sizeof(HBMDataInfo));
    spInstance->unk1EC.region = CDeviceSC::getLanguage();
    spInstance->unk1EC.layoutBuf = spInstance->unk1CC;
    spInstance->unk1EC.spkSeBuf = spInstance->unk1D0;
    spInstance->unk1EC.msgBuf = spInstance->unk1D8;
    spInstance->unk1EC.configBuf = spInstance->unk1DC;
    spInstance->unk1EC.configBufSize = spInstance->unk234;

    spInstance->unk1EC.sound_callback = nullptr;
    spInstance->unk1EC.backFlag = false;
    spInstance->unk1EC.cursor = false;

    spInstance->unk1EC.adjust.x = CDeviceVI::isWideAspectRatio() ? 1.3684211f : 1;
    spInstance->unk1EC.adjust.y = 1;

    //float f31 = CDeviceVI::isTvFormatPal() ? 1.2f : 1;
    spInstance->unk1EC.frameDelta = CDeviceVI::getVisPerFrame() * getFrameDeltaFactor();

    spInstance->unk1EC.mem = spInstance->unk1E0;
    spInstance->unk1EC.memSize = 0x80000;
    spInstance->unk1EC.pAllocator = nullptr;
    spInstance->unk1EC.messageFlag = false;
}

void CLibHbm::initHbm(){
    //Initialize the HBM info struct
    initHbmInfoStruct();

    HBMCreate(&spInstance->unk1EC);
    HBMCreateSound(spInstance->unk1D4, spInstance->unk1E4, 0x18700);
    HBMInit();
    HBMSetAdjustFlag(true);

    spInstance->unk22C |= 0x80;

    //TODO: probably fakematch
    for(u32 i = 0; (int)i < spInstance->unk238.size(); i++){
        spInstance->unk238[i]->IHBMCallback_UnkInline2();
    }
}

void CLibHbm::deleteHbm(){
    if(spInstance->unk22C & 0x80){
        HBMDeleteSound();
        HBMDelete();
    }

    spInstance->destroy();

    //TODO: probably fakematch
    for(u32 i = 0; (int)i < spInstance->unk238.size(); i++){
        spInstance->unk238[i]->IHBMCallback_UnkInline3();
    }
}

bool CLibHbm::isHbmControlInitialized(){
    return CLibHbmControl::getInstance() != nullptr;
}

bool CLibHbm::func_8045DE00(){
    return CLibHbmControl::func_8045E530();
}

void CLibHbm::func_8045E0CC(){
}
