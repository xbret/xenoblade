#include "RevoSDK/NWC24.h"
#include "RevoSDK/OS.h"

void __OSInitNet(void) {
    s32 error;
    OSIOSRev rev;

    __OSGetIOSRev(&rev);

    if (rev.idLo <= 4 || rev.idLo == 9) {
        return;
    }

    error = NWC24iPrepareShutdown();
    if (error != 0) {
        if (error < 0) {
            OSReport("Failed to register network shutdown function. %d\n",
                     error);
        }

        error = NWC24SuspendScheduler();
        if (error < 0) {
            OSReport("Failed to suspend the WiiConnect24 scheduler. %d\n",
                     error);
        }
    }

    error = NWC24iSynchronizeRtcCounter();
    if (error != 0) {
        OSReport(
            "Failed to synchronize time with network resource managers. %d\n",
            error);
    }
}

//unused
void __OSSyncTimeWithNetRM(){
}

//unused
void REXInit(){
}

void NWC24iPrepareShutdown(){
}

void NWC24iSynchronizeRtcCounter(){
}

void NWC24SuspendScheduler(){
}

//unused
void NWC24ResumeScheduler(){
}

void NWC24iRequestShutdown(){
}

void NWC24Shutdown_(){
}

void NWC24iSetRtcCounter_(){
}

void CallbackAsyncIpc(){
}

CW_FORCE_STRINGS(OSNet_c, "NWC24iPrepareShutdown", "/dev/net/kd/request",
                 "NWC24SuspendScheduler", "NWC24ResumeScheduler",
                 "NWC24iRequestShutdown", "NWC24Shutdown_: Give up!\n",
                 "NWC24iSetRtcCounter_", "/dev/net/kd/time");