#ifndef RVL_SDK_OS_CONTEXT_H
#define RVL_SDK_OS_CONTEXT_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSContext {
    u32 gprs[32]; // at 0x0
    u32 cr;       // at 0x80
    u32 lr;       // at 0x84
    u32 ctr;      // at 0x88
    u32 xer;      // at 0x8C
    f64 fprs[32]; // at 0x90
    // Bits 0-31 are undefined
    u32 fpscr_tmp; // at 0x190
    u32 fpscr;     // at 0x194
    u32 srr0;      // at 0x198
    u32 srr1;      // at 0x19C
    u16 SHORT_0x1A0;
    u16 SHORT_0x1A2;
    u32 gqrs[8]; // at 0x1A4
    char UNK_0x1C4[0x4];
    f64 psfs[32]; // at 0x1C8
} OSContext;

OSContext* OS_CURRENT_CONTEXT_PHYS : 0x800000C0;
OSContext* OS_CURRENT_CONTEXT : 0x800000D4;
OSContext* OS_CURRENT_FPU_CONTEXT : 0x800000D8;

void OSSaveFPUContext(OSContext*);
void OSSetCurrentContext(OSContext*);
OSContext* OSGetCurrentContext(void);
BOOL OSSaveContext(OSContext*);
void OSLoadContext(OSContext*);
void* OSGetStackPointer(void);
void OSSwitchFiber(void*, void*);
void OSSwitchFiberEx(u32, u32, u32, u32, void*, void*);
void OSClearContext(OSContext*);
void OSInitContext(OSContext*, void*, void*);
void OSDumpContext(const OSContext*);
void __OSContextInit(void);

#ifdef __cplusplus
}
#endif
#endif