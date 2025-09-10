#ifndef MACROS_H
#define MACROS_H

#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))

#define CLAMP(low, high, x)                                                    \
    ((x) > (high) ? (high) : ((x) < (low) ? (low) : (x)))

#define ROUND_UP(x, align) (((x) + (align)-1) & (-(align)))
#define ROUND_UP_PTR(x, align)                                                 \
    ((void*)((((u32)(x)) + (align)-1) & (~((align)-1))))

#define ROUND_DOWN(x, align) ((x) & (-(align)))
#define ROUND_DOWN_PTR(x, align) ((void*)(((u32)(x)) & (~((align)-1))))

#define LENGTHOF(x) (sizeof((x)) / sizeof((x)[0]))

#define MEMCLR(x) __memclr((x), sizeof(*(x)))

#define ALIGN(x) __attribute__((aligned(x)))

#define DECL_SECTION(x) __declspec(section x)
#define DECL_WEAK __declspec(weak)

#define DECLTYPE(x) __decltype__(x)

#ifdef __MWERKS__
#define AT_ADDRESS(xyz) : (xyz)
#else
#define AT_ADDRESS(xyz)
#endif

// For VSCode
#ifndef __MWERKS__
#define asm
#define __attribute__(x)
#define __declspec(x)
#define __rlwimi(ra, rs, sh, mb, me) 0
#define __cntlzw(x) 0
#define __abs(x) 0
#define __sync()
#endif

#endif
