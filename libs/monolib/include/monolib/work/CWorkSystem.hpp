#pragma once

#include "monolib/work/CWorkThread.hpp"
#include "monolib/util.hpp"

class CWorkSystem : public CWorkThread {
public:
    typedef void (*ExitFunc)();

public:
    CWorkSystem(const char *pName, CWorkThread *pParent);
    virtual ~CWorkSystem();

    static CWorkSystem* getInstance();
    static bool isOff();
    static mtl::ALLOC_HANDLE getMem();
    static bool isPowerOff();
    static bool isReset();
    static void setSaveLoadInvalidReset(bool state);

    virtual void wkUpdate();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();

    static CWorkSystem* create();
    DECL_WORKTHREAD_CREATE(CWorkSystem);

    static void setExitFunc(ExitFunc func);
    static void callExitFunc();

private:
    //0x0: vtable
    //0x0-1c4: CWorkThread
    mtl::ALLOC_HANDLE mMemHandle; //0x1C4
    bool mPowerOff; //0x1C8
    bool mReset; //0x1C9
    bool mSaveLoadInvalidReset; //0x1CA
    u8 unk1CB[0x1D0 - 0x1CB];

    static CWorkSystem* spInstance;
    static ExitFunc sExitFunc;
};

//TODO: find a better place to put this (gets used in CLibHbmControl, CWorkSystem, and CErrorWii)
static inline void resetGame(){
    CWorkSystem::callExitFunc();

    //Set the screen to black
    VISetBlack(VI_TRUE);
    VIFlush();

    //Wait for 6 frames for whatever reason
    VIWaitForRetrace();
    VIWaitForRetrace();
    VIWaitForRetrace();
    VIWaitForRetrace();
    VIWaitForRetrace();
    VIWaitForRetrace();

    //Restart
    OSReport("exit wii reset\n");
    OSRestart(0);
}

static inline void shutdownGame(){
    CWorkSystem::callExitFunc();

    //Set the screen to black
    VISetBlack(VI_TRUE);
    VIFlush();

    //Wait for 6 frames for whatever reason
    VIWaitForRetrace();
    VIWaitForRetrace();
    VIWaitForRetrace();
    VIWaitForRetrace();
    VIWaitForRetrace();
    VIWaitForRetrace();

    //Restart
    OSReport("exit wii power off\n");
    OSShutdownSystem();
}
