#include "monolib/util.hpp"
#include "monolib/work.hpp"
#include <revolution/BASE.h>
#include <revolution/OS.h>
#include <revolution/VI.h>

CErrorWii* CErrorWii::spInstance;
bool CErrorWii::sPowerCallbackCalled;
bool CErrorWii::sResetCallbackCalled;

CErrorWii::CErrorWii() {
    spInstance = this;
    sPowerCallbackCalled = false;
    sResetCallbackCalled = false;
    OSSetPowerCallback(powerCallback);
    OSSetResetCallback(resetCallback);
}

CErrorWii::~CErrorWii(){
    spInstance = nullptr;
}

void CErrorWii::addCallback(IErrorWii* pError){
    spInstance->mCallbackList.push_back(pError);
}

//This feels like it should be an inline from fixed_vector (probably erase), but it uses spInstance multiple times...
void CErrorWii::removeCallback(IErrorWii* pError){
    int index = 0;

    //Search the list for a matching entry
    for(int i = 0; i < spInstance->mCallbackList.size(); i++){
        if(spInstance->mCallbackList[i] == pError){
            //Shift all elements that come after left by 1 to remove the entry
            while(index < (int)spInstance->mCallbackList.mCount - 1){
                IErrorWii** entry = &spInstance->mCallbackList[index++];
                entry[0] = entry[1];
            }

            spInstance->mCallbackList.mCount--;
            return;
        }

        index++;
    }

}

inline void CErrorWii::setErrorHandler(u16 error){
    /* NOTE: This casts to the error handler type to allow the variable arguments to be ignored in the
    handler function instead of properly keeping them. While it doesn't cause issues, it's still
    not great regardless. Maybe it was done to reduce the size of the function? */
    OSErrorHandler handler = (OSErrorHandler)errorHandler;
    OSSetErrorHandler(error, handler);
}

inline void CErrorWii::resetErrorHandler(u16 error){
    OSSetErrorHandler(error, nullptr);
}

void CErrorWii::initialize(){
    /* Override the default fpscr bits. This disables overflow (OE), underflow (UE), and inexact (XE) floating point exceptions
    compared to the default value set in the SDK. */
    __OSFpscrEnableBits = FPSCR_VE | FPSCR_ZE;

    //Set error handlers
    setErrorHandler(OS_ERR_SYSTEM_RESET);
    setErrorHandler(OS_ERR_MACHINE_CHECK);
    setErrorHandler(OS_ERR_DSI);
    setErrorHandler(OS_ERR_ISI);
    setErrorHandler(OS_ERR_ALIGNMENT);
    setErrorHandler(OS_ERR_PERF_MONITOR);
    setErrorHandler(OS_ERR_SMI);
    setErrorHandler(OS_ERR_PROTECTION);
}

void CErrorWii::destroy(){
    //Reset error handlers
    resetErrorHandler(OS_ERR_SYSTEM_RESET);
    resetErrorHandler(OS_ERR_MACHINE_CHECK);
    resetErrorHandler(OS_ERR_DSI);
    resetErrorHandler(OS_ERR_ISI);
    resetErrorHandler(OS_ERR_ALIGNMENT);
    resetErrorHandler(OS_ERR_PERF_MONITOR);
    resetErrorHandler(OS_ERR_SMI);
    resetErrorHandler(OS_ERR_PROTECTION);
    //Doesn't get set in the initialization function above (probably got stubbed)
    resetErrorHandler(OS_ERR_FP_EXCEPTION);
}

//This function should have the variable arguments parameter
void CErrorWii::errorHandler(u8 error, OSContext* ctx, u32 dsisr, u32 dar){
    OSDumpContext(ctx);

    /* Save the GPRs, common PPC registers, and the other 3 parameters. These never end up getting used
    by any other functions in release, but likely originally did. */
    for(int i = 0; i < 32; i++){
        spInstance->mContext.gprs[i] = ctx->gprs[i];
    }

    spInstance->mContext.cr = ctx->cr;
    spInstance->mContext.lr = ctx->lr;
    spInstance->mContext.ctr = ctx->ctr;
    spInstance->mContext.xer = ctx->xer;
    spInstance->mContext.srr0 = ctx->srr0;
    spInstance->mContext.srr1 = ctx->srr1;
    spInstance->mContext.fpscr = ctx->fpscr;

    spInstance->unk2F0 = error;
    spInstance->unk2F4 = dsisr;
    spInstance->unk2F8 = dar;

    //Set the function to return to after handling exceptions
    ctx->srr0 = (u32)postExceptionCallback;
}

void CErrorWii::postExceptionCallback(){
    resetGame();
}

//Stubbed?
void CErrorWii::powerCallback(){
    sPowerCallbackCalled = true;
}

bool CErrorWii::isPowerCallbackCalled(){
    return sPowerCallbackCalled;
}

//Stubbed?
void CErrorWii::resetCallback(){
    sResetCallbackCalled = true;
}

bool CErrorWii::isResetCallbackCalled(){
    return sResetCallbackCalled;
}

/* BUG: Monolithsoft likely overrode this to be able to do things with the error messages
themselves (such as saving them to a log file, printing them without the game shutting
down, etc...), but all such potential code was removed for release, including the PPCHalt call
at the end (or some other way of stopping any more code from running). As a result,
any calls to OSPanic will effectively do nothing, and the game will continue to run instead of
properly halting. It shouldn't ever get called though, so it's fine, right? :) */
void OSPanic(const char *file, int line, const char *msg, ...){
    va_list list;
    int length;
    char buffer[4096];

    //Write the error message to the string buffer instead of printing it with OSReport
    va_start(list, msg);
    length = vsprintf(buffer, msg, list);
    va_end(list);

    sprintf(&buffer[length], " in \"%s\" on line %d.\n", file, line);

    //Does absolutely nothing with the error message, and doesn't halt...
#if defined(BUGFIX)
    OSReport(buffer);

    OSReport("\nAddress:      Back Chain    LR Save\n");
    for (depth = 0, sp = (u32*)OSGetStackPointer();
         sp != NULL && sp != (u32*)0xFFFFFFFF && depth++ < 16; sp = (u32*)*sp) {
        OSReport("0x%08x:   0x%08x    0x%08x\n", sp, sp[0], sp[1]);
    }

    PPCHalt();
#endif
}
