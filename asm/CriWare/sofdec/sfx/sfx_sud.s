.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global SFXSUD_Init
SFXSUD_Init:
/* 803D700C 003A05CC  48 00 00 A4 */	b SUD_Init