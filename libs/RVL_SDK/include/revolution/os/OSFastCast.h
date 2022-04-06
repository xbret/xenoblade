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


static inline float __OSu16tof32(register const u16* arg) {
    register float ret;

    asm {
        psq_l ret, 0(arg), 1, 3
    }
    
    return ret;
}

static inline void OSu16tof32(const u16* in, float* out) { *out = __OSu16tof32(in); }

static inline u16 __OSf32tou16(register float arg) {
    float a;
    register float* ptr = &a;
    u16 r;

        asm {
        psq_st arg, 0(ptr), 1, 3
    }
    
    r = *(u16*)ptr;
    return r;
}

static inline void OSf32tou16(const float* in, u16* out) { *out = __OSf32tou16(*in); }

static inline float __OSs16tof32(register const s16* arg) {
    register float ret;

        asm {
        psq_l ret, 0(arg), 1, 5
    }
    
    return ret;
}

static inline void OSs16tof32(const s16* in, float* out) { *out = __OSs16tof32(in); }

static inline s16 __OSf32tos16(register float arg) {
    float a;
    register float* ptr = &a;
    s16 r;

        asm {
        psq_st arg, 0(ptr), 1, 5
    }
    
    r = *(s16*)ptr;
    return r;
}

static inline void OSf32tos16(const float* in, s16* out) { *out = __OSf32tos16(*in); }

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
