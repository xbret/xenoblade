#ifndef RVL_SDK_AXFX_SRC_COEF_H
#define RVL_SDK_AXFX_SRC_COEF_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef struct SrcCoef{
    float unk0;
    float unk4;
    float unk8;
    float unkC;
} SrcCoef;

SrcCoef* __AXFXGetSrcCoef(u32 i);


#ifdef __cplusplus
}
#endif
#endif
