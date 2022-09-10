.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global DetachSound__Q34nw4r3snd14SeqSoundHandleFv
DetachSound__Q34nw4r3snd14SeqSoundHandleFv:
/* 8041B304 003E48C4  80 83 00 00 */	lwz r4, 0(r3)
/* 8041B308 003E48C8  2C 04 00 00 */	cmpwi r4, 0
/* 8041B30C 003E48CC  41 82 00 18 */	beq lbl_8041B324
/* 8041B310 003E48D0  80 04 02 90 */	lwz r0, 0x290(r4)
/* 8041B314 003E48D4  7C 00 18 40 */	cmplw r0, r3
/* 8041B318 003E48D8  40 82 00 0C */	bne lbl_8041B324
/* 8041B31C 003E48DC  38 00 00 00 */	li r0, 0
/* 8041B320 003E48E0  90 04 02 90 */	stw r0, 0x290(r4)
lbl_8041B324:
/* 8041B324 003E48E4  80 03 00 00 */	lwz r0, 0(r3)
/* 8041B328 003E48E8  2C 00 00 00 */	cmpwi r0, 0
/* 8041B32C 003E48EC  4D 82 00 20 */	beqlr 
/* 8041B330 003E48F0  38 00 00 00 */	li r0, 0
/* 8041B334 003E48F4  90 03 00 00 */	stw r0, 0(r3)
/* 8041B338 003E48F8  4E 80 00 20 */	blr 
