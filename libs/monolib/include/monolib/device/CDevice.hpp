#pragma once

#include "types.h"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/CWorkUtil.hpp"

//size: 0x1c8
class CDevice : public CWorkThread {
public:
    CDevice(const char* pName, CWorkThread* pWorkThread) : CWorkThread(pName, pWorkThread, 0x20) {
        spInstance = this;
        mType = THREAD_CDEVICE;
    }

    virtual ~CDevice();
    static CDevice* getInstance();
    static int func_8044D058();
    static int func_8044D060();
    static u32 func_8044D068();
    static u32 func_8044D248();
    static bool func_8044D438();
    static void initDevices();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    static CDevice* create();
    static void createRegions();
    static void deleteRegions();

    static CDevice* create(const char* pName, CWorkThread* pWorkThread){
        CDevice* device = new (CWorkThreadSystem::getWorkMem()) CDevice(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, 0);
        return device;
    }

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
    static const char* devSys1String;
    static const char* devSys2String;
    static ml::FixStr<64> lbl_8065A6F8;
    static ml::FixStr<64> lbl_8065A73C;
    static mtl::ALLOC_HANDLE lbl_80665FA0;
    static mtl::ALLOC_HANDLE lbl_80665FA4;

    static CDevice* spInstance;
};

namespace{
    //size: 0x1c8
    class CDeviceException : public CWorkThread {
    public:
        CDeviceException(const char* pName, CWorkThread* pWorkThread) : CWorkThread(pName, pWorkThread, 0x40) {
            spInstance = this;
        }
        virtual ~CDeviceException();
        virtual bool wkStandbyLogout();
        static CDeviceException* getInstance();

        static CDeviceException* create(const char* pName, CWorkThread* pWorkThread){
            CDeviceException* deviceException = new (CWorkThreadSystem::getWorkMem()) CDeviceException(pName, pWorkThread);
            CWorkUtil::entryWork(deviceException, pWorkThread, 0);
            return deviceException;
        }

        //0x0: vtable
        //0x0-1c4: CWorkThread
        u32 unk1C4;

    protected:
        static CDeviceException* spInstance;
    };
}
