.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global fmod
fmod:
/* 802CB20C 002947CC  4B FF C8 48 */	b __ieee754_fmod
