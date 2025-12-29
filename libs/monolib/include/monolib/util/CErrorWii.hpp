#pragma once

#include <types.h>
#include "monolib/util/fixed_vector.hpp"
#include <revolution/OS.h>
#include <revolution/VI.h>

extern void func_8044487C();

class CErrorWii {
public:
    CErrorWii();
    ~CErrorWii();

    static void entrySomething(UNKTYPE* r3);
    static void removeSomething(UNKTYPE* r3);

    static void initialize();
    static void destroy();

    static void errorHandler(u8 error, OSContext* ctx, u32 dsisr, u32 dar);
    static void postExceptionCallback();

    static void powerCallback();
    static bool powerCallbackCalled();
    static void resetCallback();
    static bool func_804EE48C();

private:
    static void setErrorHandler(u16 error);
    static void resetErrorHandler(u16 error);

    mtl::fixed_vector<void*, 8> unk0;
    u8 unk24[4]; //part of previous class?
    OSContext mContext; //0x28
    u16 unk2F0;
    u32 unk2F4;
    u32 unk2F8;

    static CErrorWii* spInstance;
    static bool sPowerCallbackCalled;
    static bool sResetCallbackCalled;
};

//TODO: find a better place to put this (also gets used in CLibHbmControl and CWorkSystem)
static inline void resetGame(){
    func_8044487C();

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
