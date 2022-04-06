#ifndef AXFX_SRCCOEF_H
#define AXFX_SRCCOEF_H

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct SrcCoef{
    float unk0;
    float unk4;
    float unk8;
    float unkC;
} SrcCoef;

SrcCoef* __AXFXGetSrcCoef(int index);


#ifdef __cplusplus
}
#endif
#endif
