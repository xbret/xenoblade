#ifndef _TYPES_H
#define _TYPES_H

#include "macros.h"

typedef int BOOL;

typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int uint;
typedef unsigned long u32;
typedef unsigned long size_t;
typedef unsigned long long u64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;
typedef volatile f32 vf32;
typedef volatile f64 vf64;

typedef u32 unknown;

typedef unsigned int uintptr_t; // Manually added

typedef void (*funcptr_t)(void);

#ifndef __cplusplus
typedef unsigned short wchar_t;
#endif

// Basic defines to allow newer-like C++ code to be written
#define TRUE 1
#define FALSE 0
//#define NULL ((void*)0)
#define NULL 0
#define nullptr 0

// For functions that return 0 on a success and -1 on failure
#ifndef EXIT_SUCCESS
#define EXIT_SUCCESS 0
#define EXIT_FAILURE -1
#endif // ifndef EXIT_SUCCESS

#define ASSERT_HANG(cond) \
	if (!(cond)) {        \
		while (true) { }  \
	}

#endif
