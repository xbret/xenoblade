
#ifndef STL_CTYPE_H
#define STL_CTYPE_H
#include "types.h"
#include "stl/locale.h"
#ifdef __cplusplus
extern "C" {
#endif

extern const unsigned short __ctype_mapC[256];
extern const unsigned char __lower_mapC[256];
extern const unsigned char __upper_mapC[256];

__declspec(weak) static inline int tolower(int x) {
    return (x < 0 || x >= 256)
               ? x
               : (int)(&_current_locale)->ctype_cmpt_ptr->lower_map_ptr[x];
}
__declspec(weak) static inline int toupper(int x) {
    return (x < 0 || x >= 256)
               ? x
               : (int)(&_current_locale)->ctype_cmpt_ptr->upper_map_ptr[x];
}

#ifdef __cplusplus
}
#endif
#endif