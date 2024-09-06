#ifndef RVL_SDK_AXFX_SRC_COEF_H
#define RVL_SDK_AXFX_SRC_COEF_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef struct SrcCoef{
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
} SrcCoef;

SrcCoef* __AXFXGetSrcCoef(u32 i);


#ifdef __cplusplus
}
#endif
#endif
