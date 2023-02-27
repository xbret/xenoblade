.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dynamic_cast, global
/* 802B9D84 00283344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B9D88 00283348  7C 08 02 A6 */	mflr r0
/* 802B9D8C 0028334C  2C 03 00 00 */	cmpwi r3, 0
/* 802B9D90 00283350  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B9D94 00283354  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B9D98 00283358  40 82 00 0C */	bne .L_802B9DA4
/* 802B9D9C 0028335C  38 60 00 00 */	li r3, 0
/* 802B9DA0 00283360  48 00 02 2C */	b .L_802B9FCC
.L_802B9DA4:
/* 802B9DA4 00283364  7C 83 20 2E */	lwzx r4, r3, r4
/* 802B9DA8 00283368  81 64 00 00 */	lwz r11, 0(r4)
/* 802B9DAC 0028336C  2C 0B 00 00 */	cmpwi r11, 0
/* 802B9DB0 00283370  41 82 01 E8 */	beq .L_802B9F98
/* 802B9DB4 00283374  80 04 00 04 */	lwz r0, 4(r4)
/* 802B9DB8 00283378  2C 05 00 00 */	cmpwi r5, 0
/* 802B9DBC 0028337C  7C 63 02 14 */	add r3, r3, r0
/* 802B9DC0 00283380  41 82 02 0C */	beq .L_802B9FCC
/* 802B9DC4 00283384  80 85 00 00 */	lwz r4, 0(r5)
/* 802B9DC8 00283388  81 2B 00 00 */	lwz r9, 0(r11)
/* 802B9DCC 0028338C  7C 8A 23 78 */	mr r10, r4
/* 802B9DD0 00283390  48 00 00 1C */	b .L_802B9DEC
.L_802B9DD4:
/* 802B9DD4 00283394  7D 85 07 75 */	extsb. r5, r12
/* 802B9DD8 00283398  40 82 00 0C */	bne .L_802B9DE4
/* 802B9DDC 0028339C  38 A0 00 00 */	li r5, 0
/* 802B9DE0 002833A0  48 00 00 30 */	b .L_802B9E10
.L_802B9DE4:
/* 802B9DE4 002833A4  39 29 00 01 */	addi r9, r9, 1
/* 802B9DE8 002833A8  39 4A 00 01 */	addi r10, r10, 1
.L_802B9DEC:
/* 802B9DEC 002833AC  89 89 00 00 */	lbz r12, 0(r9)
/* 802B9DF0 002833B0  88 AA 00 00 */	lbz r5, 0(r10)
/* 802B9DF4 002833B4  7D 88 07 74 */	extsb r8, r12
/* 802B9DF8 002833B8  7C A5 07 74 */	extsb r5, r5
/* 802B9DFC 002833BC  7C 08 28 00 */	cmpw r8, r5
/* 802B9E00 002833C0  41 82 FF D4 */	beq .L_802B9DD4
/* 802B9E04 002833C4  89 0A 00 00 */	lbz r8, 0(r10)
/* 802B9E08 002833C8  88 A9 00 00 */	lbz r5, 0(r9)
/* 802B9E0C 002833CC  7C A8 28 50 */	subf r5, r8, r5
.L_802B9E10:
/* 802B9E10 002833D0  2C 05 00 00 */	cmpwi r5, 0
/* 802B9E14 002833D4  40 82 00 08 */	bne .L_802B9E1C
/* 802B9E18 002833D8  48 00 01 B4 */	b .L_802B9FCC
.L_802B9E1C:
/* 802B9E1C 002833DC  80 AB 00 04 */	lwz r5, 4(r11)
/* 802B9E20 002833E0  2C 05 00 00 */	cmpwi r5, 0
/* 802B9E24 002833E4  41 82 01 74 */	beq .L_802B9F98
/* 802B9E28 002833E8  48 00 01 64 */	b .L_802B9F8C
.L_802B9E2C:
/* 802B9E2C 002833EC  81 85 00 04 */	lwz r12, 4(r5)
/* 802B9E30 002833F0  55 88 00 01 */	rlwinm. r8, r12, 0, 0, 0
/* 802B9E34 002833F4  41 82 00 FC */	beq .L_802B9F30
/* 802B9E38 002833F8  55 88 00 7E */	clrlwi r8, r12, 1
/* 802B9E3C 002833FC  83 E5 00 08 */	lwz r31, 8(r5)
/* 802B9E40 00283400  7D 00 42 15 */	add. r8, r0, r8
/* 802B9E44 00283404  40 82 00 D8 */	bne .L_802B9F1C
/* 802B9E48 00283408  81 49 00 00 */	lwz r10, 0(r9)
/* 802B9E4C 0028340C  7C 8B 23 78 */	mr r11, r4
/* 802B9E50 00283410  48 00 00 1C */	b .L_802B9E6C
.L_802B9E54:
/* 802B9E54 00283414  7D 88 07 75 */	extsb. r8, r12
/* 802B9E58 00283418  40 82 00 0C */	bne .L_802B9E64
/* 802B9E5C 0028341C  39 00 00 00 */	li r8, 0
/* 802B9E60 00283420  48 00 00 30 */	b .L_802B9E90
.L_802B9E64:
/* 802B9E64 00283424  39 4A 00 01 */	addi r10, r10, 1
/* 802B9E68 00283428  39 6B 00 01 */	addi r11, r11, 1
.L_802B9E6C:
/* 802B9E6C 0028342C  89 8A 00 00 */	lbz r12, 0(r10)
/* 802B9E70 00283430  89 0B 00 00 */	lbz r8, 0(r11)
/* 802B9E74 00283434  7D 89 07 74 */	extsb r9, r12
/* 802B9E78 00283438  7D 08 07 74 */	extsb r8, r8
/* 802B9E7C 0028343C  7C 09 40 00 */	cmpw r9, r8
/* 802B9E80 00283440  41 82 FF D4 */	beq .L_802B9E54
/* 802B9E84 00283444  89 2B 00 00 */	lbz r9, 0(r11)
/* 802B9E88 00283448  89 0A 00 00 */	lbz r8, 0(r10)
/* 802B9E8C 0028344C  7D 09 40 50 */	subf r8, r9, r8
.L_802B9E90:
/* 802B9E90 00283450  2C 08 00 00 */	cmpwi r8, 0
/* 802B9E94 00283454  40 82 00 88 */	bne .L_802B9F1C
/* 802B9E98 00283458  39 85 00 0C */	addi r12, r5, 0xc
/* 802B9E9C 0028345C  7F E9 03 A6 */	mtctr r31
/* 802B9EA0 00283460  2C 1F 00 00 */	cmpwi r31, 0
/* 802B9EA4 00283464  40 81 00 F4 */	ble .L_802B9F98
.L_802B9EA8:
/* 802B9EA8 00283468  81 6C 00 04 */	lwz r11, 4(r12)
/* 802B9EAC 0028346C  7C 80 5A 15 */	add. r4, r0, r11
/* 802B9EB0 00283470  40 82 00 60 */	bne .L_802B9F10
/* 802B9EB4 00283474  80 8C 00 00 */	lwz r4, 0(r12)
/* 802B9EB8 00283478  81 26 00 00 */	lwz r9, 0(r6)
/* 802B9EBC 0028347C  81 04 00 00 */	lwz r8, 0(r4)
/* 802B9EC0 00283480  48 00 00 1C */	b .L_802B9EDC
.L_802B9EC4:
/* 802B9EC4 00283484  7D 44 07 75 */	extsb. r4, r10
/* 802B9EC8 00283488  40 82 00 0C */	bne .L_802B9ED4
/* 802B9ECC 0028348C  38 80 00 00 */	li r4, 0
/* 802B9ED0 00283490  48 00 00 30 */	b .L_802B9F00
.L_802B9ED4:
/* 802B9ED4 00283494  39 08 00 01 */	addi r8, r8, 1
/* 802B9ED8 00283498  39 29 00 01 */	addi r9, r9, 1
.L_802B9EDC:
/* 802B9EDC 0028349C  89 48 00 00 */	lbz r10, 0(r8)
/* 802B9EE0 002834A0  88 89 00 00 */	lbz r4, 0(r9)
/* 802B9EE4 002834A4  7D 45 07 74 */	extsb r5, r10
/* 802B9EE8 002834A8  7C 84 07 74 */	extsb r4, r4
/* 802B9EEC 002834AC  7C 05 20 00 */	cmpw r5, r4
/* 802B9EF0 002834B0  41 82 FF D4 */	beq .L_802B9EC4
/* 802B9EF4 002834B4  88 A9 00 00 */	lbz r5, 0(r9)
/* 802B9EF8 002834B8  88 88 00 00 */	lbz r4, 0(r8)
/* 802B9EFC 002834BC  7C 85 20 50 */	subf r4, r5, r4
.L_802B9F00:
/* 802B9F00 002834C0  2C 04 00 00 */	cmpwi r4, 0
/* 802B9F04 002834C4  40 82 00 0C */	bne .L_802B9F10
/* 802B9F08 002834C8  7C 63 5A 14 */	add r3, r3, r11
/* 802B9F0C 002834CC  48 00 00 C0 */	b .L_802B9FCC
.L_802B9F10:
/* 802B9F10 002834D0  39 8C 00 08 */	addi r12, r12, 8
/* 802B9F14 002834D4  42 00 FF 94 */	bdnz .L_802B9EA8
/* 802B9F18 002834D8  48 00 00 80 */	b .L_802B9F98
.L_802B9F1C:
/* 802B9F1C 002834DC  39 1F FF FF */	addi r8, r31, -1
/* 802B9F20 002834E0  38 A5 00 0C */	addi r5, r5, 0xc
/* 802B9F24 002834E4  55 08 18 38 */	slwi r8, r8, 3
/* 802B9F28 002834E8  7C A5 42 14 */	add r5, r5, r8
/* 802B9F2C 002834EC  48 00 00 5C */	b .L_802B9F88
.L_802B9F30:
/* 802B9F30 002834F0  81 49 00 00 */	lwz r10, 0(r9)
/* 802B9F34 002834F4  7C 8B 23 78 */	mr r11, r4
/* 802B9F38 002834F8  48 00 00 1C */	b .L_802B9F54
.L_802B9F3C:
/* 802B9F3C 002834FC  7F E8 07 75 */	extsb. r8, r31
/* 802B9F40 00283500  40 82 00 0C */	bne .L_802B9F4C
/* 802B9F44 00283504  39 00 00 00 */	li r8, 0
/* 802B9F48 00283508  48 00 00 30 */	b .L_802B9F78
.L_802B9F4C:
/* 802B9F4C 0028350C  39 4A 00 01 */	addi r10, r10, 1
/* 802B9F50 00283510  39 6B 00 01 */	addi r11, r11, 1
.L_802B9F54:
/* 802B9F54 00283514  8B EA 00 00 */	lbz r31, 0(r10)
/* 802B9F58 00283518  89 0B 00 00 */	lbz r8, 0(r11)
/* 802B9F5C 0028351C  7F E9 07 74 */	extsb r9, r31
/* 802B9F60 00283520  7D 08 07 74 */	extsb r8, r8
/* 802B9F64 00283524  7C 09 40 00 */	cmpw r9, r8
/* 802B9F68 00283528  41 82 FF D4 */	beq .L_802B9F3C
/* 802B9F6C 0028352C  89 2B 00 00 */	lbz r9, 0(r11)
/* 802B9F70 00283530  89 0A 00 00 */	lbz r8, 0(r10)
/* 802B9F74 00283534  7D 09 40 50 */	subf r8, r9, r8
.L_802B9F78:
/* 802B9F78 00283538  2C 08 00 00 */	cmpwi r8, 0
/* 802B9F7C 0028353C  40 82 00 0C */	bne .L_802B9F88
/* 802B9F80 00283540  7C 63 62 14 */	add r3, r3, r12
/* 802B9F84 00283544  48 00 00 48 */	b .L_802B9FCC
.L_802B9F88:
/* 802B9F88 00283548  38 A5 00 08 */	addi r5, r5, 8
.L_802B9F8C:
/* 802B9F8C 0028354C  81 25 00 00 */	lwz r9, 0(r5)
/* 802B9F90 00283550  2C 09 00 00 */	cmpwi r9, 0
/* 802B9F94 00283554  40 82 FE 98 */	bne .L_802B9E2C
.L_802B9F98:
/* 802B9F98 00283558  2C 07 00 00 */	cmpwi r7, 0
/* 802B9F9C 0028355C  41 82 00 2C */	beq .L_802B9FC8
/* 802B9FA0 00283560  3C 80 80 54 */	lis r4, __vt__std_bad_cast@ha
/* 802B9FA4 00283564  3C 60 80 51 */	lis r3, lbl_8050CE30@ha
/* 802B9FA8 00283568  38 84 F0 40 */	addi r4, r4, __vt__std_bad_cast@l
/* 802B9FAC 0028356C  3C A0 80 2C */	lis r5, __dt__Q23std8bad_castFv@ha
/* 802B9FB0 00283570  38 63 CE 30 */	addi r3, r3, lbl_8050CE30@l
/* 802B9FB4 00283574  90 81 00 08 */	stw r4, 8(r1)
/* 802B9FB8 00283578  38 63 00 27 */	addi r3, r3, 0x27
/* 802B9FBC 0028357C  38 81 00 08 */	addi r4, r1, 8
/* 802B9FC0 00283580  38 A5 9F E0 */	addi r5, r5, __dt__Q23std8bad_castFv@l
/* 802B9FC4 00283584  48 00 1B F9 */	bl __throw
.L_802B9FC8:
/* 802B9FC8 00283588  38 60 00 00 */	li r3, 0
.L_802B9FCC:
/* 802B9FCC 0028358C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B9FD0 00283590  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B9FD4 00283594  7C 08 03 A6 */	mtlr r0
/* 802B9FD8 00283598  38 21 00 20 */	addi r1, r1, 0x20
/* 802B9FDC 0028359C  4E 80 00 20 */	blr
.endfn __dynamic_cast

.fn __dt__Q23std8bad_castFv, global
/* 802B9FE0 002835A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9FE4 002835A4  7C 08 02 A6 */	mflr r0
/* 802B9FE8 002835A8  2C 03 00 00 */	cmpwi r3, 0
/* 802B9FEC 002835AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9FF0 002835B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B9FF4 002835B4  7C 7F 1B 78 */	mr r31, r3
/* 802B9FF8 002835B8  41 82 00 10 */	beq .L_802BA008
/* 802B9FFC 002835BC  2C 04 00 00 */	cmpwi r4, 0
/* 802BA000 002835C0  40 81 00 08 */	ble .L_802BA008
/* 802BA004 002835C4  48 17 AC 29 */	bl __dl__FPv
.L_802BA008:
/* 802BA008 002835C8  7F E3 FB 78 */	mr r3, r31
/* 802BA00C 002835CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BA010 002835D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA014 002835D4  7C 08 03 A6 */	mtlr r0
/* 802BA018 002835D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA01C 002835DC  4E 80 00 20 */	blr 
.endfn __dt__Q23std8bad_castFv

.fn what__Q23std8bad_castCFv, global
/* 802BA020 002835E0  3C 60 80 54 */	lis r3, lbl_8053F05C@ha
/* 802BA024 002835E4  38 63 F0 5C */	addi r3, r3, lbl_8053F05C@l
/* 802BA028 002835E8  4E 80 00 20 */	blr 
.endfn what__Q23std8bad_castCFv

.section .data, "wa"  # 0x805281E0 - 0x80573C60
.global __vt__std_bad_cast
__vt__std_bad_cast:
	.4byte __RTTI__std_bad_cast
	.4byte 0
	.4byte __dt__Q23std8bad_castFv
	.4byte what__Q23std8bad_castCFv

.global std_bad_cast_hierarchy
std_bad_cast_hierarchy:
	.4byte __RTTI__std_exception
	.4byte 0
	.4byte 0


.global lbl_8053F05C
lbl_8053F05C:
	.asciz "bad_cast"
	.balign 4

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__std_exception
__RTTI__std_exception:
	.4byte std_exception_typestr
	.4byte 0

.global thandler__3std
thandler__3std:
	.4byte dthandler__3stdFv
	.4byte 0

.global __RTTI__std_bad_cast
__RTTI__std_bad_cast:
	.4byte std_bad_cast_typestr
	.4byte std_bad_cast_hierarchy

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global std_exception_typestr
std_exception_typestr:
	.asciz "std::exception"
	.balign 4


.global lbl_8050CE10
lbl_8050CE10:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global std_bad_cast_typestr
std_bad_cast_typestr:
	.asciz "std::bad_cast"
	.balign 4


.global lbl_8050CE30
lbl_8050CE30:
	.asciz "???"
	.asciz "!std::exception!!std::bad_typeid!!"
	.asciz "!std::exception!!std::bad_cast!!"

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BF30", local
.hidden "@etb_8001BF30"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BF30"

.obj "@etb_8001BF38", local
.hidden "@etb_8001BF38"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BF38"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033AB8", local
.hidden "@eti_80033AB8"
	.4byte __dynamic_cast
	.4byte 0x0000025C
	.4byte "@etb_8001BF30"
.endobj "@eti_80033AB8"

.obj "@eti_80033AC4", local
.hidden "@eti_80033AC4"
	.4byte __dt__Q23std8bad_castFv
	.4byte 0x00000040
	.4byte "@etb_8001BF38"
.endobj "@eti_80033AC4"
