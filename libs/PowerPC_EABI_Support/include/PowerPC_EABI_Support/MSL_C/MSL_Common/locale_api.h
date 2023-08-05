#ifndef _MSL_LOCALE_API_H
#define _MSL_LOCALE_API_H

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef int (*__decode_mbyte)(wchar_t*, const char*, size_t);
typedef int (*__encode_mbyte)(char*, wchar_t);

#ifdef __cplusplus
}
#endif
#endif
