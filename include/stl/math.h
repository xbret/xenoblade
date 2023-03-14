#ifndef _MATH_H
#define _MATH_H

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#define PI 3.14159265


float sqrtf(float);
int __fpclassifyf(float);
int __signbitd(double);
int __fpclassifyd(double);

#define fpclassify(x) ((sizeof(x) == sizeof(float)) ? __fpclassifyf((float)(x)) : __fpclassifyd((double)(x)))

#define isfinite(x) ((fpclassify(x) > 2))


#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
