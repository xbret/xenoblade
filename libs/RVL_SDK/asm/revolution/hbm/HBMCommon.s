.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn HBMAllocMem__FUl, global
/* 80322DE0 002EC3A0  3C A0 80 55 */	lis r5, spAllocator@ha
/* 80322DE4 002EC3A4  7C 64 1B 78 */	mr r4, r3
/* 80322DE8 002EC3A8  80 65 C8 C4 */	lwz r3, spAllocator@l(r5)
/* 80322DEC 002EC3AC  48 02 6C A4 */	b MEMAllocFromAllocator
.endfn HBMAllocMem__FUl

.balign 16, 0
.fn HBMFreeMem__FPv, global
/* 80322DF0 002EC3B0  3C A0 80 55 */	lis r5, spAllocator@ha
/* 80322DF4 002EC3B4  7C 64 1B 78 */	mr r4, r3
/* 80322DF8 002EC3B8  80 65 C8 C4 */	lwz r3, spAllocator@l(r5)
/* 80322DFC 002EC3BC  48 02 6C A4 */	b MEMFreeToAllocator
.endfn HBMFreeMem__FPv

.balign 16, 0
.fn HBMCreate, global
/* 80322E00 002EC3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322E04 002EC3C4  7C 08 02 A6 */	mflr r0
/* 80322E08 002EC3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322E0C 002EC3CC  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80322E10 002EC3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80322E14 002EC3D4  7C 7F 1B 78 */	mr r31, r3
/* 80322E18 002EC3D8  2C 00 00 00 */	cmpwi r0, 0
/* 80322E1C 002EC3DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80322E20 002EC3E0  41 82 00 0C */	beq .L_80322E2C
/* 80322E24 002EC3E4  38 80 00 00 */	li r4, 0
/* 80322E28 002EC3E8  48 00 00 18 */	b .L_80322E40
.L_80322E2C:
/* 80322E2C 002EC3EC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80322E30 002EC3F0  38 80 00 02 */	li r4, 2
/* 80322E34 002EC3F4  2C 00 00 00 */	cmpwi r0, 0
/* 80322E38 002EC3F8  41 82 00 08 */	beq .L_80322E40
/* 80322E3C 002EC3FC  38 80 00 01 */	li r4, 1
.L_80322E40:
/* 80322E40 002EC400  2C 04 00 01 */	cmpwi r4, 1
/* 80322E44 002EC404  40 82 00 34 */	bne .L_80322E78
/* 80322E48 002EC408  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80322E4C 002EC40C  38 A0 00 00 */	li r5, 0
/* 80322E50 002EC410  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80322E54 002EC414  48 02 66 BD */	bl MEMCreateExpHeapEx
/* 80322E58 002EC418  3F C0 80 5D */	lis r30, sAllocator@ha
/* 80322E5C 002EC41C  7C 64 1B 78 */	mr r4, r3
/* 80322E60 002EC420  38 7E D7 58 */	addi r3, r30, sAllocator@l
/* 80322E64 002EC424  38 A0 00 20 */	li r5, 0x20
/* 80322E68 002EC428  48 02 6C 49 */	bl MEMInitAllocatorForExpHeap
/* 80322E6C 002EC42C  3C 60 80 55 */	lis r3, spAllocator@ha
/* 80322E70 002EC430  38 1E D7 58 */	addi r0, r30, sAllocator@l
/* 80322E74 002EC434  90 03 C8 C4 */	stw r0, spAllocator@l(r3)
.L_80322E78:
/* 80322E78 002EC438  80 BF 00 3C */	lwz r5, 0x3c(r31)
/* 80322E7C 002EC43C  2C 05 00 00 */	cmpwi r5, 0
/* 80322E80 002EC440  41 82 00 0C */	beq .L_80322E8C
/* 80322E84 002EC444  38 60 00 00 */	li r3, 0
/* 80322E88 002EC448  48 00 00 18 */	b .L_80322EA0
.L_80322E8C:
/* 80322E8C 002EC44C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80322E90 002EC450  38 60 00 02 */	li r3, 2
/* 80322E94 002EC454  2C 00 00 00 */	cmpwi r0, 0
/* 80322E98 002EC458  41 82 00 08 */	beq .L_80322EA0
/* 80322E9C 002EC45C  38 60 00 01 */	li r3, 1
.L_80322EA0:
/* 80322EA0 002EC460  2C 03 00 00 */	cmpwi r3, 0
/* 80322EA4 002EC464  41 82 00 18 */	beq .L_80322EBC
/* 80322EA8 002EC468  2C 03 00 01 */	cmpwi r3, 1
/* 80322EAC 002EC46C  41 82 00 28 */	beq .L_80322ED4
/* 80322EB0 002EC470  2C 03 00 02 */	cmpwi r3, 2
/* 80322EB4 002EC474  41 82 00 34 */	beq .L_80322EE8
/* 80322EB8 002EC478  48 00 00 40 */	b .L_80322EF8
.L_80322EBC:
/* 80322EBC 002EC47C  3C 80 80 5D */	lis r4, mspAllocator__Q36nw4hbm3lyt6Layout@ha
/* 80322EC0 002EC480  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80322EC4 002EC484  3C 60 80 55 */	lis r3, spAllocator@ha
/* 80322EC8 002EC488  90 A4 D7 B8 */	stw r5, mspAllocator__Q36nw4hbm3lyt6Layout@l(r4)
/* 80322ECC 002EC48C  90 03 C8 C4 */	stw r0, spAllocator@l(r3)
/* 80322ED0 002EC490  48 00 00 28 */	b .L_80322EF8
.L_80322ED4:
/* 80322ED4 002EC494  3C 80 80 55 */	lis r4, spAllocator@ha
/* 80322ED8 002EC498  3C 60 80 5D */	lis r3, mspAllocator__Q36nw4hbm3lyt6Layout@ha
/* 80322EDC 002EC49C  80 04 C8 C4 */	lwz r0, spAllocator@l(r4)
/* 80322EE0 002EC4A0  90 03 D7 B8 */	stw r0, mspAllocator__Q36nw4hbm3lyt6Layout@l(r3)
/* 80322EE4 002EC4A4  48 00 00 14 */	b .L_80322EF8
.L_80322EE8:
/* 80322EE8 002EC4A8  3C 80 80 5D */	lis r4, mspAllocator__Q36nw4hbm3lyt6Layout@ha
/* 80322EEC 002EC4AC  3C 60 80 55 */	lis r3, spAllocator@ha
/* 80322EF0 002EC4B0  80 04 D7 B8 */	lwz r0, mspAllocator__Q36nw4hbm3lyt6Layout@l(r4)
/* 80322EF4 002EC4B4  90 03 C8 C4 */	stw r0, spAllocator@l(r3)
.L_80322EF8:
/* 80322EF8 002EC4B8  7F E3 FB 78 */	mr r3, r31
/* 80322EFC 002EC4BC  48 00 08 05 */	bl createInstance__Q210homebutton10HomeButtonFPC11HBMDataInfo
/* 80322F00 002EC4C0  48 00 08 A1 */	bl getInstance__Q210homebutton10HomeButtonFv
/* 80322F04 002EC4C4  48 00 08 AD */	bl create__Q210homebutton10HomeButtonFv
/* 80322F08 002EC4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322F0C 002EC4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80322F10 002EC4D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80322F14 002EC4D4  7C 08 03 A6 */	mtlr r0
/* 80322F18 002EC4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80322F1C 002EC4DC  4E 80 00 20 */	blr 
.endfn HBMCreate

.balign 16, 0
.fn HBMDelete, global
/* 80322F20 002EC4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322F24 002EC4E4  7C 08 02 A6 */	mflr r0
/* 80322F28 002EC4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322F2C 002EC4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80322F30 002EC4F0  48 00 08 71 */	bl getInstance__Q210homebutton10HomeButtonFv
/* 80322F34 002EC4F4  83 E3 00 04 */	lwz r31, 4(r3)
/* 80322F38 002EC4F8  48 00 08 19 */	bl deleteInstance__Q210homebutton10HomeButtonFv
/* 80322F3C 002EC4FC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80322F40 002EC500  2C 00 00 00 */	cmpwi r0, 0
/* 80322F44 002EC504  41 82 00 0C */	beq .L_80322F50
/* 80322F48 002EC508  38 60 00 00 */	li r3, 0
/* 80322F4C 002EC50C  48 00 00 18 */	b .L_80322F64
.L_80322F50:
/* 80322F50 002EC510  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80322F54 002EC514  38 60 00 02 */	li r3, 2
/* 80322F58 002EC518  2C 00 00 00 */	cmpwi r0, 0
/* 80322F5C 002EC51C  41 82 00 08 */	beq .L_80322F64
/* 80322F60 002EC520  38 60 00 01 */	li r3, 1
.L_80322F64:
/* 80322F64 002EC524  2C 03 00 01 */	cmpwi r3, 1
/* 80322F68 002EC528  40 82 00 14 */	bne .L_80322F7C
/* 80322F6C 002EC52C  3C 60 80 55 */	lis r3, spAllocator@ha
/* 80322F70 002EC530  80 63 C8 C4 */	lwz r3, spAllocator@l(r3)
/* 80322F74 002EC534  80 63 00 04 */	lwz r3, 4(r3)
/* 80322F78 002EC538  48 02 66 49 */	bl MEMDestroyExpHeap
.L_80322F7C:
/* 80322F7C 002EC53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322F80 002EC540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80322F84 002EC544  7C 08 03 A6 */	mtlr r0
/* 80322F88 002EC548  38 21 00 10 */	addi r1, r1, 0x10
/* 80322F8C 002EC54C  4E 80 00 20 */	blr 
.endfn HBMDelete

.balign 16, 0
.fn HBMInit, global
/* 80322F90 002EC550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322F94 002EC554  7C 08 02 A6 */	mflr r0
/* 80322F98 002EC558  3C 60 80 55 */	lis r3, __HBMVersion@ha
/* 80322F9C 002EC55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322FA0 002EC560  80 63 C8 C0 */	lwz r3, __HBMVersion@l(r3)
/* 80322FA4 002EC564  48 02 FD 5D */	bl OSRegisterVersion
/* 80322FA8 002EC568  48 00 07 F9 */	bl getInstance__Q210homebutton10HomeButtonFv
/* 80322FAC 002EC56C  48 00 12 65 */	bl init__Q210homebutton10HomeButtonFv
/* 80322FB0 002EC570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322FB4 002EC574  7C 08 03 A6 */	mtlr r0
/* 80322FB8 002EC578  38 21 00 10 */	addi r1, r1, 0x10
/* 80322FBC 002EC57C  4E 80 00 20 */	blr 
.endfn HBMInit

.balign 16, 0
.fn HBMCalc, global
/* 80322FC0 002EC580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322FC4 002EC584  7C 08 02 A6 */	mflr r0
/* 80322FC8 002EC588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322FCC 002EC58C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80322FD0 002EC590  7C 7F 1B 78 */	mr r31, r3
/* 80322FD4 002EC594  48 00 07 CD */	bl getInstance__Q210homebutton10HomeButtonFv
/* 80322FD8 002EC598  7F E4 FB 78 */	mr r4, r31
/* 80322FDC 002EC59C  48 00 1C 75 */	bl calc__Q210homebutton10HomeButtonFPC17HBMControllerData
/* 80322FE0 002EC5A0  48 00 07 C1 */	bl getInstance__Q210homebutton10HomeButtonFv
/* 80322FE4 002EC5A4  48 00 82 7D */	bl getSelectBtnNum__Q210homebutton10HomeButtonFv
/* 80322FE8 002EC5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322FEC 002EC5AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80322FF0 002EC5B0  7C 08 03 A6 */	mtlr r0
/* 80322FF4 002EC5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80322FF8 002EC5B8  4E 80 00 20 */	blr 
.endfn HBMCalc

.balign 16, 0
.fn HBMDraw, global
/* 80323000 002EC5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80323004 002EC5C4  7C 08 02 A6 */	mflr r0
/* 80323008 002EC5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032300C 002EC5CC  48 00 07 95 */	bl getInstance__Q210homebutton10HomeButtonFv
/* 80323010 002EC5D0  48 00 3B 51 */	bl draw__Q210homebutton10HomeButtonFv
/* 80323014 002EC5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80323018 002EC5D8  7C 08 03 A6 */	mtlr r0
/* 8032301C 002EC5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80323020 002EC5E0  4E 80 00 20 */	blr 
.endfn HBMDraw

.balign 16, 0
.fn HBMSetAdjustFlag, global
/* 80323030 002EC5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80323034 002EC5F4  7C 08 02 A6 */	mflr r0
/* 80323038 002EC5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032303C 002EC5FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80323040 002EC600  7C 7F 1B 78 */	mr r31, r3
/* 80323044 002EC604  48 00 07 5D */	bl getInstance__Q210homebutton10HomeButtonFv
/* 80323048 002EC608  7F E4 FB 78 */	mr r4, r31
/* 8032304C 002EC60C  48 00 82 35 */	bl setAdjustFlag__Q210homebutton10HomeButtonFi
/* 80323050 002EC610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80323054 002EC614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80323058 002EC618  7C 08 03 A6 */	mtlr r0
/* 8032305C 002EC61C  38 21 00 10 */	addi r1, r1, 0x10
/* 80323060 002EC620  4E 80 00 20 */	blr 
.endfn HBMSetAdjustFlag

.balign 16, 0
.fn HBMCreateSound, global
/* 80323070 002EC630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80323074 002EC634  7C 08 02 A6 */	mflr r0
/* 80323078 002EC638  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032307C 002EC63C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80323080 002EC640  7C BF 2B 78 */	mr r31, r5
/* 80323084 002EC644  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80323088 002EC648  7C 9E 23 78 */	mr r30, r4
/* 8032308C 002EC64C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80323090 002EC650  7C 7D 1B 78 */	mr r29, r3
/* 80323094 002EC654  48 00 07 0D */	bl getInstance__Q210homebutton10HomeButtonFv
/* 80323098 002EC658  7F A3 EB 78 */	mr r3, r29
/* 8032309C 002EC65C  7F C4 F3 78 */	mr r4, r30
/* 803230A0 002EC660  7F E5 FB 78 */	mr r5, r31
/* 803230A4 002EC664  4B FF F7 9D */	bl InitAxSound__10homebuttonFPCvPvUl
/* 803230A8 002EC668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803230AC 002EC66C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803230B0 002EC670  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803230B4 002EC674  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803230B8 002EC678  7C 08 03 A6 */	mtlr r0
/* 803230BC 002EC67C  38 21 00 20 */	addi r1, r1, 0x20
/* 803230C0 002EC680  4E 80 00 20 */	blr 
.endfn HBMCreateSound

.balign 16, 0
.fn HBMDeleteSound, global
/* 803230D0 002EC690  4B FF F9 70 */	b ShutdownAxSound__10homebuttonFv
.endfn HBMDeleteSound

.balign 16, 0
.fn HBMUpdateSound, global
/* 803230E0 002EC6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803230E4 002EC6A4  7C 08 02 A6 */	mflr r0
/* 803230E8 002EC6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803230EC 002EC6AC  48 00 06 B5 */	bl getInstance__Q210homebutton10HomeButtonFv
/* 803230F0 002EC6B0  48 00 83 81 */	bl update_sound__Q210homebutton10HomeButtonFv
/* 803230F4 002EC6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803230F8 002EC6B8  7C 08 03 A6 */	mtlr r0
/* 803230FC 002EC6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80323100 002EC6C0  4E 80 00 20 */	blr 
.endfn HBMUpdateSound



.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8054C878, global
	.asciz "<< RVL_SDK - HBM \trelease build: Mar  3 2009 14:00:03 (0x4201_142) >>"
	.balign 4
.endobj lbl_8054C878


.obj __HBMVersion, global
	.4byte lbl_8054C878
.endobj __HBMVersion


.obj spAllocator, global
	.4byte sAllocator
.endobj spAllocator


.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 8
.obj sAllocator, local
	.skip 0x10
.endobj sAllocator
