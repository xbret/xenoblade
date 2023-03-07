#ifndef RVL_SDK_GX_H
#define RVL_SDK_GX_H
#include "RevoSDK/gx/GXTypes.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

// Pack value into bitfield
#define GX_BITFIELD_SET(field, pos, size, value)                               \
    (field) = __rlwimi((field), (value), 31 - (pos) - (size) + 1, (pos),       \
                       (pos) + (size)-1)

extern volatile union {
    char c;
    short s;
    unsigned short us;
    int i;
    void* p;
    float f;
} WGPIPE : 0xcc008000;

#ifdef __cplusplus
}
#endif
#endif
