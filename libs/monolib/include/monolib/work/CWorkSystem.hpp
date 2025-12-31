#pragma once

#include "monolib/work/CWorkThread.hpp"
#include "monolib/util/PtrSingleton.hpp"

class CWorkSystem : public CWorkThread {
public:
    typedef void (*ExitFunc)();

public:
    CWorkSystem(const char *pName, CWorkThread *pParent);
    ~CWorkSystem();

    static CWorkSystem* getInstance();
    static bool func_804444DC();
    static u32 func_80444514();
    static void func_80444520(bool value);

    virtual void wkUpdate();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();

    static CWorkSystem* create();
    DECL_WORKTHREAD_CREATE(CWorkSystem);

    static void setExitFunc(ExitFunc func);
    static void callExitFunc();

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;
    u8 unk1C8;
    u8 unk1C9;
    u8 unk1CA;
    u8 unk1CB[0x1D0 - 0x1CB];

private:
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
