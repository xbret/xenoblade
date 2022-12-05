
#ifndef RVL_SDK_EXI_COMMON_H
#define RVL_SDK_EXI_COMMON_H
#include "RevoSDK/os/OSContext.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    EXI_STATE_DMA_ACCESS = (1 << 0),
    EXI_STATE_IMM_ACCESS = (1 << 1),
    EXI_STATE_SELECTED = (1 << 2),
    EXI_STATE_ATTACHED = (1 << 3),
    EXI_STATE_LOCKED = (1 << 4),

    EXI_STATE_BUSY = EXI_STATE_DMA_ACCESS | EXI_STATE_IMM_ACCESS
} EXIState;

typedef enum { EXI_CHAN_0, EXI_CHAN_1, EXI_CHAN_2, EXI_MAX_CHAN } EXIChannel;

typedef enum { EXI_READ, EXI_WRITE, EXI_TYPE_2, EXI_MAX_TYPE } EXIType;

typedef void (*EXICallback)(EXIChannel, OSContext*);

extern const u32 __EXIFreq;

static inline u32 __EXISwap32(u32 val) {
    return val >> 24 & 0x000000FF | val >> 8 & 0x0000FF00 |
           val << 8 & 0x00FF0000 | val << 24 & 0xFF000000;
}

BOOL EXIWriteReg(EXIChannel, u32, s32, const void*, s32);

#ifdef __cplusplus
}
#endif
#endif