
#ifndef STL_WCTYPE_H
#define STL_WCTYPE_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef unsigned short wchar_t;

extern const unsigned short __wctype_mapC[256];
extern const wchar_t __wlower_mapC[256];
extern const wchar_t __wupper_mapC[256];

#ifdef __cplusplus
}
#endif
#endif
