#ifndef RVL_SDK_MTX_MTXVEC_H
#define RVL_SDK_MTX_MTXVEC_H
#include <revolution/mtx/mtx.h>
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

void PSMTXMultVec(const Mtx mtx, const Vec* vec, Vec* out);
void PSMTXMultVecSR(const Mtx, const Vec*, Vec*);
void PSMTXMultVecArraySR();

#ifdef __cplusplus
}
#endif
#endif
