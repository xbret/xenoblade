#include "monolib/lib/CLibHbm.hpp"
#include "monolib/lib/CLibHbmControl.hpp"
#include "monolib/core.hpp"
#include "monolib/device.hpp"
#include "monolib/scn.hpp"
#include <revolution/ARC.h>
#include <cstring>

CLibHbm* CLibHbm::spInstance;
int CLibHbm::lbl_806660E0 = -1;
bool CLibHbm::lbl_80667FD4;
TPLPalette* CLibHbm::spTplData;
bool CLibHbm::lbl_80667FDC;
bool CLibHbm::lbl_80667FDD;
GXTexObj CLibHbm::sTplTexObj;

CLibHbm::CLibHbm(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, MAX_CHILD),
mHandle(mtl::INVALID_HANDLE),
unk1C8(0),
mpLayoutBuf(nullptr),
mpSpkSeBuf(nullptr),
mpHbmSeBuf(nullptr),
mpMsgBuf(nullptr),
mpConfigBuf(nullptr),
mpHbmMem(nullptr),
mpHbmSndMem(nullptr),
unk1E8(nullptr),
mFlags(0),
mpHbmArcFileHandle(nullptr),
mConfigBufSize(0),
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

    DELETE_OBJ(mpHbmSndMem);
    DELETE_OBJ(unk1E8);
    mpSpkSeBuf = 0;
    mpMsgBuf = 0;
    mpConfigBuf = 0;
    mpLayoutBuf = 0;
    mpHbmSeBuf = 0;
    DELETE_OBJ(mpHbmMem);

    mHandle = mtl::INVALID_HANDLE;

    if(mFlags & 0x20){
        func_804900A0(0);
        mFlags &= ~0x20;
    }

    mFlags &= ~0xC0;
}

bool CLibHbm::isHbmMemPointerValid(){
    return spInstance->mpHbmMem != nullptr;
}

bool CLibHbm::checkFlag6(){
    return (spInstance->mFlags >> 6) & 1;
}

void CLibHbm::loadHbmArcFile(){
    spInstance->mFlags &= ~0x40;

    CDeviceVI::waitForDrawDone();
    func_804900A0(1);
    spInstance->mFlags |= 0x20;
    spInstance->mHandle = func_80490098();

    if(spInstance->mHandle == mtl::INVALID_HANDLE){
        spInstance->mHandle = mtl::MemManager::getHandleMEM2();
    }

    if(CDeviceFile::getFileSize("hbm.arc") > 0){
        CFileHandle* handle = CDeviceFile::readFile(spInstance->mHandle, "hbm.arc",
        spInstance, 0, 0);
        spInstance->mpHbmArcFileHandle = handle;
        CDeviceFile::func_8044F154(spInstance->mpHbmArcFileHandle, 0);
    }
}

bool CLibHbm::isInitialized(){
    return spInstance->isRunning();
}

void CLibHbm::wkUpdate(){
    if(CDesktop::getInstance() != nullptr){
        if(lbl_806660E0 >= 0){
            
        }
    }
}

float CLibHbm::getFrameDeltaFactor(){
    return CDeviceVI::isTvFormatPal() ? 60.0f/50.0f : 1;
}

void CLibHbm::initHbmInfoStruct(){
    std::memset(&spInstance->unk1EC, 0, sizeof(HBMDataInfo));
    spInstance->unk1EC.region = CDeviceSC::getLanguage();
    spInstance->unk1EC.layoutBuf = spInstance->mpLayoutBuf;
    spInstance->unk1EC.spkSeBuf = spInstance->mpSpkSeBuf;
    spInstance->unk1EC.msgBuf = spInstance->mpMsgBuf;
    spInstance->unk1EC.configBuf = spInstance->mpConfigBuf;
    spInstance->unk1EC.configBufSize = spInstance->mConfigBufSize;

    spInstance->unk1EC.sound_callback = nullptr;
    spInstance->unk1EC.backFlag = false;
    spInstance->unk1EC.cursor = false;

    spInstance->unk1EC.adjust.x = CDeviceVI::isWideAspectRatio() ? 1.3684211f : 1;
    spInstance->unk1EC.adjust.y = 1;

    //float f31 = CDeviceVI::isTvFormatPal() ? 1.2f : 1;
    spInstance->unk1EC.frameDelta = CDeviceVI::getVisPerFrame() * getFrameDeltaFactor();

    spInstance->unk1EC.mem = spInstance->mpHbmMem;
    spInstance->unk1EC.memSize = HBM_MEM_SIZE;
    spInstance->unk1EC.pAllocator = nullptr;
    spInstance->unk1EC.messageFlag = false;
}

void CLibHbm::initHbm(){
    //Initialize the HBM info struct
    initHbmInfoStruct();

    HBMCreate(&spInstance->unk1EC);
    HBMCreateSound(spInstance->mpHbmSeBuf, spInstance->mpHbmSndMem, HBM_SND_MEM_SIZE);
    HBMInit();
    HBMSetAdjustFlag(true);

    spInstance->mFlags |= 0x80;

    //TODO: probably fakematch
    for(u32 i = 0; (int)i < spInstance->unk238.size(); i++){
        spInstance->unk238[i]->onInitHbm();
    }
}

void CLibHbm::deleteHbm(){
    if(spInstance->mFlags & 0x80){
        HBMDeleteSound();
        HBMDelete();
    }

    spInstance->destroy();

    //TODO: probably fakematch
    for(u32 i = 0; (int)i < spInstance->unk238.size(); i++){
        spInstance->unk238[i]->onDeleteHbm();
    }
}

bool CLibHbm::isHbmControlInitialized(){
    return CLibHbmControl::getInstance() != nullptr;
}

bool CLibHbm::func_8045DE00(){
    return CLibHbmControl::func_8045E530();
}

bool CLibHbm::wkStandbyLogin(){
    if(CDeviceGX::isInitialized()){
        unk1C8++;
        if(unk1C8 <= 1) return false;
        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CLibHbm::wkStandbyLogout(){
    if(mChildren.empty() && CProcRoot::getInstance() == nullptr){
        CLibHbm::destroy();
        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CLibHbm::OnFileEvent(CEventFile* pFile){
    if(mpHbmArcFileHandle == pFile->mFileHandle){
        if(pFile->unk0 == true){
            void* data = pFile->getFileDataPtr();
            unk1E8 = data;
            ARCHandle arcHandle;
            ARCFileInfo fileInfo;

            if(ARCInitHandle(unk1E8, &arcHandle)){
                if(ARCOpen(&arcHandle, "hbm/homeBtn.arc", &fileInfo)){
                    mpLayoutBuf = ARCGetStartAddrInMem(&fileInfo);
                }

                if(ARCOpen(&arcHandle, "hbm/SpeakerSe.arc", &fileInfo)){
                    mpSpkSeBuf = ARCGetStartAddrInMem(&fileInfo);
                }

                if(ARCOpen(&arcHandle, "hbm/HomeButtonSe.arc", &fileInfo)){
                    mpHbmSeBuf = ARCGetStartAddrInMem(&fileInfo);
                }

                if(ARCOpen(&arcHandle, "hbm/home.csv", &fileInfo)){
                    mpMsgBuf = ARCGetStartAddrInMem(&fileInfo);
                }

                if(ARCOpen(&arcHandle, "hbm/hbm/config.txt", &fileInfo)){
                    mpConfigBuf = ARCGetStartAddrInMem(&fileInfo);
                    mConfigBufSize = ARCGetLength(&fileInfo);
                }
            }
        }else{
            mFlags |= 0x40;

            if(CLibHbmControl::getInstance() != nullptr){
                if(!CLibHbmControl::getInstance()->checkFlag(THREAD_FLAG_0)){
                    CLibHbmControl::getInstance()->wkSetEvent(EVT_NONE);
                }
            }
        }

        mpHbmArcFileHandle = nullptr;
    } else return false;

    if(mpHbmMem == nullptr && mpLayoutBuf != nullptr && mpSpkSeBuf != nullptr && mpHbmSeBuf != nullptr && mpMsgBuf != nullptr
    && mpConfigBuf != nullptr){
        mpHbmMem = mtl::MemManager::allocate_head(mHandle, HBM_MEM_SIZE, 32);
        mpHbmSndMem = mtl::MemManager::allocate_head(mHandle, HBM_SND_MEM_SIZE, 32);
    }

    return true;
}


void CLibHbm::func_8045E0CC(){
}
