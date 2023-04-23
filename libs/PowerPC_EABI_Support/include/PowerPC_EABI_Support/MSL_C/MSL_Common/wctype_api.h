#ifndef _MSL_WCTYPE_API_H
#define _MSL_WCTYPE_API_H

#include "types.h"


#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#define __msl_walpha 0x0001
#define __msl_wblank 0x0002
#define __msl_wcntrl 0x0004
#define __msl_wdigit 0x0008
#define __msl_wgraph 0x0010
#define __msl_wlower 0x0020
#define __msl_wprint 0x0040
#define __msl_wpunct 0x0080
#define __msl_wspace 0x0100
#define __msl_wupper 0x0200
#define __msl_wxdigit 0x0400

#define __msl_walnum (__msl_alpha | __msl_digit)

extern const unsigned short __wctype_mapC[256];
extern const wchar_t __wlower_mapC[256];
extern const wchar_t __wupper_mapC[256];

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
