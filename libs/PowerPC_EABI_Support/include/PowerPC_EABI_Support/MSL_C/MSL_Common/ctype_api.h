#ifndef _MSL_CTYPE_API_H
#define _MSL_CTYPE_API_H

#include "types.h"


#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#define __msl_alpha	0x0001
#define __msl_blank	0x0002
#define __msl_cntrl	0x0004
#define __msl_digit	0x0008
#define __msl_graph	0x0010
#define __msl_lower	0x0020
#define __msl_print	0x0040
#define __msl_punct	0x0080
#define __msl_space	0x0100
#define __msl_upper	0x0200
#define __msl_xdigit 0x0400

#define __msl_alnum	(__msl_alpha | __msl_digit)

extern const unsigned short __ctype_mapC[256];
extern const unsigned char __lower_mapC[256];
extern const unsigned char __upper_mapC[256];

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
