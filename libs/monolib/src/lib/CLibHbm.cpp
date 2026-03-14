#include "monolib/lib/CLibHbm.hpp"
#include "monolib/lib/CLibHbmControl.hpp"
#include "monolib/core.hpp"
#include "monolib/device.hpp"
#include "monolib/scn.hpp"
#include <revolution/ARC.h>
#include <cstring>

//I don't wanna type these several times
#define HOME_BUTTON_PRESSED(channel) (CDeviceRemotePad::getPressedButtonFlags(channel) & PAD_INPUT_FLAG_HOME)
#define HOME_BUTTON_HELD(channel) (CDeviceRemotePad::getHeldButtonFlags(channel) & PAD_INPUT_FLAG_HOME)

CLibHbm* CLibHbm::spInstance;
int CLibHbm::sCurWpadChannel = WPAD_CHAN_INVALID;
bool CLibHbm::lbl_80667FD4;
TPLPalette* CLibHbm::spHbmstopTplData;
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
mState(STATE_NEG1),
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

void CLibHbm::setCurrentWpadChannel(int channel){
    if(channel >= WPAD_CHAN_INVALID && channel < WPAD_MAX_CONTROLLERS) sCurWpadChannel = channel;
}

void CLibHbm::func_8045D470(bool r3){
    lbl_80667FDD = r3;
}

bool CLibHbm::func_8045D478(){
    return lbl_80667FDC;
}

void CLibHbm::loadTplImage(void* pTplData){
    if(spHbmstopTplData == nullptr){
        TPLPalette* tpl = (TPLPalette*)pTplData;
        spHbmstopTplData = tpl;

        if(tpl != nullptr){
            TPLBind(tpl);
            TPLGetGXTexObjFromPalette(spHbmstopTplData, &sTplTexObj, 0);
            GXInitTexObjLOD(&sTplTexObj, GX_LINEAR, GX_LINEAR, 0, 0, 0,
            GX_FALSE, GX_FALSE, GX_ANISO_1);
        }
    }
}

void CLibHbm::removeTplImage(){
    CDeviceVI::waitForDrawDone();
    spHbmstopTplData = nullptr;
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
        int channel = sCurWpadChannel >= 0 ? sCurWpadChannel : CDeviceRemotePad::getFirstConnectedWpadPort();

        if(CLibHbmControl::getInstance() != nullptr){
            if(CLibHbmControl::func_8045E530()) return;

            if(CDeviceFileCri::getInstance()->isException()){
                if(!CLibHbmControl::getInstance()->isThreadFlag0() && mState < STATE_0 && !unk264){
                    if(mState == STATE_NEG1){
                        setState(STATE_0);
                    }
                    unk264 = true;
                }

                if(channel >= 0 && !lbl_80667FD4 && HOME_BUTTON_PRESSED(channel) && !CDeviceVI::checkFlag0()
                && mState == STATE_NEG1){
                    mState = STATE_0;

                    if(spHbmstopTplData == nullptr){
                        mState = STATE_NEG1;
                    }
                }
            }else{
                if(unk264){
                    CLibHbmControl::getInstance()->wkSetEvent(EVT_NONE);
                }

                unk264 = false;

                if(!lbl_80667FDD){
                    mState = STATE_3;
                    if(spHbmstopTplData == nullptr){
                        mState = STATE_NEG1;
                    }
                }
            }
        }else{
            if(unk265 && channel >= 0 && !HOME_BUTTON_HELD(channel)){
                unk265 = false;
            }

            if(!unk265 && channel >= 0 && !lbl_80667FD4){
                if((HOME_BUTTON_PRESSED(channel) || HOME_BUTTON_HELD(channel)) && !CDeviceVI::checkFlag0()){
                    if(HOME_BUTTON_HELD(channel)){
                        unk265 = true;
                    }

                    if(CDeviceFileCri::getInstance()->isException() || lbl_80667FDD){
                        if(mState == STATE_NEG1){
                            setState(STATE_0);
                        }
                    }else{
                        CLibHbmControl::create();
                    }
                }
            }
        }
    }
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
    spInstance->unk1EC.frameDelta = CDeviceVI::getVisPerFrame() * (CDeviceVI::isTvFormatPal() ? 60.0f/50.0f : 1);

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
        return CWorkThread::wkStandbyLogout();
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

                if(ARCOpen(&arcHandle, "hbm/config.txt", &fileInfo)){
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


void CLibHbm::renderHbmstopIcon(){
    if(spInstance == nullptr) return;

    if(spInstance->mState < STATE_0) return;

    switch(spInstance->mState){
        case STATE_0:
            spInstance->unk25C = 0;
            spInstance->mState++;
            //Fallthrough
        case STATE_1:
            spInstance->unk25C += CDeviceVI::getSecPerFrame();
            if(spInstance->unk25C >= 0.25f){
                spInstance->unk25C = 0.25f;
                spInstance->mState++;
            }
            break;
        case STATE_2:
            spInstance->unk25C += CDeviceVI::getSecPerFrame();
            if(spInstance->unk25C >= 1.25f){
                spInstance->unk25C = 0.25f;
                spInstance->setState(3);
            }
            break;
        case STATE_3:
            spInstance->unk25C -= CDeviceVI::getSecPerFrame();
            if(spInstance->unk25C <= 0){
                spInstance->unk25C = 0;
                spInstance->mState = -1;
                return;
            }
            break;
        default:
            break;
    }

    CDeviceGX::getCacheInstance()->func_8044BE38();
    //Cast to a custom struct for easier use
    ml::CTPLData* tplData = reinterpret_cast<ml::CTPLData*>(spHbmstopTplData); //r31
    CDrawGX draw;
    draw.func_80456570(0);
    draw.func_8045657C(0);

    float smth = spInstance->unk25C * 4;

    if(smth > 1){
        smth = 1;
    }

    ml::CCol4 r1_8 = ml::CCol4(1, 1, 1, smth);
    draw.setCol(r1_8);
    draw.unk0 |= 0x10;
    draw.setTex(&sTplTexObj, tplData->imageHeader.width, tplData->imageHeader.height);

    draw.begin(6, 4);

    float scale;

    if (CDeviceVI::isWideAspectRatio()) {
        scale = (tplData->imageHeader.width/CDeviceVI::getWidthScale() * CDeviceVI::VI_WIDTH_16_9) / CDeviceVI::SCREEN_WIDTH;
    }else{
        scale = (tplData->imageHeader.width * CDeviceVI::VI_WIDTH_16_9) / CDeviceVI::SCREEN_WIDTH;
    }

    int iVar6 = scale;

    //Send the four points for where to draw the image
    //TODO: this should be an inline/macro

    draw.addPoint((CDeviceVI::getRenderModeObj()->fbWidth - iVar6) / 2,
((CDeviceVI::getRenderModeObj()->efbHeight - tplData->imageHeader.height) - 220)/2, 0, 0);
    draw.addPoint((iVar6 + CDeviceVI::getRenderModeObj()->fbWidth) / 2,
    ((CDeviceVI::getRenderModeObj()->efbHeight - tplData->imageHeader.height) - 220)/2, tplData->imageHeader.width,0);
    draw.addPoint((CDeviceVI::getRenderModeObj()->fbWidth - iVar6) / 2,
    ((tplData->imageHeader.height + CDeviceVI::getRenderModeObj()->efbHeight) - 220)/2, 0, tplData->imageHeader.height);
    draw.addPoint((iVar6 + CDeviceVI::getRenderModeObj()->fbWidth) / 2,
    (((tplData->imageHeader.height + CDeviceVI::getRenderModeObj()->efbHeight) - 220)/2), tplData->imageHeader.width,tplData->imageHeader.height);

    draw.end();

    CDeviceGX::getCacheInstance()->func_8044BE38();
    CViewRoot::func_80442DA8();
}
