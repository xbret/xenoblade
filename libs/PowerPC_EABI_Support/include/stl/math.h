#ifndef _MATH_H
#define _MATH_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#include "PowerPC_EABI_Support/MSL_C/MSL_Common/math_api.h"

extern int __float_nan[];
extern int __float_huge[];
extern int __double_huge[];

#define INFINITY (*(float*) __float_huge)	
#define NAN (*(float*) __float_nan)
#define HUGE_VAL (*(double*) __double_huge)


#define FP_NAN 1
#define FP_INFINITE 2
#define FP_ZERO 3
#define FP_NORMAL 4
#define FP_SUBNORMAL 5

int __signbitf(float);
int __fpclassifyf(float);
int __signbitd(double);
int __fpclassifyd(double);


#define fpclassify(x) ((sizeof(x) == sizeof(float)) ? __fpclassifyf((float)(x)) : __fpclassifyd((double)(x)))
#define signbit(x) ((sizeof(x) == sizeof(float)) ? __signbitf((float)(x)) : __signbitd((double)(x)))

#define isfinite(x) ((fpclassify(x) > FP_INFINITE))
#define isnan(x) (fpclassify(x) == FP_NAN)
#define isnormal(x) (fpclassify(x) == FP_NORMAL)

inline long double fabsl(long double x) {
    return  __fabs((double)x);
}

double acos(double);
double asin(double);
double atan(double);
double atan2(double, double);
double ceil(double);
double floor(double);
double frexp(double, int *);
double ldexp(double, int);
double sqrt(double);
double pow(double, double);
double log(double);
double log10(double);
double fmod(double, double);
double sin(double x);
double cos(double x);
double tan(double x);
double nan(const char*);

double __ieee754_acos(double);
double __ieee754_fmod(double, double);
double __ieee754_log(double);
double __ieee754_log10(double);
double __ieee754_pow(double, double);
double __ieee754_sqrt(double);
double __ieee754_atan2(double, double);
double __ieee754_asin(double);

double copysign(double, double);
double scalbn(double, int);

double __kernel_sin(double, double, int);
double __kernel_cos(double, double);
double __kernel_tan(double, double, int);

int __ieee754_rem_pio2(double, double *);

float sqrtf(float);
float cosf(float);
float sinf(float);
float tanf(float);
double modf(double, double*);
float fabsf(float);

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
