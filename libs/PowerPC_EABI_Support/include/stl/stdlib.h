#ifndef _STDLIB_H
#define _STDLIB_H

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#include "PowerPC_EABI_Support/MSL_C/MSL_Common/alloc.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/arith.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/mbstring.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/rand.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/strtold.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/strtoul.h"

// For functions that return 0 on a success and -1 on failure
#ifndef EXIT_SUCCESS
#define EXIT_SUCCESS 0
#define EXIT_FAILURE -1
#endif // ifndef EXIT_SUCCESS

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
