#pragma once

#include "types.h"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/CWorkUtil.hpp"

//size: 0x1c8
class CDevice : public CWorkThread {
public:
    CDevice(const char* name, CWorkThread* workThread) : CWorkThread(name, workThread, 0x20) {
        sInstance = this;
        mType = WORKTHREAD_CDEVICE;
    }

    virtual ~CDevice();
    static CDevice* getInstance();
    static int func_8044D058();
    static int func_8044D060();
    static u32 func_8044D068();
    static u32 func_8044D248();
    static bool func_8044D438();
    static void initDevices();
    virtual bool wkStartup();
    virtual bool wkShutdown();
    static CDevice* create();
    static void createRegions();
    static void deleteRegions();

    static CDevice* init(const char* name, CWorkThread* workThread){
        CDevice* cDevice = new (CWorkThreadSystem::getWorkMem()) CDevice(name, workThread);
        CWorkUtil::entryWork(cDevice, workThread, 0);
        return cDevice;
    }

    inline bool inline1(){
        bool r0 = IsRunning();
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

protected:
    static CDevice* sInstance;
};

namespace{
    //size: 0x1c8
    class CDeviceException : public CWorkThread {
    public:
        CDeviceException(const char* name, CWorkThread* workThread) : CWorkThread(name, workThread, 0x40) {
            sInstance = this;
        }
        virtual ~CDeviceException();
        virtual bool wkShutdown();
        static CDeviceException* getInstance();

        static CDeviceException* init(const char* name, CWorkThread* workThread){
            CDeviceException* deviceException = new (CWorkThreadSystem::getWorkMem()) CDeviceException(name, workThread);
            CWorkUtil::entryWork(deviceException, workThread, 0);
            return deviceException;
        }

        //0x0: vtable
        //0x0-1c4: CWorkThread
        u32 unk1C4;

    protected:
        static CDeviceException* sInstance;
    };
}
