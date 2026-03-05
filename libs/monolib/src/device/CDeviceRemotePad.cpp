#include "monolib/device.hpp"
#include "monolib/core.hpp"
#include "monolib/lib.hpp"

CDeviceRemotePad* CDeviceRemotePad::spInstance;

CDeviceRemotePad::CDeviceRemotePad(const char* pName, CWorkThread* pParent) :
CDeviceBase(pName, pParent, MAX_CHILD),
unk1C8(0){
    spInstance = this;

    for(int i = 0; i < MAX_CONTROLLERS; i++){
        unk1CC[i] = nullptr;
    }
}

CDeviceRemotePad::~CDeviceRemotePad(){
    spInstance = nullptr;
}

CDeviceRemotePad* CDeviceRemotePad::getInstance(){
    return spInstance;
}

bool CDeviceRemotePad::func_804479C4(u32 index){
    return spInstance->unk1CC[index]->mConnected;
}

u32 CDeviceRemotePad::func_804479DC(u32 index){
    return spInstance->unk1CC[index]->unk0;
}

u32 CDeviceRemotePad::func_804479F4(u32 index){
    return spInstance->unk1CC[index]->unk4;
}

CPad* CDeviceRemotePad::getGCPad(){
    return CPadManager::getMainGCPad();
}

//0-3: Wii controllers, 4-7: GC controllers
CPad* CDeviceRemotePad::getPadData(u32 index){
    return CPadManager::getPadData(index >= MAX_WII_CONTROLLERS ? PAD_CHANNEL_GC : PAD_CHANNEL_WII, index % 4);
}

CWpadStatus* CDeviceRemotePad::func_80447A30(u32 r3){
    return CPadManager::getWpadStatus(r3);
}

void CDeviceRemotePad::wkUpdate(){
    unk1C8();
}

bool CDeviceRemotePad::wkStandbyLogin(){
    u32 r3 = CDevice::func_8044D248();

    if(r3 != 0){
        PadUpdateCallback cb = CPadManager::initialize(mtl::MemManager::getHandleMEM2());
        unk1C8 = cb;

        for(u32 i = 0; i < MAX_CONTROLLERS; i++){
            unk1CC[i] = getPadData(i);
        }

        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CDeviceRemotePad::wkStandbyLogout(){
    if(mChildren.empty() && CWorkSystem::getInstance() == nullptr && CLib::getInstance() == nullptr){
        CPadManager::destroy();
        unk1C8 = nullptr;
        return CWorkThread::wkStandbyLogout();
    }

    return false;
}
