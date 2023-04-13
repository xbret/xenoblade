#ifndef _MSL_FLOAT_H
#define _MSL_FLOAT_H

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

extern const float __float_nan[];
extern const float __float_huge[];
/*
extern const double __double_max;
*/
extern const double __double_huge[];
/*
extern const double __extended_min;
extern const double __extended_max;
extern const float __float_max[];
extern const float __float_epsilon;
*/

#define DBL_DIG 15
#define DBL_MAX 0x1.fffffffffffffP1023
#define DBL_MIN 0x1.0000000000000P-1022
#define INFINITY (*(float*) __float_huge)	
#define NAN (*(float*) __float_nan)
#define HUGE_VAL (*(double*) __double_huge) 

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
