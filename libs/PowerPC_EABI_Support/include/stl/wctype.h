#ifndef STL_WCTYPE_H
#define STL_WCTYPE_H
#include "types.h"
#include "locale.h"
#ifdef __cplusplus
extern "C" {
#endif

extern const unsigned short __wctype_mapC[256];
extern const wchar_t __wlower_mapC[256];
extern const wchar_t __wupper_mapC[256];

inline int iswdigit(wint_t c) {
    return ((c < 0) || (c >= 0x100)) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->wctype_map_ptr[c] & 0x8);
}

inline int iswupper(wint_t c) {
    return ((c < 0) || (c >= 0x100)) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->wctype_map_ptr[c] & 0x200);
}

#ifdef __cplusplus
}
#endif
#endif
