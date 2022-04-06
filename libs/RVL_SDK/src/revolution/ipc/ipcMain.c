#include "revolution/IPC.h"
#include "revolution/OS.h"

static u8 Initialized = FALSE;
static void* IPCCurrentBufferLo = NULL;
static void* IPCCurrentBufferHi = NULL;
static void* IPCBufferLo = NULL;
static void* IPCBufferHi = NULL;

void IPCInit(void) {
    if (!Initialized) {
        IPCBufferHi = __OSGetIPCBufferHi();
        IPCBufferLo = __OSGetIPCBufferLo();
        IPCCurrentBufferHi = IPCBufferHi;
        IPCCurrentBufferLo = IPCBufferLo;
        Initialized = TRUE;
    }
}

void IPCReInit(void) {
    Initialized = FALSE;
    IPCBufferHi = __OSGetIPCBufferHi();
    IPCBufferLo = __OSGetIPCBufferLo();
    IPCCurrentBufferHi = IPCBufferHi;
    IPCCurrentBufferLo = IPCBufferLo;
    Initialized = TRUE;
}

u32 IPCReadReg(s32 index) { return IPC_HW_REGS[index]; }

void IPCWriteReg(s32 index, u32 value) { IPC_HW_REGS[index] = value; }

void* IPCGetBufferHi(void) { return IPCCurrentBufferHi; }

void* IPCGetBufferLo(void) { return IPCCurrentBufferLo; }

//unused
void IPCSetBufferHi(void* hi) {IPCCurrentBufferHi = hi; }

void IPCSetBufferLo(void* lo) { IPCCurrentBufferLo = lo; }
