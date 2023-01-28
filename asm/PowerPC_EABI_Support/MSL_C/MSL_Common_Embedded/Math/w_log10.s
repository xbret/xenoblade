.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/w_log10.o"

# 0x802CB214 - 0x802CB218
.text
.balign 4

.fn log10, global
/* 802CB214 002947D4  4B FF CE 74 */	b __ieee754_log10
.endfn log10
