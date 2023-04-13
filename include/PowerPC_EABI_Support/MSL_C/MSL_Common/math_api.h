#ifndef _MSL_MATH_API_H
#define _MSL_MATH_API_H

#include "types.h"


#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

int __fpclassifyf(float);
int __signbitd(double);
int __fpclassifyd(double);


#define fpclassify(x) ((sizeof(x) == sizeof(float)) ? __fpclassifyf((float)(x)) : __fpclassifyd((double)(x)))

#define isfinite(x) ((fpclassify(x) > 2))

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
