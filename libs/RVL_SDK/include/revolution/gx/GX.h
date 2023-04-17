#ifndef RVL_SDK_GX_H
#define RVL_SDK_GX_H
#include "revolution/gx/GXTypes.h"
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

#define GX_FIFO_ACCESS_BP 0x61
#define GX_FIFO_ACCESS_CP 0x08
#define GX_FIFO_ACCESS_XF 0x10

#ifdef __cplusplus
}
#endif
#endif
