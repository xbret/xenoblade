#include "kyoshin/appgame/CGame.hpp"
#include "kyoshin/appgame/cf/CTaskREvent.hpp"
#include "kyoshin/appgame/cf/CBattleManager.hpp"
#include "kyoshin/appgame/CTaskGame.hpp"
#include "kyoshin/appgame/code_80135FDC.hpp"
#include <monolib/lib.hpp>
#include <monolib/core.hpp>
#include <monolib/device.hpp>
#include <revolution/GX.h>
#include <revolution/VI.h>
#include <revolution/WPAD.h>

using namespace ml;

extern u32 func_8007E1B4();
extern void func_801BF93C();
extern float func_801C0014();
extern void func_801BFFAC(float f1, float f2);
extern void func_801644BC(u32 r3);
extern void func_80044FBC(u32 r3);
extern void func_80442DA8();
extern CView* createWorkThreadView(CWorkThread* thread1, const char* const string, CWorkThread* thread2,
int r6);
extern bool func_8045DE00();
extern void func_80043298(CView* view, CWorkThread* thread, int r5);
extern CWorkThread* func_80457CA4(CWorkThread* r3, const wchar_t* message, u32 r5);

CGame* CGame::spInstance;
static FixStr<64> lbl_80573C80;
nw4r::lyt::Layout* CGame::lbl_80666604;
nw4r::lyt::ArcResourceAccessor* CGame::sArcResourceAccessor;
const char* CGame::scViewName = "巨神"; //"Bionis"
CGameRestart* CGameRestart::spInstance;

CGame::CGame(const char* pName, CWorkThread* pWorkThread) :
CProc(pName, pWorkThread, 8),
mView(nullptr),
mShutdownState(SHUTDOWN_STATE_0),
unk1F4(-1),
unk1F6(-1),
unk1F8(0),
unk1FC(),
mTaskManUpdateCount(1),
unk224(1.0f),
unk228(0) {
    spInstance = this;
    CLibHbm_8045D5C8(1);
    func_80444874(&func_80039D08);
    this->wkSetEvent(EVT_4);
}

CGame::~CGame(){
    func_80444874(nullptr);
    CLibHbm_8045D5C8(0);
    spInstance = nullptr;
}

CGame* CGame::getInstance(){
    return CGame::spInstance;
}

bool CGame::func_8003933C(){
    return func_80164910() == 0;
}

void CGame::func_80039364(){
    if(spInstance == nullptr) GameMain();
    else if(CGameRestart::spInstance == nullptr){
        CGameRestart* gameRestart = CGameRestart::create("CGameRestart", CDesktop::getInstance());

        if(gameRestart != nullptr){
            gameRestart->unk1EC = spInstance->mWorkID;
            spInstance->wkSetEvent(EVT_NONE);
        }
    }
}

void CGame::setTaskManagerUpdateCount(u32 count){
    if(spInstance != nullptr){
        spInstance->mTaskManUpdateCount = count;
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

    if((mFlags & THREAD_FLAG_0) && CTaskGame::getInstance() != nullptr){
        (void)CTaskGame::getInstance(); //What are we doing
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

//TODO: the inner statements should maybe be inlines?
void CGame::func_800395F4(bool wide){
    if(spInstance != nullptr && spInstance->mView != nullptr){
        if(!wide){
            func_80039694(spInstance->mView, 0, 56,
            CDeviceVI::getRenderModeObj()->fbWidth, CDeviceVI::getRenderModeObj()->efbHeight - 114);
        }else{
            func_80039694(spInstance->mView, 0, 0,
            CDeviceVI::getRenderModeObj()->fbWidth, CDeviceVI::getRenderModeObj()->efbHeight);
        }
    }
}

void CGame::func_80039694(CView* view, s16 x, s16 y, s16 width, s16 height){
    view->func_8043CB7C(ml::CRect16(x, y, width, height));
}

bool CGame::wkStandbyLogin(){
    if(!CLibStaticData::func_8045FB08()) return false;

    CWorkThread* thread1 = func_80455AA0();

    //Create the CView instance for CGame

    mView = createWorkThreadView(this, scViewName, thread1, 0);
    CView* view = mView;
    const char* nameTemp = scViewName;

    view->unk400 = nameTemp;
    if(view->mName.size() == 0){
        view->mName = nameTemp;
    }

    //Almost equivalent to func_800395F4
    if(CDeviceSC::isWideAspectRatio()){
        func_80039694(mView, 0, 0,
        CDeviceVI::getRenderModeObj()->fbWidth, CDeviceVI::getRenderModeObj()->efbHeight);
    }else{
        func_80039694(mView, 0, 56,
        CDeviceVI::getRenderModeObj()->fbWidth, CDeviceVI::getRenderModeObj()->efbHeight - 114);
    }

    StaticDataHandle handle;
    mView->unk444 = CVec4(0,0,0,1);

    /* This function does the same thing as above, but for the static instance of CGame. Since
    there's only one instance of CGame though, this seems pointless :p */
    func_800395F4(CDeviceSC::isWideAspectRatio());
    CDeviceGX::updateVerticalFilter(VFILTER_NONE);
    CTaskManager::Reset();

    func_80043298(mView, this, 1);

    //Standard WPAD/VI initialization
    WPADSetAutoSleepTime(5);
    VIEnableDimming(VI_ENABLE);
    VISetTimeToDimming(1);

    //Fetch the 4:3 mode brlyt file
    if(CLibStaticData::getStaticFileData("43", &handle, false)){
        sArcResourceAccessor = CLibLayout_getArcResourceAccessorInstance();
        sArcResourceAccessor->Attach(handle.data, "arc");
        func_80136E84(&lbl_80666604, sArcResourceAccessor, "4_3mode.brlyt");
    }

    //Call base
    return CProc::wkStandbyLogin();
}

bool CGame::wkStandbyLogout(){
    if(mShutdownState == SHUTDOWN_STATE_0){
        CTaskGame::getInstance()->func_80042710();
        mShutdownState = SHUTDOWN_STATE_1;
    }

    if(mShutdownState == SHUTDOWN_STATE_1){
        if(!(CTaskGame::getInstance()->unk68 & 0x10)) return false;
        mShutdownState = SHUTDOWN_STATE_2;
    }

    //Only continue with shutdown if all child threads are stopped
    if(mChildren.empty()){
        //Reset the task manager
        CTaskManager::Reset();
        
        //Delete the ArcResourceAccessor/Layout instances
        /*TODO: having a macro for this/adding the null stuff to the delete
        function might be a good idea for later */
        if(sArcResourceAccessor != nullptr){
            delete sArcResourceAccessor;
            sArcResourceAccessor = nullptr;
        }

        if(lbl_80666604 != nullptr){
            delete lbl_80666604;
            lbl_80666604 = nullptr;
        }

        //Call base
        return CProc::wkStandbyLogout();
    }

    return false;
}

//Dummy function to force the ArcResourceAccessor dtor to generate here
static void dummy(){
    nw4r::lyt::ArcResourceAccessor* accessor = new nw4r::lyt::ArcResourceAccessor();
    accessor->Attach(0,0);
    delete accessor;
}

void CGame::GameMain(){
    if(spInstance != nullptr){
        spInstance->func_804391A8();
    }else{
        //TODO: can this inline be rewritten to only take the first two arguments?
        create("CGame", CDesktop::getInstance(), func_80455AA0()->mWorkID);
    }
}

/* Creates a new error entry using the given error message and callback class. This is used specifically
for the error messages related to controller related issues (e.g. controller disconnect). */
void CGame::registerControllerErrorEntry(const wchar_t* message, UNKTYPE* r4, u32 param){
    if(spInstance != nullptr && CTaskGame::func_800426F0() == nullptr && !(spInstance->mFlags & THREAD_FLAG_0)){
        CException* exception = static_cast<CException*>(func_80457CA4(spInstance, message, 5));
        if(exception != nullptr){
            exception->mException = (IGameException*)r4;
            exception->unk204 = param;
        }
    }
}

/* This function gets triggered when a certain exception occurs (including controller related
errors like a controller disconnect). If the work thread's type matches the one for CException,
the corresponding function in the error handler class instance is called to handle the exception.

In the case of controller errors, the class containing the error handler function is CfPadTask,
which inherits from the type used for the error handler classes (seems to be IGameException,
but unfortunately the RTTI doesn't specify the name.) */
bool CGame::wkStandbyExceptionRetry(u32 wid){
    if(mFlags & THREAD_FLAG_0) return true;
    if(func_8045DE00()) return false;

    //Get the work thread for the given id
    CWorkThread* workThread = CWorkThread::getWorkThread(wid);
    CException* exception;
    
    //Check that the thread is valid, and has the right type id. If not, set the pointer to null.
    if(workThread == nullptr){
        exception = nullptr;
    }else if(workThread->mType != THREAD_CEXCEPTION){
        exception = nullptr;
    }else{
        //The type matches, so casting should be safe
        exception = static_cast<CException*>(workThread);
    }

    //Invalid work thread, return
    if(exception == nullptr) return true;

    if(exception->func_80457C8C() == false) return false;

    //Call the error handler function
    if(exception->mException == nullptr) return true;
    else{
        IGameException* gameException = exception->mException;
        return gameException->func0C(exception->unk204);
    }
}

void CGame::OnPauseTrigger(bool paused){
    if(func_8007E1B4() != 0){
        if(paused){
            if(unk228 == 0){
                unk224 = func_801C0014();
                func_801BFFAC(0,0);
                func_801644BC(1);

                if(cf::CBattleManager::getInstance() != nullptr){
                    cf::CBattleManager* battleManager = cf::CBattleManager::getInstance();
                    battleManager->mVision.func_801A929C(1);
                }

                func_80044FBC(1);
            }

            unk228++;
        }else{
            if(unk228 <= 1){
                func_801BFFAC(unk224,0);
                func_801644BC(0);

                if(cf::CBattleManager::getInstance() != nullptr){
                    cf::CBattleManager* battleManager = cf::CBattleManager::getInstance();
                    battleManager->mVision.func_801A929C(0);
                }

                func_80044FBC(0);
            }

            unk228--;
            if(unk228 < 0) unk228 = 0;
        }
    }
}

void CGame::func_80039D08(){
    if(spInstance != nullptr){
        if(func_8007E1B4() != 0){
            func_801BF93C();
        }
    }
}
