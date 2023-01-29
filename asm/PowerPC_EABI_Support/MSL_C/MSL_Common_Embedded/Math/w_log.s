.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn log, global
/* 802CB210 002947D0  4B FF CB C4 */	b __ieee754_log
.endfn log
