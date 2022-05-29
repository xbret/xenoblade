.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global atan2
atan2:
/* 802CB208 002947C8  4B FF C5 F4 */	b __ieee754_atan2
