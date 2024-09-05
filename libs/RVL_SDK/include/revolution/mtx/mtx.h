#ifndef RVL_SDK_MTX_MTX_H
#define RVL_SDK_MTX_MTX_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef float Mtx[3][4];
typedef float Mtx44[4][4];

typedef struct Vec {
    float x, y, z;
} Vec;

typedef struct Quaternion {
    float x, y, z, w;
} Quaternion;

#define MTXDegToRad(a) ((a)*0.01745329252f)

void PSMTXIdentity(Mtx);
void PSMTXCopy(const Mtx, Mtx);
void PSMTXConcat(const Mtx, const Mtx, Mtx);
void PSMTXConcatArray(const Mtx, const Mtx, Mtx, u32);
void PSMTXTranspose(const Mtx, Mtx);
void PSMTXInverse(const Mtx, Mtx);
void PSMTXInvXpose(const Mtx, Mtx);
void PSMTXRotRad(Mtx, char, float);
void PSMTXRotTrig(Mtx, char, float, float);
void PSMTXRotAxisRad(Mtx, const struct Vec*, float);
void PSMTXTrans(Mtx, float, float, float);
void PSMTXTransApply(const Mtx, Mtx, float, float, float);
void PSMTXScale(Mtx, float, float, float);
void PSMTXScaleApply(const Mtx, Mtx, float, float, float);
void PSMTXQuat(Mtx, const Quaternion*);

void C_MTXLookAt(Mtx, const Vec*, const Vec*, const Vec*);
void C_MTXLightFrustum(Mtx, float, float, float, float, float, float, float, float, float);
void C_MTXLightPerspective(Mtx, float, float, float, float, float, float);
void C_MTXLightOrtho(Mtx, float, float, float, float, float, float, float, float);

#ifdef __cplusplus
}
#endif

#endif
