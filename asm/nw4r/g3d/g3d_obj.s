.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__Q34nw4r3g3d6G3dObjFv, global
/* 803E7294 003B0854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7298 003B0858  7C 08 02 A6 */	mflr r0
/* 803E729C 003B085C  2C 03 00 00 */	cmpwi r3, 0
/* 803E72A0 003B0860  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E72A4 003B0864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E72A8 003B0868  7C 7F 1B 78 */	mr r31, r3
/* 803E72AC 003B086C  41 82 00 1C */	beq .L_803E72C8
/* 803E72B0 003B0870  3C A0 80 57 */	lis r5, lbl_8056CE90@ha
/* 803E72B4 003B0874  7F E4 FB 78 */	mr r4, r31
/* 803E72B8 003B0878  38 A5 CE 90 */	addi r5, r5, lbl_8056CE90@l
/* 803E72BC 003B087C  90 A3 00 00 */	stw r5, 0(r3)
/* 803E72C0 003B0880  80 63 00 08 */	lwz r3, 8(r3)
/* 803E72C4 003B0884  4B F6 27 DD */	bl MEMFreeToAllocator
.L_803E72C8:
/* 803E72C8 003B0888  7F E3 FB 78 */	mr r3, r31
/* 803E72CC 003B088C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E72D0 003B0890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E72D4 003B0894  7C 08 03 A6 */	mtlr r0
/* 803E72D8 003B0898  38 21 00 10 */	addi r1, r1, 0x10
/* 803E72DC 003B089C  4E 80 00 20 */	blr 
.endfn __dt__Q34nw4r3g3d6G3dObjFv

.fn Destroy__Q34nw4r3g3d6G3dObjFv, global
/* 803E72E0 003B08A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E72E4 003B08A4  7C 08 02 A6 */	mflr r0
/* 803E72E8 003B08A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E72EC 003B08AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E72F0 003B08B0  7C 7F 1B 78 */	mr r31, r3
/* 803E72F4 003B08B4  80 03 00 04 */	lwz r0, 4(r3)
/* 803E72F8 003B08B8  2C 00 00 00 */	cmpwi r0, 0
/* 803E72FC 003B08BC  41 82 00 28 */	beq .L_803E7324
/* 803E7300 003B08C0  7C 03 03 78 */	mr r3, r0
/* 803E7304 003B08C4  3C 80 00 01 */	lis r4, 0x00010001@ha
/* 803E7308 003B08C8  81 83 00 00 */	lwz r12, 0(r3)
/* 803E730C 003B08CC  7F E6 FB 78 */	mr r6, r31
/* 803E7310 003B08D0  38 84 00 01 */	addi r4, r4, 0x00010001@l
/* 803E7314 003B08D4  38 A0 00 00 */	li r5, 0
/* 803E7318 003B08D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803E731C 003B08DC  7D 89 03 A6 */	mtctr r12
/* 803E7320 003B08E0  4E 80 04 21 */	bctrl 
.L_803E7324:
/* 803E7324 003B08E4  2C 1F 00 00 */	cmpwi r31, 0
/* 803E7328 003B08E8  41 82 00 1C */	beq .L_803E7344
/* 803E732C 003B08EC  81 9F 00 00 */	lwz r12, 0(r31)
/* 803E7330 003B08F0  7F E3 FB 78 */	mr r3, r31
/* 803E7334 003B08F4  38 80 00 01 */	li r4, 1
/* 803E7338 003B08F8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 803E733C 003B08FC  7D 89 03 A6 */	mtctr r12
/* 803E7340 003B0900  4E 80 04 21 */	bctrl 
.L_803E7344:
/* 803E7344 003B0904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7348 003B0908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E734C 003B090C  7C 08 03 A6 */	mtlr r0
/* 803E7350 003B0910  38 21 00 10 */	addi r1, r1, 0x10
/* 803E7354 003B0914  4E 80 00 20 */	blr
.endfn Destroy__Q34nw4r3g3d6G3dObjFv


.fn IsDerivedFrom__Q34nw4r3g3d6G3dObjCFQ44nw4r3g3d6G3dObj7TypeObj, global
/* 803E7358 003B0918  3C 60 80 52 */	lis r3, TYPE_NAME__Q34nw4r3g3d6G3dObj@ha
/* 803E735C 003B091C  80 04 00 00 */	lwz r0, 0(r4)
/* 803E7360 003B0920  38 63 0F 58 */	addi r3, r3, TYPE_NAME__Q34nw4r3g3d6G3dObj@l
/* 803E7364 003B0924  7C 00 18 50 */	subf r0, r0, r3
/* 803E7368 003B0928  7C 00 00 34 */	cntlzw r0, r0
/* 803E736C 003B092C  54 03 D9 7E */	srwi r3, r0, 5
/* 803E7370 003B0930  4E 80 00 20 */	blr
.endfn IsDerivedFrom__Q34nw4r3g3d6G3dObjCFQ44nw4r3g3d6G3dObj7TypeObj


.fn GetTypeName__Q34nw4r3g3d6G3dObjCFv, global
/* 803E7374 003B0934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7378 003B0938  7C 08 02 A6 */	mflr r0
/* 803E737C 003B093C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7380 003B0940  81 83 00 00 */	lwz r12, 0(r3)
/* 803E7384 003B0944  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803E7388 003B0948  7D 89 03 A6 */	mtctr r12
/* 803E738C 003B094C  4E 80 04 21 */	bctrl 
/* 803E7390 003B0950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7394 003B0954  38 63 00 04 */	addi r3, r3, 4
/* 803E7398 003B0958  7C 08 03 A6 */	mtlr r0
/* 803E739C 003B095C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E73A0 003B0960  4E 80 00 20 */	blr 
.endfn GetTypeName__Q34nw4r3g3d6G3dObjCFv


.fn GetTypeObj__Q34nw4r3g3d6G3dObjCFv, global
/* 803E73A4 003B0964  3C 60 80 52 */	lis r3, TYPE_NAME__Q34nw4r3g3d6G3dObj@ha
/* 803E73A8 003B0968  38 63 0F 58 */	addi r3, r3, TYPE_NAME__Q34nw4r3g3d6G3dObj@l
/* 803E73AC 003B096C  4E 80 00 20 */	blr 
.endfn GetTypeObj__Q34nw4r3g3d6G3dObjCFv


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj TYPE_NAME__Q34nw4r3g3d6G3dObj, global
	.4byte 0x00000007
	.asciz "G3dObj"
	.balign 4
	.4byte 0
.endobj TYPE_NAME__Q34nw4r3g3d6G3dObj



.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8056CE90, global
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d6G3dObjCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte 0
	.4byte __dt__Q34nw4r3g3d6G3dObjFv
	.4byte GetTypeObj__Q34nw4r3g3d6G3dObjCFv
	.4byte GetTypeName__Q34nw4r3g3d6G3dObjCFv
	.4byte 0
.endobj lbl_8056CE90