.include "macros.inc"
.file "CriWare/sofdec/sfx/sfx_sud.o"

# 0x803D700C - 0x803D7010
.text
.balign 4

.fn SFXSUD_Init, global
/* 803D700C 003A05CC  48 00 00 A4 */	b SUD_Init
.endfn SFXSUD_Init
