.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn asin, global
/* 802CB204 002947C4  4B FF C3 60 */	b __ieee754_asin
.endfn asin
