#pragma once

#include <types.h>
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/work/CWorkThread.hpp"

//size: 0x1c8
class CDevice : public CWorkThread {
public:
    CDevice(const char* pName, CWorkThread* pParent) : CWorkThread(pName, pParent, MAX_CHILD) {
        spInstance = this;
        mType = THREAD_CDEVICE;
    }

    virtual ~CDevice();
    static CDevice* getInstance();

    DECL_WORKTHREAD_CREATE(CDevice);

    static int getDevSys1Handle();
    static int getDevSys2Handle();
    static bool isAllReady();
    static bool isColdStartReady();
    static bool isInitialized();
    static void initDevices();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    static CDevice* create();
    static void createRegions();
    static void deleteRegions();

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;

private:
    static const int DEVSYS2_REGION_SIZE = 0x1A0000;
    static const int MAX_CHILD = 32;

    static const char* devSys1String;
    static const char* devSys2String;
    static ml::FixStr<64> spNotRunningDeviceName;
    static ml::FixStr<64> spColdStartNotRunningDeviceName;
    static mtl::ALLOC_HANDLE sDeviceRegion1Handle;
    static mtl::ALLOC_HANDLE sDeviceRegion2Handle;

    static CDevice* spInstance;
};
