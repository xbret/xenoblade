.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn SFXINF_GetStmInf, global
/* 803D5820 0039EDE0  38 60 00 11 */	li r3, 0x11
/* 803D5824 0039EDE4  4E 80 00 20 */	blr
.endfn SFXINF_GetStmInf
