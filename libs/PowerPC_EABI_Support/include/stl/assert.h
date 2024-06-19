#ifndef _ASSERT_H
#define _ASSERT_H

#ifdef __cplusplus
extern "C" {
#endif

#include "PowerPC_EABI_Support/MSL_C/MSL_Common/assert_api.h"

#define assert(condition) ((condition) ? ((void)0) : __msl_assertion_failed(#condition, __FILE__, 0, __LINE__))

#ifdef __cplusplus
}
#endif

#endif
