#ifndef STL_MBSTRING_H
#define STL_MBSTRING_H

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef unsigned short wchar_t;

int __mbtowc_noconv(wchar_t*, const char*, size_t);
int __wctomb_noconv(char*, wchar_t);

#ifdef __cplusplus
}
#endif
#endif
