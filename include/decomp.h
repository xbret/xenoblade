/**
 * Codewarrior tricks for matching decomp
 * (Macros generate prototypes to satisfy -requireprotos)
 */

#ifndef DECOMP_H
#define DECOMP_H

#define __CONCAT(x, y) x##y
#define CONCAT(x, y) __CONCAT(x, y)

// Compile without matching hacks.
#if defined(__DECOMP_NON_MATCHING) || !defined(__MWERKS__)
#define DECOMP_FORCEACTIVE(module, ...)
#define DECOMP_FORCELITERAL(module, ...)
#define DECOMP_FORCEDTOR(module, cls)
#define CW_FORCE_BSS(module, ...)
#define CW_FORCE_STRINGS(module, ...)
#define DECOMP_INLINE
#define DECOMP_DONT_INLINE
// Compile with matching hacks.
// (This version of CW does not support pragmas inside macros.)
#else
// Force reference specific data
#define DECOMP_FORCEACTIVE(module, ...)                                        \
    void fake_function(...);                                                   \
    void CONCAT(FORCEACTIVE##module, __LINE__)(void);                          \
    void CONCAT(FORCEACTIVE##module, __LINE__)(void) {                         \
        fake_function(__VA_ARGS__);                                            \
    }

// Force literal ordering, such as floats in sdata2
#define DECOMP_FORCELITERAL(module, ...)                                       \
    void CONCAT(FORCELITERAL##module, __LINE__)(void);                         \
    void CONCAT(FORCELITERAL##module, __LINE__)(void) {                        \
        (__VA_ARGS__);                                                         \
    }

// Force reference destructor
#define DECOMP_FORCEDTOR(module, cls)                                          \
    void CONCAT(FORCEDTOR##module##cls, __LINE__)(void) {                      \
        cls dummy;                                                             \
        dummy.~cls();                                                          \
    }

// Force BSS order
#define CW_FORCE_BSS(module, ...)                                              \
    void fake_function(...);                                                   \
    void FORCE_BSS##module##x(void);                                           \
    void FORCE_BSS##module##x(void) { fake_function(__VA_ARGS__); }

// Force strings into pool
#define CW_FORCE_STRINGS(module, ...)                                          \
    void fake_function(...);                                                   \
    void FORCE_STRINGS##module(void);                                          \
    void FORCE_STRINGS##module(void) { fake_function(__VA_ARGS__); }

#define DECOMP_INLINE inline
#define DECOMP_DONT_INLINE __attribute__((never_inline))
#endif

#endif
