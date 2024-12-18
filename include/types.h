#ifndef _TYPES_H
#define _TYPES_H

#ifndef __cplusplus
#include <stdarg.h>
#include <stddef.h>
#else
#include <cstdarg>
#include <cstddef>
#include <new>
#endif

#include "decomp.h"
#include "macros.h"

typedef unsigned long long u64;
typedef signed long long s64;

typedef unsigned long u32;
typedef signed long s32;

typedef unsigned short u16;
typedef signed short s16;

typedef unsigned char u8;
typedef signed char s8;

typedef float f32;
typedef double f64;

typedef unsigned int uint;

typedef int UNKWORD;
typedef void UNKTYPE;

#define FALSE 0
#define TRUE 1
typedef int BOOL;

//Make VSCode shut up
#ifndef __MWERKS__
typedef int __vec2x32float__;
#endif

#endif
