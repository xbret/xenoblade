#include "monolib/device.hpp"
#include "monolib/util.hpp"
#include "monolib/lib.hpp"
#include "monolib/work.hpp"

using namespace ml;

extern int func_80454E78();

CDevice* CDevice::spInstance;
CDeviceException* CDeviceException::spInstance;
const char* CDevice::devSys1String = "DeviceSystem1";
const char* CDevice::devSys2String = "DeviceSystem2";
//Unused strings for region names?
FixStr<64> CDevice::lbl_8065A6F8;
FixStr<64> CDevice::lbl_8065A73C;
//Handles for the DeviceSystem1/DeviceSystem2 regions, which live in MEM1/MEM2 respectively
mtl::ALLOC_HANDLE CDevice::sDeviceRegion1Handle = mtl::INVALID_HANDLE;
mtl::ALLOC_HANDLE CDevice::sDeviceRegion2Handle = mtl::INVALID_HANDLE;

CDevice::~CDevice(){
    spInstance = nullptr;
}

CDevice* CDevice::getInstance(){
    return spInstance;
}

int CDevice::getDevSys1Handle(){
    return sDeviceRegion1Handle;
}

int CDevice::getDevSys2Handle(){
    return sDeviceRegion2Handle;
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

    //Feels a bit strange to put this in CDeviceGX
    CDeviceGX::setDevicesInitializedFlag(true);
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
    return create("CDevice", CWorkControl::getInstance());
}

void CDevice::createRegions(){
    //TODO: what is the extra 0x80?
    int deviceRegion1Size = CDeviceGX::getHeapSize() + func_80454E78() + 0x80;
    deviceRegion1Size += CDeviceVI::usingStaticHandle() ? 0 : CDeviceVI::getXfbBuffersSize();
    sDeviceRegion1Handle = mtl::MemManager::create(mtl::MemManager::getHandleMEM1(), deviceRegion1Size, devSys1String);
    sDeviceRegion2Handle = mtl::MemManager::create(mtl::MemManager::getHandleMEM2(), DEVSYS2_REGION_SIZE, devSys2String);
}

void CDevice::deleteRegions(){
    mtl::MemManager::erase(sDeviceRegion1Handle);
    mtl::MemManager::erase(sDeviceRegion2Handle);
    sDeviceRegion1Handle = mtl::INVALID_HANDLE;
    sDeviceRegion2Handle = mtl::INVALID_HANDLE;
}

CDeviceException::~CDeviceException(){
    spInstance = nullptr;
}

bool CDeviceException::wkStandbyLogout(){
    if(mChildren.empty() == false) return false;
    return CWorkThread::wkStandbyLogout();
}
