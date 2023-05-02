#ifndef RVL_SDK_GX_FIFO_H
#define RVL_SDK_GX_FIFO_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXFifoObj {
    void* base;        // at 0x0
    void* end;         // at 0x4
    u32 size;          // at 0x8
    void* hiWatermark; // at 0xC
    void* loWatermark; // at 0x10
    void* readPtr;     // at 0x14
    void* writePtr;    // at 0x18
    u32 count;         // at 0x1C
    u8 wrap;           // at 0x20
    char UNK_0x21[0x80 - 0x21];
} GXFifoObj;

void GXSetCPUFifo(GXFifoObj*);
BOOL GXGetCPUFifo(GXFifoObj*);

u32 GXGetFifoCount(GXFifoObj*);
u8 GXGetFifoWrap(GXFifoObj*);

#ifdef __cplusplus
}
#endif
#endif
