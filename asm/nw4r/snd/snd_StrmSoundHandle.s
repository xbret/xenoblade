.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn DetachSound__Q34nw4r3snd15StrmSoundHandleFv, global
/* 8042574C 003EED0C  80 83 00 00 */	lwz r4, 0(r3)
/* 80425750 003EED10  2C 04 00 00 */	cmpwi r4, 0
/* 80425754 003EED14  41 82 00 18 */	beq .L_8042576C
/* 80425758 003EED18  80 04 0E 44 */	lwz r0, 0xe44(r4)
/* 8042575C 003EED1C  7C 00 18 40 */	cmplw r0, r3
/* 80425760 003EED20  40 82 00 0C */	bne .L_8042576C
/* 80425764 003EED24  38 00 00 00 */	li r0, 0
/* 80425768 003EED28  90 04 0E 44 */	stw r0, 0xe44(r4)
.L_8042576C:
/* 8042576C 003EED2C  80 03 00 00 */	lwz r0, 0(r3)
/* 80425770 003EED30  2C 00 00 00 */	cmpwi r0, 0
/* 80425774 003EED34  4D 82 00 20 */	beqlr 
/* 80425778 003EED38  38 00 00 00 */	li r0, 0
/* 8042577C 003EED3C  90 03 00 00 */	stw r0, 0(r3)
/* 80425780 003EED40  4E 80 00 20 */	blr 
.endfn DetachSound__Q34nw4r3snd15StrmSoundHandleFv
