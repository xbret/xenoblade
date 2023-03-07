.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80435EA4, global
/* 80435EA4 003FF464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80435EA8 003FF468  7C 08 02 A6 */	mflr r0
/* 80435EAC 003FF46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80435EB0 003FF470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80435EB4 003FF474  7C 7F 1B 78 */	mr r31, r3
/* 80435EB8 003FF478  4B FF F4 E5 */	bl getInstanceMTRand__Q22mm3mtlFv
/* 80435EBC 003FF47C  7F E4 FB 78 */	mr r4, r31
/* 80435EC0 003FF480  4B FF F7 15 */	bl mtInit__Q32mm3mtl6MTRandFUl
/* 80435EC4 003FF484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435EC8 003FF488  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80435ECC 003FF48C  7C 08 03 A6 */	mtlr r0
/* 80435ED0 003FF490  38 21 00 10 */	addi r1, r1, 0x10
/* 80435ED4 003FF494  4E 80 00 20 */	blr 
.endfn func_80435EA4

.fn mtRand__2mlFv, global
/* 80435ED8 003FF498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80435EDC 003FF49C  7C 08 02 A6 */	mflr r0
/* 80435EE0 003FF4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80435EE4 003FF4A4  4B FF F4 B9 */	bl getInstanceMTRand__Q22mm3mtlFv
/* 80435EE8 003FF4A8  4B FF FB F5 */	bl rand__Q32mm3mtl6MTRandFv
/* 80435EEC 003FF4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435EF0 003FF4B0  7C 08 03 A6 */	mtlr r0
/* 80435EF4 003FF4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80435EF8 003FF4B8  4E 80 00 20 */	blr 
.endfn mtRand__2mlFv

.fn mtRand__2mlFi, global
/* 80435EFC 003FF4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80435F00 003FF4C0  7C 08 02 A6 */	mflr r0
/* 80435F04 003FF4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80435F08 003FF4C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80435F0C 003FF4CC  7C 7F 1B 78 */	mr r31, r3
/* 80435F10 003FF4D0  4B FF F4 8D */	bl getInstanceMTRand__Q22mm3mtlFv
/* 80435F14 003FF4D4  2C 1F 00 00 */	cmpwi r31, 0
/* 80435F18 003FF4D8  41 82 00 18 */	beq .L_80435F30
/* 80435F1C 003FF4DC  4B FF FB C1 */	bl rand__Q32mm3mtl6MTRandFv
/* 80435F20 003FF4E0  7C 03 FB D6 */	divw r0, r3, r31
/* 80435F24 003FF4E4  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80435F28 003FF4E8  7C 60 18 50 */	subf r3, r0, r3
/* 80435F2C 003FF4EC  48 00 00 08 */	b .L_80435F34
.L_80435F30:
/* 80435F30 003FF4F0  38 60 00 00 */	li r3, 0
.L_80435F34:
/* 80435F34 003FF4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435F38 003FF4F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80435F3C 003FF4FC  7C 08 03 A6 */	mtlr r0
/* 80435F40 003FF500  38 21 00 10 */	addi r1, r1, 0x10
/* 80435F44 003FF504  4E 80 00 20 */	blr 
.endfn mtRand__2mlFi

.fn mtRand__2mlFii, global
/* 80435F48 003FF508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80435F4C 003FF50C  7C 08 02 A6 */	mflr r0
/* 80435F50 003FF510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80435F54 003FF514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80435F58 003FF518  7C 9F 23 78 */	mr r31, r4
/* 80435F5C 003FF51C  93 C1 00 08 */	stw r30, 8(r1)
/* 80435F60 003FF520  7C 7E 1B 78 */	mr r30, r3
/* 80435F64 003FF524  4B FF F4 39 */	bl getInstanceMTRand__Q22mm3mtlFv
/* 80435F68 003FF528  7F FE F8 51 */	subf. r31, r30, r31
/* 80435F6C 003FF52C  41 82 00 18 */	beq .L_80435F84
/* 80435F70 003FF530  4B FF FB 6D */	bl rand__Q32mm3mtl6MTRandFv
/* 80435F74 003FF534  7C 03 FB D6 */	divw r0, r3, r31
/* 80435F78 003FF538  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80435F7C 003FF53C  7C 00 18 50 */	subf r0, r0, r3
/* 80435F80 003FF540  48 00 00 08 */	b .L_80435F88
.L_80435F84:
/* 80435F84 003FF544  38 00 00 00 */	li r0, 0
.L_80435F88:
/* 80435F88 003FF548  7C 7E 02 14 */	add r3, r30, r0
/* 80435F8C 003FF54C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80435F90 003FF550  83 C1 00 08 */	lwz r30, 8(r1)
/* 80435F94 003FF554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435F98 003FF558  7C 08 03 A6 */	mtlr r0
/* 80435F9C 003FF55C  38 21 00 10 */	addi r1, r1, 0x10
/* 80435FA0 003FF560  4E 80 00 20 */	blr 
.endfn mtRand__2mlFii

.fn func_80435FA4, global
/* 80435FA4 003FF564  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80435FA8 003FF568  7C 08 02 A6 */	mflr r0
/* 80435FAC 003FF56C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80435FB0 003FF570  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80435FB4 003FF574  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80435FB8 003FF578  FF E0 08 90 */	fmr f31, f1
/* 80435FBC 003FF57C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80435FC0 003FF580  3B E0 00 00 */	li r31, 0
/* 80435FC4 003FF584  D0 21 00 08 */	stfs f1, 8(r1)
/* 80435FC8 003FF588  FC 20 08 18 */	frsp f1, f1
/* 80435FCC 003FF58C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80435FD0 003FF590  83 C1 00 08 */	lwz r30, 8(r1)
/* 80435FD4 003FF594  4B E8 8B 75 */	bl __fpclassifyf
/* 80435FD8 003FF598  2C 03 00 01 */	cmpwi r3, 1
/* 80435FDC 003FF59C  41 82 00 54 */	beq .L_80436030
/* 80435FE0 003FF5A0  FC 20 F8 18 */	frsp f1, f31
/* 80435FE4 003FF5A4  4B E8 8B 65 */	bl __fpclassifyf
/* 80435FE8 003FF5A8  2C 03 00 02 */	cmpwi r3, 2
/* 80435FEC 003FF5AC  41 82 00 44 */	beq .L_80436030
/* 80435FF0 003FF5B0  3C 1E 0C 0D */	addis r0, r30, 0xc0d
/* 80435FF4 003FF5B4  28 00 F3 F3 */	cmplwi r0, 0xf3f3
/* 80435FF8 003FF5B8  41 82 00 38 */	beq .L_80436030
/* 80435FFC 003FF5BC  3C 1E 2C 2D */	addis r0, r30, 0x2c2d
/* 80436000 003FF5C0  28 00 D3 D3 */	cmplwi r0, 0xd3d3
/* 80436004 003FF5C4  41 82 00 2C */	beq .L_80436030
/* 80436008 003FF5C8  3C 1E 00 01 */	addis r0, r30, 1
/* 8043600C 003FF5CC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80436010 003FF5D0  41 82 00 20 */	beq .L_80436030
/* 80436014 003FF5D4  FC 20 F8 18 */	frsp f1, f31
/* 80436018 003FF5D8  C0 02 C6 94 */	lfs f0, float_8066CA14@sda21(r2)
/* 8043601C 003FF5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80436020 003FF5E0  41 81 00 10 */	bgt .L_80436030
/* 80436024 003FF5E4  C0 02 C6 98 */	lfs f0, float_8066CA18@sda21(r2)
/* 80436028 003FF5E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043602C 003FF5EC  40 80 00 08 */	bge .L_80436034
.L_80436030:
/* 80436030 003FF5F0  3B E0 00 01 */	li r31, 1
.L_80436034:
/* 80436034 003FF5F4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80436038 003FF5F8  7F E3 FB 78 */	mr r3, r31
/* 8043603C 003FF5FC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80436040 003FF600  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80436044 003FF604  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80436048 003FF608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043604C 003FF60C  7C 08 03 A6 */	mtlr r0
/* 80436050 003FF610  38 21 00 30 */	addi r1, r1, 0x30
/* 80436054 003FF614  4E 80 00 20 */	blr 
.endfn func_80435FA4


.fn sinit_80436058, local
/* 80436058 003FF618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043605C 003FF61C  C0 42 C6 A0 */	lfs f2, float_8066CA20@sda21(r2)
/* 80436060 003FF620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80436064 003FF624  C0 02 C6 A8 */	lfs f0, float_8066CA28@sda21(r2)
/* 80436068 003FF628  93 C1 00 08 */	stw r30, 8(r1)
/* 8043606C 003FF62C  3F C0 80 66 */	lis r30, lbl_80659E40@ha
/* 80436070 003FF630  3B DE 9E 40 */	addi r30, r30, lbl_80659E40@l
/* 80436074 003FF634  C0 22 C6 A4 */	lfs f1, float_8066CA24@sda21(r2)
/* 80436078 003FF638  3B FE 00 00 */	addi r31, r30, 0
/* 8043607C 003FF63C  D0 5E 00 00 */	stfs f2, 0(r30)
/* 80436080 003FF640  39 9E 00 0C */	addi r12, r30, 0xc
/* 80436084 003FF644  39 7E 00 18 */	addi r11, r30, 0x18
/* 80436088 003FF648  39 5E 00 24 */	addi r10, r30, 0x24
/* 8043608C 003FF64C  39 3E 00 30 */	addi r9, r30, 0x30
/* 80436090 003FF650  39 1E 00 3C */	addi r8, r30, 0x3c
/* 80436094 003FF654  38 FE 00 48 */	addi r7, r30, 0x48
/* 80436098 003FF658  38 DE 00 54 */	addi r6, r30, 0x54
/* 8043609C 003FF65C  38 BE 00 60 */	addi r5, r30, 0x60
/* 804360A0 003FF660  38 9E 00 6C */	addi r4, r30, 0x6c
/* 804360A4 003FF664  38 7E 00 78 */	addi r3, r30, 0x78
/* 804360A8 003FF668  D0 5F 00 04 */	stfs f2, 4(r31)
/* 804360AC 003FF66C  D0 5F 00 08 */	stfs f2, 8(r31)
/* 804360B0 003FF670  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 804360B4 003FF674  D0 2C 00 04 */	stfs f1, 4(r12)
/* 804360B8 003FF678  D0 2C 00 08 */	stfs f1, 8(r12)
/* 804360BC 003FF67C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 804360C0 003FF680  D0 0B 00 04 */	stfs f0, 4(r11)
/* 804360C4 003FF684  D0 0B 00 08 */	stfs f0, 8(r11)
/* 804360C8 003FF688  D0 5E 00 24 */	stfs f2, 0x24(r30)
/* 804360CC 003FF68C  D0 0A 00 04 */	stfs f0, 4(r10)
/* 804360D0 003FF690  D0 0A 00 08 */	stfs f0, 8(r10)
/* 804360D4 003FF694  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 804360D8 003FF698  D0 49 00 04 */	stfs f2, 4(r9)
/* 804360DC 003FF69C  D0 09 00 08 */	stfs f0, 8(r9)
/* 804360E0 003FF6A0  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 804360E4 003FF6A4  D0 08 00 04 */	stfs f0, 4(r8)
/* 804360E8 003FF6A8  D0 48 00 08 */	stfs f2, 8(r8)
/* 804360EC 003FF6AC  D0 5E 00 48 */	stfs f2, 0x48(r30)
/* 804360F0 003FF6B0  D0 47 00 04 */	stfs f2, 4(r7)
/* 804360F4 003FF6B4  D0 07 00 08 */	stfs f0, 8(r7)
/* 804360F8 003FF6B8  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 804360FC 003FF6BC  D0 46 00 04 */	stfs f2, 4(r6)
/* 80436100 003FF6C0  D0 46 00 08 */	stfs f2, 8(r6)
/* 80436104 003FF6C4  D0 5E 00 60 */	stfs f2, 0x60(r30)
/* 80436108 003FF6C8  D0 05 00 04 */	stfs f0, 4(r5)
/* 8043610C 003FF6CC  D0 45 00 08 */	stfs f2, 8(r5)
/* 80436110 003FF6D0  D0 5E 00 6C */	stfs f2, 0x6c(r30)
/* 80436114 003FF6D4  D0 24 00 04 */	stfs f1, 4(r4)
/* 80436118 003FF6D8  D0 24 00 08 */	stfs f1, 8(r4)
/* 8043611C 003FF6DC  D0 5E 00 78 */	stfs f2, 0x78(r30)
/* 80436120 003FF6E0  D0 23 00 04 */	stfs f1, 4(r3)
/* 80436124 003FF6E4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80436128 003FF6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043612C 003FF6EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80436130 003FF6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80436134 003FF6F4  4E 80 00 20 */	blr
.endfn sinit_80436058

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_80436058

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

#.balign 8

.obj float_8066CA14, global
	.float 1E+14 #0x56B5E621
.endobj float_8066CA14


.obj float_8066CA18, global
	.4byte 0xD6B5E621
	.4byte 0
.endobj float_8066CA18


.obj float_8066CA20, global
	.float 1.0
.endobj float_8066CA20


.obj float_8066CA24, global
	.float 0.5
.endobj float_8066CA24


.obj float_8066CA28, global
	.float 0
	.4byte 0
.endobj float_8066CA28

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C078", local
.hidden "@etb_8001C078"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C078"

.obj "@etb_8001C080", local
.hidden "@etb_8001C080"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C080"

.obj "@etb_8001C088", local
.hidden "@etb_8001C088"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C088"

.obj "@etb_8001C090", local
.hidden "@etb_8001C090"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C090"

.obj "@etb_8001C098", local
.hidden "@etb_8001C098"
	.4byte 0x104A0000
	.4byte 0x00000000
.endobj "@etb_8001C098"

.obj "@etb_8001C0A0", local
.hidden "@etb_8001C0A0"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001C0A0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033C80", local
.hidden "@eti_80033C80"
	.4byte func_80435EA4
	.4byte 0x00000034
	.4byte "@etb_8001C078"
.endobj "@eti_80033C80"

.obj "@eti_80033C8C", local
.hidden "@eti_80033C8C"
	.4byte mtRand__2mlFv
	.4byte 0x00000024
	.4byte "@etb_8001C080"
.endobj "@eti_80033C8C"

.obj "@eti_80033C98", local
.hidden "@eti_80033C98"
	.4byte mtRand__2mlFi
	.4byte 0x0000004C
	.4byte "@etb_8001C088"
.endobj "@eti_80033C98"

.obj "@eti_80033CA4", local
.hidden "@eti_80033CA4"
	.4byte mtRand__2mlFii
	.4byte 0x0000005C
	.4byte "@etb_8001C090"
.endobj "@eti_80033CA4"

.obj "@eti_80033CB0", local
.hidden "@eti_80033CB0"
	.4byte func_80435FA4
	.4byte 0x000000B4
	.4byte "@etb_8001C098"
.endobj "@eti_80033CB0"

.obj "@eti_80033CBC", local
.hidden "@eti_80033CBC"
	.4byte sinit_80436058
	.4byte 0x000000E0
	.4byte "@etb_8001C0A0"
.endobj "@eti_80033CBC"
