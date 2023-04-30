#ifndef _MSL_CTYPE_API_H
#define _MSL_CTYPE_API_H

#include "types.h"


#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#define ctype_alpha 0x0001
#define ctype_blank 0x0002
#define ctype_cntrl 0x0004
#define ctype_digit 0x0008
#define ctype_graph 0x0010
#define ctype_lower 0x0020
#define ctype_print 0x0040
#define ctype_punct 0x0080
#define ctype_space 0x0100
#define ctype_upper 0x0200
#define ctype_xdigit 0x0400

#define ctype_alnum (ctype_alpha | ctype_digit)

extern const unsigned short __ctype_mapC[256];
extern const unsigned char __lower_mapC[256];
extern const unsigned char __upper_mapC[256];

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
