#include <monolib/device.hpp>
#include <monolib/util.hpp>
#include <monolib/lib.hpp>

using namespace ml;

extern CWorkThread* func_804437BC();
extern int func_80454E78();

CDevice* CDevice::spInstance;
CDeviceException* CDeviceException::spInstance;
const char* CDevice::devSys1String = "DeviceSystem1";
const char* CDevice::devSys2String = "DeviceSystem2";
FixStr<64> CDevice::lbl_8065A6F8;
FixStr<64> CDevice::lbl_8065A73C;
mtl::ALLOC_HANDLE CDevice::lbl_80665FA0 = mtl::INVALID_HANDLE;
mtl::ALLOC_HANDLE CDevice::lbl_80665FA4 = mtl::INVALID_HANDLE;

CDevice::~CDevice(){
    spInstance = nullptr;
}

CDevice* CDevice::getInstance(){
    return spInstance;
}

int CDevice::func_8044D058(){
    return lbl_80665FA0;
}

int CDevice::func_8044D060(){
    return lbl_80665FA4;
}

bool CDevice::func_8044D438(){
    return spInstance->inline1();
}

void CDevice::initDevices(){
    if(CDeviceVI::getInstance() == nullptr){
        CDeviceVI::create("CDeviceVI", spInstance);
    }
    if(CDeviceGX::getInstance() == nullptr){
        CDeviceGX::create("CDeviceGX", spInstance);
    }
    if(CDeviceRemotePad::getInstance() == nullptr){
        CDeviceRemotePad::create("CDeviceRemotePAD", spInstance);
    }
    if(CDeviceClock::getInstance() == nullptr){
        CDeviceClock::create("CDeviceClock", spInstance);
    }
    if(CDeviceSC::getInstance() == nullptr){
        CDeviceSC::create("CDeviceSC", spInstance);
    }
    if(CDeviceFont::getInstance() == nullptr){
        CDeviceFont::create("CDeviceFont", spInstance);
    }
    if(CDeviceFile::getInstance() == nullptr){
        CDeviceFile::create("CDeviceFile", spInstance);
    }
    if(CLibCri::getInstance() == nullptr){
        CLibCri::create("CLibCri", spInstance);
    }

    CDeviceGX::setDevicesInitializedFlag(1);
}

CDeviceException* CDeviceException::getInstance(){
    return spInstance;
}

bool CDevice::wkStandbyLogin(){
    CDeviceException::create("CDeviceException", this);
    CDevice::initDevices();
    this->wkSetEvent(EVT_9);
    return CWorkThread::wkStandbyLogin();
}

bool CDevice::wkStandbyLogout(){
    if(mChildren.empty() && CWorkSystem::getInstance() == nullptr
    && CLib::getInstance() == nullptr){
        return CWorkThread::wkStandbyLogout();
    }

    return false;
}

CDevice* CDevice::create(){
    return create("CDevice", func_804437BC());
}

void CDevice::createRegions(){
    int deviceRegion1Offset = CDeviceGX::func_804557A0() + func_80454E78() + 0x80;
    deviceRegion1Offset += CDeviceVI::func_80448E80() ? 0 : CDeviceVI::getXfbBuffersSize();
    lbl_80665FA0 = mtl::MemManager::create(mtl::MemManager::getHandleMEM1(), deviceRegion1Offset, devSys1String);
    lbl_80665FA4 = mtl::MemManager::create(mtl::MemManager::getHandleMEM2(), 0x1A0000, devSys2String);
}

void CDevice::deleteRegions(){
    mtl::MemManager::erase(lbl_80665FA0);
    mtl::MemManager::erase(lbl_80665FA4);
    lbl_80665FA0 = -1;
    lbl_80665FA4 = -1;
}

CDeviceException::~CDeviceException(){
    spInstance = nullptr;
}

bool CDeviceException::wkStandbyLogout(){
    if(mChildren.empty() == false) return false;
    return CWorkThread::wkStandbyLogout();
}
