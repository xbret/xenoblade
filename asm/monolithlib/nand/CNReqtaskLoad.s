.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_804DAF70, global
/* 804DAF70 004A4530  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DAF74 004A4534  7C 08 02 A6 */	mflr r0
/* 804DAF78 004A4538  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DAF7C 004A453C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804DAF80 004A4540  7C 7F 1B 78 */	mr r31, r3
/* 804DAF84 004A4544  7C BD 2B 78 */	mr r29, r5
/* 804DAF88 004A4548  7C DE 33 78 */	mr r30, r6
/* 804DAF8C 004A454C  4B DE 77 2D */	bl strcpy
/* 804DAF90 004A4550  38 00 00 00 */	li r0, 0
/* 804DAF94 004A4554  93 BF 00 10 */	stw r29, 0x10(r31)
/* 804DAF98 004A4558  38 6D C1 40 */	addi r3, r13, lbl_806682C0@sda21
/* 804DAF9C 004A455C  93 DF 00 14 */	stw r30, 0x14(r31)
/* 804DAFA0 004A4560  98 1F 00 18 */	stb r0, 0x18(r31)
/* 804DAFA4 004A4564  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804DAFA8 004A4568  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DAFAC 004A456C  7C 08 03 A6 */	mtlr r0
/* 804DAFB0 004A4570  38 21 00 20 */	addi r1, r1, 0x20
/* 804DAFB4 004A4574  4E 80 00 20 */	blr 
.endfn func_804DAF70

.fn func_804DAFB8, global
/* 804DAFB8 004A4578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAFBC 004A457C  7C 08 02 A6 */	mflr r0
/* 804DAFC0 004A4580  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAFC4 004A4584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAFC8 004A4588  7C 9F 23 78 */	mr r31, r4
/* 804DAFCC 004A458C  88 0D C1 28 */	lbz r0, lbl_806682A8@sda21(r13)
/* 804DAFD0 004A4590  2C 00 00 00 */	cmpwi r0, 0
/* 804DAFD4 004A4594  41 82 00 0C */	beq .L_804DAFE0
/* 804DAFD8 004A4598  38 60 00 00 */	li r3, 0
/* 804DAFDC 004A459C  48 00 00 E8 */	b .L_804DB0C4
.L_804DAFE0:
/* 804DAFE0 004A45A0  88 64 00 18 */	lbz r3, 0x18(r4)
/* 804DAFE4 004A45A4  7C 60 07 75 */	extsb. r0, r3
/* 804DAFE8 004A45A8  40 81 00 18 */	ble .L_804DB000
/* 804DAFEC 004A45AC  80 0D C1 2C */	lwz r0, lbl_806682AC@sda21(r13)
/* 804DAFF0 004A45B0  2C 00 00 00 */	cmpwi r0, 0
/* 804DAFF4 004A45B4  40 80 00 0C */	bge .L_804DB000
/* 804DAFF8 004A45B8  38 60 00 02 */	li r3, 2
/* 804DAFFC 004A45BC  48 00 00 C8 */	b .L_804DB0C4
.L_804DB000:
/* 804DB000 004A45C0  7C 60 07 75 */	extsb. r0, r3
/* 804DB004 004A45C4  41 82 00 28 */	beq .L_804DB02C
/* 804DB008 004A45C8  2C 00 00 01 */	cmpwi r0, 1
/* 804DB00C 004A45CC  41 82 00 4C */	beq .L_804DB058
/* 804DB010 004A45D0  2C 00 00 02 */	cmpwi r0, 2
/* 804DB014 004A45D4  41 82 00 6C */	beq .L_804DB080
/* 804DB018 004A45D8  2C 00 00 03 */	cmpwi r0, 3
/* 804DB01C 004A45DC  41 82 00 84 */	beq .L_804DB0A0
/* 804DB020 004A45E0  2C 00 00 04 */	cmpwi r0, 4
/* 804DB024 004A45E4  41 82 00 94 */	beq .L_804DB0B8
/* 804DB028 004A45E8  48 00 00 98 */	b .L_804DB0C0
.L_804DB02C:
/* 804DB02C 004A45EC  7F E3 FB 78 */	mr r3, r31
/* 804DB030 004A45F0  4B FF F9 95 */	bl func_804DA9C4
/* 804DB034 004A45F4  38 80 00 01 */	li r4, 1
/* 804DB038 004A45F8  4B FF F5 09 */	bl func_804DA540
/* 804DB03C 004A45FC  2C 03 00 00 */	cmpwi r3, 0
/* 804DB040 004A4600  41 82 00 0C */	beq .L_804DB04C
/* 804DB044 004A4604  38 60 00 02 */	li r3, 2
/* 804DB048 004A4608  48 00 00 7C */	b .L_804DB0C4
.L_804DB04C:
/* 804DB04C 004A460C  38 00 00 01 */	li r0, 1
/* 804DB050 004A4610  98 1F 00 18 */	stb r0, 0x18(r31)
/* 804DB054 004A4614  48 00 00 6C */	b .L_804DB0C0
.L_804DB058:
/* 804DB058 004A4618  80 64 00 10 */	lwz r3, 0x10(r4)
/* 804DB05C 004A461C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 804DB060 004A4620  4B FF F5 55 */	bl func_804DA5B4
/* 804DB064 004A4624  2C 03 00 00 */	cmpwi r3, 0
/* 804DB068 004A4628  41 82 00 0C */	beq .L_804DB074
/* 804DB06C 004A462C  38 60 00 02 */	li r3, 2
/* 804DB070 004A4630  48 00 00 54 */	b .L_804DB0C4
.L_804DB074:
/* 804DB074 004A4634  38 00 00 02 */	li r0, 2
/* 804DB078 004A4638  98 1F 00 18 */	stb r0, 0x18(r31)
/* 804DB07C 004A463C  48 00 00 44 */	b .L_804DB0C0
.L_804DB080:
/* 804DB080 004A4640  4B FF F6 1D */	bl func_804DA69C
/* 804DB084 004A4644  2C 03 00 00 */	cmpwi r3, 0
/* 804DB088 004A4648  41 82 00 0C */	beq .L_804DB094
/* 804DB08C 004A464C  38 60 00 02 */	li r3, 2
/* 804DB090 004A4650  48 00 00 34 */	b .L_804DB0C4
.L_804DB094:
/* 804DB094 004A4654  38 00 00 03 */	li r0, 3
/* 804DB098 004A4658  98 1F 00 18 */	stb r0, 0x18(r31)
/* 804DB09C 004A465C  48 00 00 24 */	b .L_804DB0C0
.L_804DB0A0:
/* 804DB0A0 004A4660  80 64 00 10 */	lwz r3, 0x10(r4)
/* 804DB0A4 004A4664  80 84 00 14 */	lwz r4, 0x14(r4)
/* 804DB0A8 004A4668  4B E7 8F 09 */	bl DCFlushRange
/* 804DB0AC 004A466C  38 00 00 04 */	li r0, 4
/* 804DB0B0 004A4670  98 1F 00 18 */	stb r0, 0x18(r31)
/* 804DB0B4 004A4674  48 00 00 0C */	b .L_804DB0C0
.L_804DB0B8:
/* 804DB0B8 004A4678  38 60 00 01 */	li r3, 1
/* 804DB0BC 004A467C  48 00 00 08 */	b .L_804DB0C4
.L_804DB0C0:
/* 804DB0C0 004A4680  38 60 00 00 */	li r3, 0
.L_804DB0C4:
/* 804DB0C4 004A4684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB0C8 004A4688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB0CC 004A468C  7C 08 03 A6 */	mtlr r0
/* 804DB0D0 004A4690  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB0D4 004A4694  4E 80 00 20 */	blr
.endfn func_804DAFB8

.fn sinit_804DB0D8, local
/* 804DB0D8 004A4698  38 6D C1 40 */	addi r3, r13, lbl_806682C0@sda21
/* 804DB0DC 004A469C  48 00 00 04 */	b .L_804DB0E0
.L_804DB0E0:
/* 804DB0E0 004A46A0  3C 80 80 57 */	lis r4, __vt__CNReqtaskLoad@ha
/* 804DB0E4 004A46A4  38 84 35 D0 */	addi r4, r4, __vt__CNReqtaskLoad@l
/* 804DB0E8 004A46A8  90 83 00 00 */	stw r4, 0(r3)
/* 804DB0EC 004A46AC  4E 80 00 20 */	blr
.endfn sinit_804DB0D8

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_804DB0D8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CNReqtaskLoad_typestr, global
	.asciz "CNReqtaskLoad"
	.balign 4
.endobj CNReqtaskLoad_typestr
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CNReqtaskLoad, global
	.4byte __RTTI__CNReqtaskLoad
	.4byte 0
	.4byte func_804DAFB8
	.4byte func_804DA4CC
.endobj __vt__CNReqtaskLoad

.obj CNReqtaskLoad_hierarchy, global
	.4byte __RTTI__CNReqtask
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CNReqtaskLoad_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CNReqtaskLoad, global
	.4byte CNReqtaskLoad_typestr
	.4byte CNReqtaskLoad_hierarchy
.endobj __RTTI__CNReqtaskLoad

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_806682C0, global
	.skip 0x8
.endobj lbl_806682C0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80020768", local
.hidden "@etb_80020768"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020768"

.obj "@etb_80020770", local
.hidden "@etb_80020770"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020770"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80038768", local
.hidden "@eti_80038768"
	.4byte func_804DAF70
	.4byte 0x00000048
	.4byte "@etb_80020768"
.endobj "@eti_80038768"

.obj "@eti_80038774", local
.hidden "@eti_80038774"
	.4byte func_804DAFB8
	.4byte 0x00000120
	.4byte "@etb_80020770"
.endobj "@eti_80038774"
