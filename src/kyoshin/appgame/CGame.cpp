#include "kyoshin/appgame/CGame.hpp"
#include "revolution/GX.h"
#include "revolution/VI.h"
#include "revolution/WPAD.h"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/CView.hpp"
#include "monolib/CDesktop.hpp"
#include "monolib/CTaskManager.hpp"
#include "monolib/lib/CLibHbm.hpp"
#include "monolib/lib/CLibLayout.hpp"
#include "monolib/work/CWorkSystem.hpp"
#include "monolib/device/CDeviceGX.hpp"
#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "kyoshin/appgame/cf/CTaskREvent.hpp"
#include "kyoshin/appgame/cf/CBattleManager.hpp"
#include "kyoshin/appgame/CTaskGame.hpp"
#include "kyoshin/appgame/code_80135FDC.hpp"

extern u32 func_8045FB08();
extern u32 func_8007E1B4();
extern void func_801BF93C();
extern float func_801C0014();
extern void func_801BFFAC(float f1, float f2);
extern void func_801644BC(u32 r3);
extern void func_80044FBC(u32 r3);
extern void func_80442DA8();
extern CView* createWorkThreadView(CWorkThread* thread1, const char* string, CWorkThread* thread2,
int r6);
extern bool func_8045DE00();
extern bool func_80457C8C(CWorkThread* workThread);
extern void func_80043298(CView* view, CWorkThread* thread, int r5);

CGame* CGame::sInstance;
static FixStr<64> lbl_80573C80;
static nw4r::lyt::Layout* lbl_80666604;
static nw4r::lyt::ArcResourceAccessor* lbl_80666608;
CGameRestart* CGameRestart::sInstance;

CGame::CGame(const char* name, CWorkThread* workThread) :
CProc(name, workThread, 8),
mView(nullptr),
unk1F0(0),
unk1F4(-1),
unk1F6(-1),
unk1F8(0),
unk1FC(),
mTaskManUpdateCount(1),
unk224(1.0f),
unk228(0) {
    sInstance = this;
    CLibHbm_8045D5C8(1);
    func_80444874(&func_80039D08);
    this->func_80437EF0(4);
}

CGame::~CGame(){
    func_80444874(nullptr);
    CLibHbm_8045D5C8(0);
    sInstance = nullptr;
}

CGame* CGame::getInstance(){
    return CGame::sInstance;
}

bool CGame::func_8003933C(){
    return func_80164910() == 0;
}

void CGame::func_80039364(){
    if(sInstance == nullptr) GameMain();
    else if(CGameRestart::sInstance == nullptr){
        CDesktop* desktop = CDesktop::getInstance();
        const char* name = "CGameRestart";
        CGameRestart* gameRestart = new (WorkThreadSystem::getHeapHandle())
            CGameRestart(name, desktop, 8);
        gameRestart->func_80438BD8(desktop, 0);
        
        CWorkThread* temp_r3 = func_80455AA0();
        u32 r0 = temp_r3->unk4C;
        gameRestart->unk1E4 = r0;
        CGameRestart::sInstance = gameRestart;

        if(gameRestart != nullptr){
            gameRestart->unk1EC = sInstance->unk4C;
            sInstance->func_80437EF0(0);
        }
    }
}

void CGame::setTaskManagerUpdateCount(u32 count){
    if(sInstance != nullptr){
        sInstance->mTaskManUpdateCount = count;
    }
}

void CGame::wkUpdate(){
    if((s16)unk1F4 >= 0 && CTaskGame::getInstance() != nullptr){
        if(unk1FC.size() == 0){
            CTaskGame::getInstance()->func_80040A3C(unk1F4, unk1F6, nullptr, unk1F8);
        }else{
            CTaskGame::getInstance()->func_80040A3C(unk1F4, unk1F6, unk1FC.c_str(), unk1F8);
        }

        unk1F4 = -1;
        unk1F6 = -1;
        unk1FC = "";
        unk1F8 = 0;
    }

    if((unk7C & UNK7C_FLAG_0) && CTaskGame::getInstance() != nullptr){
        (void)CTaskGame::getInstance();
        if(CTaskGame::func_800426F0() == false){
            CTaskGame::getInstance()->func_80042720();
        }
    }

    //Update the task manager for the set amount of times
    for(u32 i = 0; i < mTaskManUpdateCount; i++){
        CTaskManager::Move();
    }
}

//Main render update function?
void CGame::wkRender(){
    if(lbl_80666604 != nullptr){
        lbl_80666604->Animate(0);
    }

    if(lbl_80666604 != nullptr){
        if(!CDeviceSC::isWideAspectRatio()){
            CDeviceGX::getCacheInstance()->func_8044BE38();
            GXSetZMode(GX_FALSE, GX_NEVER, GX_FALSE);
            nw4r::lyt::DrawInfo drawInfo;
            func_80137250(&drawInfo);
            func_80137038(lbl_80666604, &drawInfo, 0, 1);
            func_80442DA8();
        }
    }

    //Trigger rendering for all tasks?
    CTaskManager::Draw();
}

void CGame::func_800395F4(bool r3){
    if(sInstance != nullptr){
        if(sInstance->mView != nullptr){
            if(r3 == false){
                s16 height = CDeviceVI::getEfbHeight() - 114;
                s16 width = CDeviceVI::getFbWidth();
                func_80039694(sInstance->mView, 0, 56, width, height);
            }else{
                s16 height = CDeviceVI::getEfbHeight();
                s16 width = CDeviceVI::getFbWidth();
                func_80039694(sInstance->mView, 0, 0, width, height);
            }
        }
    }
}

void CGame::func_80039694(CView* view, s16 x, s16 y, s16 width, s16 height){
    view->func_8043CB7C(CRect16(x, y, width, height));
}

bool CGame::wkStartup(){
    u32 result = func_8045FB08();
    if(result == 0) return false;

    CWorkThread* thread1 = func_80455AA0();
    const char* name = "巨神"; //"Bionis"

    mView = createWorkThreadView(this, name, thread1, 0);

    mView->unk440 = name;

    if(mView->mName.size() == 0){
        mView->mName = name;
    }

    if(CDeviceSC::isWideAspectRatio()){
        s16 height = CDeviceVI::getEfbHeight() - 114;
        s16 width = CDeviceVI::getFbWidth();
        func_80039694(mView, 0, 56, width, height);
    }else{
        s16 height = CDeviceVI::getEfbHeight();
        s16 width = CDeviceVI::getFbWidth();
        func_80039694(mView, 0, 0, width, height);
    }

    func_800395F4(CDeviceSC::isWideAspectRatio());
    CDeviceGX::updateVerticalFilter(VFILTER_NONE);
    CTaskManager::Reset();

    func_80043298(mView, this, 1);
    WPADSetAutoSleepTime(5);
    VIEnableDimming(VI_ENABLE);
    VISetTimeToDimming(1);

    void* data;

    lbl_80666608 = CLibLayout_getArcResourceAccessorInstance();
    lbl_80666608->Attach(data, "arc");
    func_80136E84(&lbl_80666604, lbl_80666608, "4_3mode.brlyt");

    //Call base
    CProc::wkStartup();
    return false;
}

bool CGame::wkShutdown(){
    return false;
}

//Dummy function to force the ArcResourceAccessor dtor to generate here
void dummy(){
    nw4r::lyt::ArcResourceAccessor* accessor = new nw4r::lyt::ArcResourceAccessor();
    accessor->Attach(0,0);
    delete accessor;
}

void CGame::GameMain(){
    if(sInstance != nullptr){
        sInstance->func_804391A8();
    }else{
        CWorkThread* temp_r3 = func_80455AA0();
        u32 r29 = temp_r3->unk4C;
        CDesktop* desktop = CDesktop::getInstance();
        const char* name = "巨神"; //"Bionis"
        CGame* cGame = new (WorkThreadSystem::getHeapHandle()) CGame(name, desktop);
        cGame->func_80438BD8(desktop, 0);
        cGame->unk1E4 = r29;
    }
}

void CGame::func_80039AC4(UNKTYPE* r3, u32 r4, u32 r5){
    if(sInstance != nullptr && CTaskGame::func_800426F0() == nullptr
    && !(sInstance->unk7C & UNK7C_FLAG_0) && sInstance->func_80457CA4(r3, 5) != 0){
        //This has to be fake
        u32* stringIntPtr = (u32*)sInstance->unk1FC.c_str();
        stringIntPtr[1] = r4;
        stringIntPtr[2] = r5;
    }
}

bool CGame::WorkThreadEvent6(u32 r4){
    CWorkThread* r31 = (CWorkThread*)r4;

    if(unk7C & UNK7C_FLAG_0) return true;
    if(func_8045DE00() == true) return false;

    CWorkThread* workThread = CWorkThreadSystem_getWorkThread(r4);
    
    if(workThread == nullptr){
        r31 = nullptr;
    }else if(unk50 != UNK50_25){
        r31 = nullptr;
    }else r31 = workThread;

    if(r31 == nullptr) return true;
    if(func_80457C8C(r31) == false) return false;
    
    u32* stringIntPtr = (u32*)unk1FC.c_str();

    if(stringIntPtr[1] == 0) return true;
    else{
        return r31->WorkEvent1();
    }
}

void CGame::WorkEvent5(UNKTYPE* r4){
    if(func_8007E1B4() != 0){
        if(r4 != nullptr){
            int r0 = unk228;
            if(r0 == 0){
                unk224 = func_801C0014();
                func_801BFFAC(0,0);
                func_801644BC(1);
                if(cf::CBattleManager::getInstance() != nullptr){
                    cf::CBattleManager* battleManager = cf::CBattleManager::getInstance();
                    battleManager->mVision.func_801A929C(1);
                }
                func_80044FBC(1);
                unk228++;
            }else{
                if(unk228 <= 1){
                    func_801BFFAC(unk224,0);
                    func_801644BC(0);
                    if(cf::CBattleManager::getInstance() != nullptr){
                        cf::CBattleManager* battleManager = cf::CBattleManager::getInstance();
                        battleManager->mVision.func_801A929C(0);
                    }
                }
                func_80044FBC(0);
                unk228--;
                if(unk228 < 0) unk228 = 0;
            }
        }
    }
}

void CGame::func_80039D08(){
    if(sInstance != nullptr){
        if(func_8007E1B4() != 0){
            func_801BF93C();
        }
    }
}
