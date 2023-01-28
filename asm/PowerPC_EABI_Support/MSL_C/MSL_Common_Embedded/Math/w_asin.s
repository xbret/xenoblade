.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/w_asin.o"

# 0x802CB204 - 0x802CB208
.text
.balign 4

.fn asin, global
/* 802CB204 002947C4  4B FF C3 60 */	b __ieee754_asin
.endfn asin
