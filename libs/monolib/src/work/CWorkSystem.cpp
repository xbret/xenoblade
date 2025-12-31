#include "monolib/core.hpp"
#include "monolib/device.hpp"
#include "monolib/work.hpp"

extern void func_80459A80();
extern void func_8044F964();
extern u32 func_80444970();
extern void func_804469D0();
extern void func_80496998();
extern void func_80496994();
extern UNKTYPE* func_804BC9EC();
extern void func_804BCC1C(UNKTYPE* r3);
extern void func_804BC9F4(UNKTYPE* r3, u32 r4);

CWorkSystem::ExitFunc CWorkSystem::sExitFunc;
CWorkSystem* CWorkSystem::spInstance;

CWorkSystem::CWorkSystem(const char *pName, CWorkThread *pParent) : CWorkThread(pName, pParent, 32),
unk1C4(-1),
unk1C8(0),
unk1C9(0),
unk1CA(0) {
    spInstance = this;
    mType = THREAD_CWORKSYSTEM;
}

CWorkSystem::~CWorkSystem(){
    spInstance = nullptr;
}

CWorkSystem* CWorkSystem::getInstance(){
    return spInstance;
}

bool CWorkSystem::func_804444DC(){
    CWorkSystem* instance = spInstance;
    if(instance == nullptr) return false;
    return instance->unk1C8 != false || instance->unk1C9 != false;
}

u32 CWorkSystem::func_80444514(){
    return spInstance->unk1C4;
}

void CWorkSystem::func_80444520(bool value){
    CWorkSystem* instance = spInstance;
    if(instance != nullptr){
        instance->unk1CA = value;
    }
}

void CWorkSystem::wkUpdate(){
    if(unk1CA == false){
        if(unk1C8 == false && CErrorWii::powerCallbackCalled()){
            unk1C8 = true;
            shutdownGame();
        }
    
        if(unk1C9 == false && CErrorWii::func_804EE48C()){
            unk1C9 = true;
            resetGame();
        }
    }
}

bool CWorkSystem::wkStandbyLogin(){
    if(!CDeviceFile::func_8044E514()) return false;

    CREATE_WORKTHREAD(CWorkSystemMem, this);
    unk1C4 = func_80444970();
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

        unk1C4 = -1;

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
