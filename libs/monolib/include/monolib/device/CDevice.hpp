#pragma once

#include <types.h>
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/work/CWorkThread.hpp"

//size: 0x1c8
class CDevice : public CWorkThread {
public:
    CDevice(const char* pName, CWorkThread* pWorkThread) : CWorkThread(pName, pWorkThread, 0x20) {
        spInstance = this;
        mType = THREAD_CDEVICE;
    }

    virtual ~CDevice();
    static CDevice* getInstance();
    static int getDevSys1Handle();
    static int getDevSys2Handle();
    static u32 func_8044D068();
    static u32 func_8044D248();
    static bool func_8044D438();
    static void initDevices();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    static CDevice* create();
    static void createRegions();
    static void deleteRegions();

    DECL_WORKTHREAD_CREATE(CDevice);

    inline bool inline1(){
        bool r0 = isRunning();
        if(r0 == false) return false;
        
        bool result = true;

        for(reslist<CWorkThread*>::iterator it = mChildren.begin(); it != mChildren.end(); it++){
            CDeviceBase* deviceBase = static_cast<CDeviceBase*>(*it);
            if((deviceBase->unk1C4 & 1) == 0) result = false;
        }

        return result;
    }
    
    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;

private:
    static const int DEVSYS2_REGION_SIZE = 0x1A0000;

    static const char* devSys1String;
    static const char* devSys2String;
    static ml::FixStr<64> lbl_8065A6F8;
    static ml::FixStr<64> lbl_8065A73C;
    static mtl::ALLOC_HANDLE sDeviceRegion1Handle;
    static mtl::ALLOC_HANDLE sDeviceRegion2Handle;

    static CDevice* spInstance;
};

namespace {
    //size: 0x1c8
    class CDeviceException : public CWorkThread {
    public:
        CDeviceException(const char* pName, CWorkThread* pWorkThread) : CWorkThread(pName, pWorkThread, 0x40) {
            spInstance = this;
        }
        virtual ~CDeviceException();
        virtual bool wkStandbyLogout();
        static CDeviceException* getInstance();

        DECL_WORKTHREAD_CREATE(CDeviceException);

        //0x0: vtable
        //0x0-1c4: CWorkThread
        u32 unk1C4;

    protected:
        static CDeviceException* spInstance;
    };
}
