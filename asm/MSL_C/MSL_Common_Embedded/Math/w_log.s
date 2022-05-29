.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global log
log:
/* 802CB210 002947D0  4B FF CB C4 */	b __ieee754_log