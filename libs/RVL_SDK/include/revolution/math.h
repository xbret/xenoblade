#ifndef _REVOSDK_MATH_H
#define _REVOSDK_MATH_H

#include "types.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/fdlibm.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/math_api.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#ifndef __MWERKS__
// Get clangd to shut up about __fabs being undefined.
#define __fabs(x)    (x)
#define __frsqrte(x) (x)
#endif

#define FABS(x) (float)__fabs(x)
#define fabs(x) __fabs(x)
// #define __frsqrtes opword

#define SQUARE(v) ((v) * (v))

#define TAU     6.2831855f
#define M_PI    3.1415927f
#define HALF_PI 1.5707964f

#define LONG_TAU 6.2831854820251465

inline float cosf(float x){
    return (float)cos(x);
}

inline float sinf(float x){
    return (float)sin(x);
}

inline float tanf(float x){
    return (float)tan(x);
}

inline float acosf(float x){
    return (float)acos(x);
}

inline float sqrtf(float x){
    return (float)sqrt(x);
}

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
