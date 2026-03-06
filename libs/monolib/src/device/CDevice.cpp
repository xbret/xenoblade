#include "monolib/device.hpp"
#include "monolib/util.hpp"
#include "monolib/lib.hpp"
#include "monolib/work.hpp"

using namespace ml;

namespace {
    //size: 0x1c8
    class CDeviceException : public CWorkThread {
    public:
        CDeviceException(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, MAX_CHILD) {
            spInstance = this;
        }
        virtual ~CDeviceException();
        virtual bool wkStandbyLogout();
        static CDeviceException* getInstance();

        DECL_WORKTHREAD_CREATE(CDeviceException);

        //0x0: vtable
        //0x0-1c4: CWorkThread
        u32 unk1C4;

    private:
        static const int MAX_CHILD = 64;

        static CDeviceException* spInstance;
    };
}

CDevice* CDevice::spInstance;
CDeviceException* CDeviceException::spInstance;
const char* CDevice::devSys1String = "DeviceSystem1";
const char* CDevice::devSys2String = "DeviceSystem2";
//Unused strings for region names?
FixStr<64> CDevice::spNotRunningDeviceName;
FixStr<64> CDevice::spColdStartNotRunningDeviceName;
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

bool CDevice::isAllReady(){
    if(!spInstance->isRunning()) return false;

    bool result = true;

    for(reslist<CWorkThread*>::iterator it = spInstance->mChildren.begin(); it != spInstance->mChildren.end(); it++){
        CWorkThread* thread = *it;

        bool running = thread->isRunning();

        //If a device that isn't running is found, save its name
        if(!running){
            const char* name = thread->mName.c_str();
            spNotRunningDeviceName = name;
        }

        result &= running;
    }

    return result;
}

bool CDevice::isColdStartReady(){
    if(!spInstance->isRunning()) return false;

    bool result = true;

    for(reslist<CWorkThread*>::iterator it = spInstance->mChildren.begin(); it != spInstance->mChildren.end(); it++){
        //BUG: no check that cast is valid
        CDeviceBase* device = static_cast<CDeviceBase*>(*it);

        if(device->CDeviceBase_inline2()){
            bool running = device->isRunning();

            if(!running){
                const char* name = device->mName.c_str();
                spColdStartNotRunningDeviceName = name;
            }

            result &= running;

        }

    }

    return result;
}

bool CDevice::isInitialized(){
    if(!spInstance->isRunning()) return false;
        
    bool result = true;

    for(reslist<CWorkThread*>::iterator it = spInstance->mChildren.begin(); it != spInstance->mChildren.end(); it++){
        CDeviceBase* deviceBase = static_cast<CDeviceBase*>(*it);
        if(!(deviceBase->mFlags & CDeviceBase::FLAG_CREATED)) result = false;
    }

    return result;
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
    int deviceRegion1Size = CDeviceGX::getHeapSize() + CDeviceFontLayer::func_80454E78() + 0x80;
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
