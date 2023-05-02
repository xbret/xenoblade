#ifndef AX_H
#define AX_H

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct _AXPBADPCM {
    s16 a[8][2]; //0x0
    u16 gain; //0x20
    u16 pred_scale; //0x22
    u16 yn1; //0x24
    u16 yn2; //0x26
} AXPBADPCM;

#ifdef __cplusplus
}
#endif
#endif
