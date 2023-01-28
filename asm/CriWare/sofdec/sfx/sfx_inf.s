.include "macros.inc"
.file "CriWare/sofdec/sfx/sfx_inf.o"

# 0x803D5820 - 0x803D5828
.text
.balign 4

.fn SFXINF_GetStmInf, global
/* 803D5820 0039EDE0  38 60 00 11 */	li r3, 0x11
/* 803D5824 0039EDE4  4E 80 00 20 */	blr
.endfn SFXINF_GetStmInf
