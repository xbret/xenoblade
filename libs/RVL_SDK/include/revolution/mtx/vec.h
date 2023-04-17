#ifndef _REVOSDK_VEC_H
#define _REVOSDK_VEC_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

typedef struct Vec {
	float x;
	float y;
	float z;
} Vec;

void PSVECAdd(const Vec*, const Vec*, Vec*);
void PSVECScale(const Vec*, Vec*, float);
void PSVECNormalize(const Vec*, Vec*);
float PSVECSquareDistance(const Vec*, const Vec*);
float PSVECMag(const Vec*);
float PSVECDotProduct(const Vec*, const Vec*);
void PSVECCrossProduct(const Vec*, const Vec*, Vec*);
void C_VECHalfAngle(const Vec*, const Vec*, Vec*);

#ifdef __cplusplus
}
#endif

#endif
