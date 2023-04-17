#ifndef _WCTYPE_H
#define _WCTYPE_H
#include "types.h"
#include "locale.h"
#ifdef __cplusplus
extern "C" {
#endif

extern const unsigned short __wctype_mapC[256];
extern const wchar_t __wlower_mapC[256];
extern const wchar_t __wupper_mapC[256];


__declspec(weak) static inline int iswalpha(wint_t c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->wctype_map_ptr[c] & 0x1);
}

__declspec(weak) static inline int iswdigit(wint_t c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->wctype_map_ptr[c] & 0x8);
}

__declspec(weak) static inline int iswspace(wint_t c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->wctype_map_ptr[c] & 0x100); 
}

__declspec(weak) static inline int iswupper(wint_t c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->wctype_map_ptr[c] & 0x200); 
}

__declspec(weak) static inline int iswxdigit(wint_t c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->wctype_map_ptr[c] & 0x400); 
}

__declspec(weak) static inline wint_t towlower(wint_t c) {
    return (c < 0 || c >= 256) ? c : (int)(&_current_locale)->ctype_cmpt_ptr->wlower_map_ptr[c];
}
__declspec(weak) static inline wint_t towupper(wint_t c) {
    return (c < 0 || c >= 256) ? c : (int)(&_current_locale)->ctype_cmpt_ptr->wupper_map_ptr[c];
}

#ifdef __cplusplus
}
#endif
#endif
