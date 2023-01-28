.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/w_pow.o"

# 0x802CB218 - 0x802CB21C
.text
.balign 4

.fn pow, global
/* 802CB218 002947D8  4B FF CF 84 */	b __ieee754_pow
.endfn pow
