#pragma once

#include <types.h>
#include "monolib/util/fixed_vector.hpp"
#include <revolution/OS.h>
#include <revolution/VI.h>

class IErrorWii {
public:
    IErrorWii(){}
    virtual ~IErrorWii(){}
    virtual void errorWiiCB() = 0;
};

class CErrorWii {
public:
    CErrorWii();
    ~CErrorWii();

    static void addCallback(IErrorWii* pError);
    static void removeCallback(IErrorWii* pError);

    static void initialize();
    static void destroy();

    static void errorHandler(u8 error, OSContext* ctx, u32 dsisr, u32 dar);
    static void postExceptionCallback();

    static void powerCallback();
    static bool isPowerCallbackCalled();
    static void resetCallback();
    static bool isResetCallbackCalled();

private:
    static void setErrorHandler(u16 error);
    static void resetErrorHandler(u16 error);

    //Unused in release
    mtl::fixed_vector<IErrorWii*, 8> mCallbackList; //0x0
    u8 unk24[4]; //part of previous class?
    OSContext mContext; //0x28
    u16 unk2F0;
    u32 unk2F4;
    u32 unk2F8;

    static CErrorWii* spInstance;
    static bool sPowerCallbackCalled;
    static bool sResetCallbackCalled;
};
