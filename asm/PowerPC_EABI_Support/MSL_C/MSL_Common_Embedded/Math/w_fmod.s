.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/w_fmod.o"

# 0x802CB20C - 0x802CB210
.text
.balign 4

.fn fmod, global
/* 802CB20C 002947CC  4B FF C8 48 */	b __ieee754_fmod
.endfn fmod
