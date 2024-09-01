#ifndef RVL_SDK_MTX_MTX44_H
#define RVL_SDK_MTX_MTX44_H
#include "revolution/mtx/mtx.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void PSMTX44Copy(Mtx44, Mtx44);

void C_MTXFrustum(Mtx44 mtx, float t, float b, float l, float r, float n, float f);
void C_MTXPerspective(Mtx44 mtx, float fovy, float aspect, float n, float f);
void C_MTXOrtho(Mtx44 mtx, float t, float b, float l, float r, float n, float f);

#ifdef __cplusplus
}
#endif
#endif
