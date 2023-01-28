.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/w_log.o"

# 0x802CB210 - 0x802CB214
.text
.balign 4

.fn log, global
/* 802CB210 002947D0  4B FF CB C4 */	b __ieee754_log
.endfn log
