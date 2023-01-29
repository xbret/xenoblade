.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn atan2, global
/* 802CB208 002947C8  4B FF C5 F4 */	b __ieee754_atan2
.endfn atan2
