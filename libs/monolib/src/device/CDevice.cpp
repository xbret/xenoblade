#include "monolib/device/CDevice.hpp"
#include "monolib/device/CDeviceGX.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDeviceRemotePad.hpp"
#include "monolib/device/CDeviceClock.hpp"
#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceFile.hpp"
#include "monolib/device/CDeviceFont.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/work/CWorkSystem.hpp"
#include "monolib/lib/CLib.hpp"
#include "monolib/lib/CLibCri.hpp"
#include "monolib/work/CWorkThread.hpp"

using namespace ml;

extern CWorkThread* func_804437BC();
extern int func_80454E78();

CDevice* CDevice::sInstance;
CDeviceException* CDeviceException::sInstance;
static const char* devSys1String = "DeviceSystem1";
static const char* devSys2String = "DeviceSystem2";
static FixStr<64> lbl_8065A6F8;
static FixStr<64> lbl_8065A73C;
static int lbl_80665FA0 = -1;
static int lbl_80665FA4 = -1;

CDevice::~CDevice(){
    sInstance = nullptr;
}

CDevice* CDevice::getInstance(){
    return sInstance;
}

int CDevice::func_8044D058(){
    return lbl_80665FA0;
}

int CDevice::func_8044D060(){
    return lbl_80665FA4;
}

bool CDevice::func_8044D438(){
    return sInstance->inline1();
}

void CDevice::initDevices(){
    if(CDeviceVI::getInstance() == nullptr){
        CDeviceVI::create("CDeviceVI", sInstance);
    }
    if(CDeviceGX::getInstance() == nullptr){
        CDeviceGX::create("CDeviceGX", sInstance);
    }
    if(CDeviceRemotePad::getInstance() == nullptr){
        CDeviceRemotePad::create("CDeviceRemotePAD", sInstance);
    }
    if(CDeviceClock::getInstance() == nullptr){
        CDeviceClock::create("CDeviceClock", sInstance);
    }
    if(CDeviceSC::getInstance() == nullptr){
        CDeviceSC::create("CDeviceSC", sInstance);
    }
    if(CDeviceFont::getInstance() == nullptr){
        CDeviceFont::create("CDeviceFont", sInstance);
    }
    if(CDeviceFile::getInstance() == nullptr){
        CDeviceFile::create("CDeviceFile", sInstance);
    }
    if(CLibCri::getInstance() == nullptr){
        CLibCri::create("CLibCri", sInstance);
    }

    CDeviceGX::setDevicesInitializedFlag(1);
}

CDeviceException* CDeviceException::getInstance(){
    return sInstance;
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
    sInstance = nullptr;
}

bool CDeviceException::wkStandbyLogout(){
    if(mChildren.empty() == false) return false;
    return CWorkThread::wkStandbyLogout();
}
