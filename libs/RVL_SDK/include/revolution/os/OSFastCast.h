#ifndef _REVOSDK_OSFASTCAST_H
#define _REVOSDK_OSFASTCAST_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

static inline void OSInitFastCast(){
    asm{
        li r3, 4
        oris r3, r3, 4
        mtgqr2 r3

        li r3, 5
        oris r3, r3, 5
        mtgqr3 r3

        li r3, 6
        oris r3, r3, 6
        mtgqr4 r3
        
        li r3, 7
        oris r3, r3, 7
        mtgqr5 r3
    }
}


static inline f32 __OSu16tof32(register const u16* arg) {
    register f32 ret;

    // clang-format off
    asm {
        psq_l ret, 0(arg), 1, 3
    }
    // clang-format on

    return ret;
}

static inline void OSu16tof32(const u16* in, f32* out) { *out = __OSu16tof32(in); }

static inline u16 __OSf32tou16(register f32 arg) {
    f32 a;
    register f32* ptr = &a;
    u16 r;

    // clang-format off
    asm {
        psq_st arg, 0(ptr), 1, 3
    }
    // clang-format on

    r = *(u16*)ptr;
    return r;
}

static void OSf32tou16(const f32* in, u16* out) { *out = __OSf32tou16(*in); }

static f32 __OSs16tof32(register const s16* arg) {
    register f32 ret;

    // clang-format off
    asm {
        psq_l ret, 0(arg), 1, 5
    }
    // clang-format on

    return ret;
}

static inline void OSs16tof32(const s16* in, f32* out) { *out = __OSs16tof32(in); }

static inline s16 __OSf32tos16(register f32 arg) {
    f32 a;
    register f32* ptr = &a;
    s16 r;

    // clang-format off
    asm {
        psq_st arg, 0(ptr), 1, 5
    }
    // clang-format on

    r = *(s16*)ptr;
    return r;
}

static inline void OSf32tos16(const f32* in, s16* out) { *out = __OSf32tos16(*in); }

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif