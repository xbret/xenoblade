#ifndef RVL_SDK_MTX_VEC_H
#define RVL_SDK_MTX_VEC_H
#include "revolution/mtx/mtx.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

void PSVECAdd(const Vec* a, const Vec* b, Vec* sum);
void PSVECScale(const Vec* in, Vec* out, float scale);
void PSVECNormalize(const Vec* in, Vec* out);
float PSVECMag(const Vec* v);
float PSVECDotProduct(const Vec* a, const Vec* b);
void PSVECCrossProduct(const Vec* a, const Vec* b, Vec* prod);
float PSVECSquareDistance(const Vec* a, const Vec* b);
void C_VECHalfAngle(const Vec* a, const Vec* b, Vec* half);

#ifdef __cplusplus
}
#endif
#endif
