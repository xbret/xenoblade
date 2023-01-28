.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/w_sqrt.o"

# 0x802CB468 - 0x802CB46C
.text
.balign 4

.fn sqrt, global
/* 802CB468 00294A28  4B FF FD B4 */	b __ieee754_sqrt
.endfn sqrt
