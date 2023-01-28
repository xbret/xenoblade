.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/PPC_EABI/math_ppc.o"

# 0x802CB464 - 0x802CB468
.text
.balign 4

.fn nan, global
/* 802CB464 00294A24  4E 80 00 20 */	blr
.endfn nan
