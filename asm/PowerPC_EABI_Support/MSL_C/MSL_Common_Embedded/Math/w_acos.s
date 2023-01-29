.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn acos, global
/* 802CB200 002947C0  4B FF C0 98 */	b __ieee754_acos
.endfn acos
