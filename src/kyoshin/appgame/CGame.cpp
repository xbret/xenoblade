#include "kyoshin/appgame/CGame.hpp"
#include "revolution/GX.h"
#include "nw4r/lyt/lyt_drawInfo.h"
#include "nw4r/lyt/lyt_layout.h"
#include "revolution/gx/GXPixel.h"
#include "revolution/gx/GXTypes.h"
#include <nw4r/lyt/lyt_arcResourceAccessor.h>
#include "monolib/FixStr.hpp"
#include "monolib/lib/CLibHbm.hpp"
#include "monolib/work/CWorkSystem.hpp"
#include "monolib/CDesktop.hpp"
#include "monolib/CTaskManager.hpp"
#include "monolib/device/CDeviceGX.hpp"
#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "kyoshin/appgame/cf/CTaskREvent.hpp"
#include "kyoshin/appgame/cf/CBattleManager.hpp"
#include "kyoshin/appgame/CTaskGame.hpp"

extern u32 func_8045FB08();
extern u32 func_8007E1B4();
extern void func_801BF93C();
extern float func_801C0014();
extern void func_801BFFAC(float f1, float f2);
extern void func_801644BC(u32 r3);
extern void func_80044FBC(u32 r3);
extern void func_80137250(nw4r::lyt::DrawInfo* pDrawInfo);
extern void func_80137038(nw4r::lyt::Layout* pLayout, nw4r::lyt::DrawInfo* pDrawInfo, int r5, int r6);
extern void func_80442DA8();
extern CView* func_804392F4();

CGame* CGame::sInstance;
CGameRestart* CGameRestart::sInstance;
static FixStr<64> lbl_80573C80;
static nw4r::lyt::Layout* lbl_80666604;
static nw4r::lyt::ArcResourceAccessor* lbl_80666608;

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
    else{
        if(CGameRestart::sInstance == nullptr){
            CDesktop* desktop = CDesktop::getInstance();
            const char* name = "CGameRestart";
            CGameRestart* gameRestart = new (WorkThreadSystem::getHeapHandle()) CGameRestart(name, desktop, 8);
            gameRestart->func_80438BD8(desktop, 0);
            
            UNKTYPE* temp_r3 = func_80455AA0();
            u32 r0 = *(u32*)((u32)temp_r3 + 0x4C);
            gameRestart->unk1E4 = r0;
            CGameRestart::sInstance = gameRestart;

            if(r0 != 0){
                gameRestart->unk1EC = sInstance->unk4C;
                sInstance->func_80437EF0(0);
            }
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
                s16 height = CDeviceVI::getRenderModeObj()->efbHeight - 114;
                s16 width = CDeviceVI::getRenderModeObj()->fbWidth;
                func_80039694(sInstance->mView, 0, 56, width, height);
            }else{
                s16 height = CDeviceVI::getRenderModeObj()->efbHeight;
                s16 width = CDeviceVI::getRenderModeObj()->fbWidth;
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
    UNKTYPE* temp_r3_1 = func_80455AA0();

    const char* name = "巨神"; //"Bionis"

    //func_804392F4()


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
        UNKTYPE* temp_r3 = func_80455AA0();
        u32 r29 = *(u32*)((u32)temp_r3 + 0x4C);
        CDesktop* desktop = CDesktop::getInstance();
        const char* name = "巨神"; //"Bionis"
        CGame* cGame = new (WorkThreadSystem::getHeapHandle()) CGame(name, desktop);
        cGame->func_80438BD8(desktop, 0);
        cGame->unk1E4 = r29;
    }
}

void CGame::func_80039AC4(UNKTYPE* r3, u32 r4, u32 r5){
    if(sInstance != nullptr){
        if(CTaskGame::func_800426F0() == nullptr){
            CGame* game = sInstance;

            if(!(game->unk7C & UNK7C_FLAG_0)){
                if(game->func_80457CA4(r3, 5) != 0){
                    u32* stringIntPtr = (u32*)game->unk1FC.c_str();
                    stringIntPtr[1] = r4;
                    stringIntPtr[2] = r5;
                }
            }
        }
    }
}

bool CGame::WorkThreadEvent6(){
    return false;
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
