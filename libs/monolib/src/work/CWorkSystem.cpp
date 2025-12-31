#include "monolib/core.hpp"
#include "monolib/device.hpp"
#include "monolib/work.hpp"

extern void func_80459A80();
extern void func_8044F964();
extern void func_804469D0();
extern void func_80496998();
extern void func_80496994();
extern UNKTYPE* func_804BC9EC();
extern void func_804BCC1C(UNKTYPE* r3);
extern void func_804BC9F4(UNKTYPE* r3, u32 r4);

CWorkSystem::ExitFunc CWorkSystem::sExitFunc;
CWorkSystem* CWorkSystem::spInstance;

CWorkSystem::CWorkSystem(const char *pName, CWorkThread *pParent) : CWorkThread(pName, pParent, 32),
mMemHandle(mtl::INVALID_HANDLE),
mPowerOff(false),
mReset(false),
mSaveLoadInvalidReset(false) {
    spInstance = this;
    mType = THREAD_CWORKSYSTEM;
}

CWorkSystem::~CWorkSystem(){
    spInstance = nullptr;
}

CWorkSystem* CWorkSystem::getInstance(){
    return spInstance;
}

bool CWorkSystem::isOff(){
    if(spInstance == nullptr) return false;
    return isPowerOff() || isReset();
}

mtl::ALLOC_HANDLE CWorkSystem::getMem(){
    return spInstance->mMemHandle;
}

bool CWorkSystem::isPowerOff() {
    return spInstance->mPowerOff;
}

bool CWorkSystem::isReset() {
    return spInstance->mReset;
}


void CWorkSystem::setSaveLoadInvalidReset(bool state){
    CWorkSystem* instance = spInstance;
    if(instance != nullptr){
        instance->mSaveLoadInvalidReset = state;
    }
}

void CWorkSystem::wkUpdate(){
    if(mSaveLoadInvalidReset == false){
        if(mPowerOff == false && CErrorWii::isPowerCallbackCalled()){
            mPowerOff = true;
            shutdownGame();
        }
    
        if(mReset == false && CErrorWii::isResetCallbackCalled()){
            mReset = true;
            resetGame();
        }
    }
}

bool CWorkSystem::wkStandbyLogin(){
    if(!CDeviceFile::func_8044E514()) return false;

    CREATE_WORKTHREAD(CWorkSystemMem, this);
    mMemHandle = CWorkSystemMem::getHandle();
    CREATE_WORKTHREAD(CWorkSystemCache, this);
    CREATE_WORKTHREAD(CWorkSystemPack, this);
    CScriptCode::create(this);
    CProcRoot::create(this);
    CViewRoot::create(this);

    CDeviceGX::updateVerticalFilter(VFILTER_NONE);
    func_80496994();
    CTaskManager::Create();

    //Initialize the mersenne twister RNG class
    s64 time = CDeviceClock::getTimeNow();
    ml::math::mtInit(time & 0xFFFFFFFF);

    UNKTYPE* r3 = func_804BC9EC();
    func_804BC9F4(r3, 0);

    //Call base
    return CWorkThread::wkStandbyLogin();
}

bool CWorkSystem::wkStandbyLogout(){
    //"Failed to log out"
    wkCheckTimeout(30000, !func_80439AD4(this), "ログアウトに失敗しました");

    if(CScriptCode::getInstance() != nullptr){
        func_80496998();
    }

    if(!func_80439AD4(this)){
        CTaskManager::Release();
        UNKTYPE* r3 = func_804BC9EC();
        func_804BCC1C(r3); //probably class function

        mMemHandle = mtl::INVALID_HANDLE;

        //Call base
        return CWorkThread::wkStandbyLogout();
    }

    return false;
}

CWorkSystem* CWorkSystem::create(){
    return CREATE_WORKTHREAD(CWorkSystem, CWorkControl::getInstance());
}

void CWorkSystem::setExitFunc(ExitFunc func){
    sExitFunc = func;
}

void CWorkSystem::callExitFunc(){
    if(sExitFunc != nullptr){
        sExitFunc();
        func_80459A80();
        func_8044F964();
        func_804469D0();
    }
}
