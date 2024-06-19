#ifndef _STDBOOL_H_
#define _STDBOOL_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifndef bool
typedef unsigned char bool;
#endif

#define false 0
#define true 1

#ifdef __cplusplus
}
#endif
#endif
