.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn log10, global
/* 802CB214 002947D4  4B FF CE 74 */	b __ieee754_log10
.endfn log10
