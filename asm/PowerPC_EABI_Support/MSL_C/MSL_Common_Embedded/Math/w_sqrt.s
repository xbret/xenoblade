.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn sqrt, global
/* 802CB468 00294A28  4B FF FD B4 */	b __ieee754_sqrt
.endfn sqrt
