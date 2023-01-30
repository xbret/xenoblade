.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn DetachSound__Q34nw4r3snd15WaveSoundHandleFv, global
/* 80429F38 003F34F8  80 83 00 00 */	lwz r4, 0(r3)
/* 80429F3C 003F34FC  2C 04 00 00 */	cmpwi r4, 0
/* 80429F40 003F3500  41 82 00 18 */	beq .L_80429F58
/* 80429F44 003F3504  80 04 02 44 */	lwz r0, 0x244(r4)
/* 80429F48 003F3508  7C 00 18 40 */	cmplw r0, r3
/* 80429F4C 003F350C  40 82 00 0C */	bne .L_80429F58
/* 80429F50 003F3510  38 00 00 00 */	li r0, 0
/* 80429F54 003F3514  90 04 02 44 */	stw r0, 0x244(r4)
.L_80429F58:
/* 80429F58 003F3518  80 03 00 00 */	lwz r0, 0(r3)
/* 80429F5C 003F351C  2C 00 00 00 */	cmpwi r0, 0
/* 80429F60 003F3520  4D 82 00 20 */	beqlr 
/* 80429F64 003F3524  38 00 00 00 */	li r0, 0
/* 80429F68 003F3528  90 03 00 00 */	stw r0, 0(r3)
/* 80429F6C 003F352C  4E 80 00 20 */	blr 
.endfn DetachSound__Q34nw4r3snd15WaveSoundHandleFv
