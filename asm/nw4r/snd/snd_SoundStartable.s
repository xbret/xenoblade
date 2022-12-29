.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPCQ44nw4r3snd14SoundStartable9StartInfo
detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPCQ44nw4r3snd14SoundStartable9StartInfo:
/* 80420FC0 003EA580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80420FC4 003EA584  7C 08 02 A6 */	mflr r0
/* 80420FC8 003EA588  7C C7 33 78 */	mr r7, r6
/* 80420FCC 003EA58C  38 C0 00 00 */	li r6, 0
/* 80420FD0 003EA590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80420FD4 003EA594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80420FD8 003EA598  7C 9F 23 78 */	mr r31, r4
/* 80420FDC 003EA59C  81 83 00 00 */	lwz r12, 0(r3)
/* 80420FE0 003EA5A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80420FE4 003EA5A4  7D 89 03 A6 */	mtctr r12
/* 80420FE8 003EA5A8  4E 80 04 21 */	bctrl 
/* 80420FEC 003EA5AC  2C 03 00 00 */	cmpwi r3, 0
/* 80420FF0 003EA5B0  41 82 00 08 */	beq .L_80420FF8
/* 80420FF4 003EA5B4  48 00 00 18 */	b .L_8042100C
.L_80420FF8:
/* 80420FF8 003EA5B8  80 7F 00 00 */	lwz r3, 0(r31)
/* 80420FFC 003EA5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80421000 003EA5C0  41 82 00 08 */	beq .L_80421008
/* 80421004 003EA5C4  4B FF 16 CD */	bl StartPrepared__Q44nw4r3snd6detail10BasicSoundFv
.L_80421008:
/* 80421008 003EA5C8  38 60 00 00 */	li r3, 0
.L_8042100C:
/* 8042100C 003EA5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421010 003EA5D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421014 003EA5D4  7C 08 03 A6 */	mtlr r0
/* 80421018 003EA5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042101C 003EA5DC  4E 80 00 20 */	blr 