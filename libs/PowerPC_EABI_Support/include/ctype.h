#ifndef _CTYPE_H
#define _CTYPE_H

#include "types.h"
#include "locale.h"

#ifdef __cplusplus
extern "C" {
#endif

extern const unsigned short __ctype_mapC[256];
extern const unsigned char __lower_mapC[256];
extern const unsigned char __upper_mapC[256];

__declspec(weak) static inline int isalpha(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & 0x1);
}

__declspec(weak) static inline int isdigit(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & 0x8);
}

__declspec(weak) static inline int isspace(int c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & 0x100); 
}

__declspec(weak) static inline int isupper(int c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & 0x200); 
}

__declspec(weak) static inline int isxdigit(int c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & 0x400); 
}

__declspec(weak) static inline int tolower(int c) {
    return (c < 0 || c >= 256) ? c : (int)(&_current_locale)->ctype_cmpt_ptr->lower_map_ptr[c];
}
__declspec(weak) static inline int toupper(int c) {
    return (c < 0 || c >= 256) ? c : (int)(&_current_locale)->ctype_cmpt_ptr->upper_map_ptr[c];
}

#ifdef __cplusplus
}
#endif
#endif
