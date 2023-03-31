#ifndef _WCHAR_H
#define _WCHAR_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

void wmemcpy(wchar_t* dest, const wchar_t* src, size_t n);
wchar_t* wmemchr(wchar_t* s, wchar_t c, int n);

void* memmove(void*, const void*, size_t);

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
