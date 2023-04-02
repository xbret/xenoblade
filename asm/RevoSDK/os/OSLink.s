.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __OSModuleInit, global
/* 80359180 00322740  3C 60 80 00 */	lis r3, 0x800030CC@ha
/* 80359184 00322744  38 00 00 00 */	li r0, 0
/* 80359188 00322748  90 03 30 CC */	stw r0, 0x800030CC@l(r3)
/* 8035918C 0032274C  90 03 30 C8 */	stw r0, 0x30c8(r3)
/* 80359190 00322750  90 03 30 D0 */	stw r0, 0x30d0(r3)
/* 80359194 00322754  4E 80 00 20 */	blr 
.endfn __OSModuleInit