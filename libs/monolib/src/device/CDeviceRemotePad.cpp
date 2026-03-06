#include "monolib/device.hpp"
#include "monolib/core.hpp"
#include "monolib/lib.hpp"

CDeviceRemotePad* CDeviceRemotePad::spInstance;

CDeviceRemotePad::CDeviceRemotePad(const char* pName, CWorkThread* pParent) :
CDeviceBase(pName, pParent, MAX_CHILD),
mPadUpdateFunc(nullptr){
    spInstance = this;

    for(int i = 0; i < TOTAL_CONTROLLERS; i++){
        mpPads[i] = nullptr;
    }
}

CDeviceRemotePad::~CDeviceRemotePad(){
    spInstance = nullptr;
}

CDeviceRemotePad* CDeviceRemotePad::getInstance(){
    return spInstance;
}

bool CDeviceRemotePad::isConnected(u32 index){
    return spInstance->mpPads[index]->mConnected;
}

u32 CDeviceRemotePad::getHeldButtonFlags(u32 index){
    return spInstance->mpPads[index]->mHeldButtonFlags;
}

u32 CDeviceRemotePad::getPressedButtonFlags(u32 index){
    return spInstance->mpPads[index]->mPressedButtonFlags;
}

CPad* CDeviceRemotePad::getMainGCPad(){
    return CPadManager::getMainGCPad();
}

//0-3: Wii controllers, 4-7: GC controllers
CPad* CDeviceRemotePad::getPadData(u32 index){
    return CPadManager::getPadData(index >= MAX_WII_CONTROLLERS ? PAD_SYSTEM_GC : PAD_SYSTEM_WII,
    index % MAX_WII_CONTROLLERS);
}

CWpadStatus* CDeviceRemotePad::getWpadStatus(u32 index){
    return CPadManager::getWpadStatus(index);
}

void CDeviceRemotePad::wkUpdate(){
    mPadUpdateFunc();
}

bool CDeviceRemotePad::wkStandbyLogin(){
    if(CDevice::isColdStartReady()){
        PadUpdateFunc func = CPadManager::initialize(mtl::MemManager::getHandleMEM2());
        mPadUpdateFunc = func;

        for(u32 i = 0; i < TOTAL_CONTROLLERS; i++){
            mpPads[i] = getPadData(i);
        }

        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CDeviceRemotePad::wkStandbyLogout(){
    if(mChildren.empty() && CWorkSystem::getInstance() == nullptr && CLib::getInstance() == nullptr){
        CPadManager::destroy();
        mPadUpdateFunc = nullptr;
        return CWorkThread::wkStandbyLogout();
    }

    return false;
}
