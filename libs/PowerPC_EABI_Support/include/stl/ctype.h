#ifndef _CTYPE_H
#define _CTYPE_H

#include "types.h"
#include <locale.h>
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/ctype_api.h"

#ifdef __cplusplus
extern "C" {
#endif

static inline int isalnum(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_alnum);
}

static inline int isalpha(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_alpha);
}

static inline int isblank(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_blank);
}

static inline int iscntrl(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_cntrl);
}

static inline int isdigit(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_digit);
}

static inline int isgraph(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_graph);
}

static inline int islower(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_lower);
}

static inline int isprint(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_print);
}

static inline int ispunct(int c) {
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_punct);
}

static inline int isspace(int c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_space); 
}

static inline int isupper(int c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_upper); 
}

static inline int isxdigit(int c) { 
    return (c < 0 || c >= 256) ? 0 : (int)(_current_locale.ctype_cmpt_ptr->ctype_map_ptr[c] & ctype_xdigit); 
}

static inline int tolower(int c) {
    return (c < 0 || c >= 256) ? c : (int)(&_current_locale)->ctype_cmpt_ptr->lower_map_ptr[c];
}

static inline int toupper(int c) {
    return (c < 0 || c >= 256) ? c : (int)(&_current_locale)->ctype_cmpt_ptr->upper_map_ptr[c];
}

#ifdef __cplusplus
}
#endif
#endif
