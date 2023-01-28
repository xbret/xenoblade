.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/w_acos.o"

# 0x802CB200 - 0x802CB204
.text
.balign 4

.fn acos, global
/* 802CB200 002947C0  4B FF C0 98 */	b __ieee754_acos
.endfn acos
