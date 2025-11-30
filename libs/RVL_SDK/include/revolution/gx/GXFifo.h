#ifndef RVL_SDK_GX_FIFO_H
#define RVL_SDK_GX_FIFO_H
#include <types.h>

#include <revolution/GX/GXInternal.h>

#include <revolution/OS.h>
#ifdef __cplusplus
extern "C" {
#endif

GX_PUBLIC_STRUCT_DECL(GXFifoObj, 128);

typedef void (*GXBreakPtCallback)(void);

void GXGetGPStatus(GXBool* overhi, GXBool* underlow, GXBool* readIdle,
                   GXBool* cmdIdle, GXBool* brkpt);
void GXGetFifoStatus(GXFifoObj* fifo, GXBool* overhi, GXBool* underlow, u32* fifoCount,
                     GXBool* cpu_write, GXBool* gp_read, GXBool* fifowrap);

void GXSetCPUFifo(GXFifoObj*);
void GXSetGPFifo(GXFifoObj*);
GXBool GXGetCPUFifo(GXFifoObj*);
GXBool GXGetGPFifo(GXFifoObj*);
void GXSaveCPUFifo(GXFifoObj*);

void GXGetFifoPtrs(const GXFifoObj*, void** readPtr, void** writePtr);
void GXInitFifoBase(GXFifoObj* fifo, void* base, u32 size);
void GXInitFifoLimits(GXFifoObj* fifo, u32 hiWaterMark, u32 loWaterMark);
GXBreakPtCallback GXSetBreakPtCallback(GXBreakPtCallback cb);
void GXEnableBreakPt(void* breakPt);
void GXDisableBreakPt(void);

u32 GXGetFifoCount(GXFifoObj*);
u8 GXGetFifoWrap(GXFifoObj*);

void GXEnableBreakPt(void* writePtr);
void GXDisableBreakPt(void);

OSThread* GXGetCurrentGXThread(void);

#ifdef __cplusplus
}
#endif
#endif
