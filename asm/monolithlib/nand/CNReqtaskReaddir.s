.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_804DB0F0, global
/* 804DB0F0 004A46B0  90 83 00 00 */	stw r4, 0(r3)
/* 804DB0F4 004A46B4  38 00 00 00 */	li r0, 0
/* 804DB0F8 004A46B8  90 A3 00 04 */	stw r5, 4(r3)
/* 804DB0FC 004A46BC  90 C3 00 08 */	stw r6, 8(r3)
/* 804DB100 004A46C0  98 03 00 0C */	stb r0, 0xc(r3)
/* 804DB104 004A46C4  38 6D C1 48 */	addi r3, r13, lbl_806682C8@sda21
/* 804DB108 004A46C8  98 04 00 00 */	stb r0, 0(r4)
/* 804DB10C 004A46CC  90 06 00 00 */	stw r0, 0(r6)
/* 804DB110 004A46D0  4E 80 00 20 */	blr 
.endfn func_804DB0F0

.fn func_804DB114, global
/* 804DB114 004A46D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB118 004A46D8  7C 08 02 A6 */	mflr r0
/* 804DB11C 004A46DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB120 004A46E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB124 004A46E4  7C 9F 23 78 */	mr r31, r4
/* 804DB128 004A46E8  88 0D C1 28 */	lbz r0, lbl_806682A8@sda21(r13)
/* 804DB12C 004A46EC  2C 00 00 00 */	cmpwi r0, 0
/* 804DB130 004A46F0  41 82 00 0C */	beq .L_804DB13C
/* 804DB134 004A46F4  38 60 00 00 */	li r3, 0
/* 804DB138 004A46F8  48 00 00 DC */	b .L_804DB214
.L_804DB13C:
/* 804DB13C 004A46FC  88 C4 00 0C */	lbz r6, 0xc(r4)
/* 804DB140 004A4700  7C C0 07 75 */	extsb. r0, r6
/* 804DB144 004A4704  40 81 00 18 */	ble .L_804DB15C
/* 804DB148 004A4708  80 0D C1 2C */	lwz r0, lbl_806682AC@sda21(r13)
/* 804DB14C 004A470C  2C 00 00 00 */	cmpwi r0, 0
/* 804DB150 004A4710  40 80 00 0C */	bge .L_804DB15C
/* 804DB154 004A4714  38 60 00 02 */	li r3, 2
/* 804DB158 004A4718  48 00 00 BC */	b .L_804DB214
.L_804DB15C:
/* 804DB15C 004A471C  7C C0 07 74 */	extsb r0, r6
/* 804DB160 004A4720  2C 00 00 01 */	cmpwi r0, 1
/* 804DB164 004A4724  40 82 00 24 */	bne .L_804DB188
/* 804DB168 004A4728  80 64 00 08 */	lwz r3, 8(r4)
/* 804DB16C 004A472C  80 A4 00 04 */	lwz r5, 4(r4)
/* 804DB170 004A4730  80 03 00 00 */	lwz r0, 0(r3)
/* 804DB174 004A4734  1C 00 00 0D */	mulli r0, r0, 0xd
/* 804DB178 004A4738  7C 05 00 40 */	cmplw r5, r0
/* 804DB17C 004A473C  40 80 00 0C */	bge .L_804DB188
/* 804DB180 004A4740  38 60 00 02 */	li r3, 2
/* 804DB184 004A4744  48 00 00 90 */	b .L_804DB214
.L_804DB188:
/* 804DB188 004A4748  7C C0 07 75 */	extsb. r0, r6
/* 804DB18C 004A474C  41 82 00 20 */	beq .L_804DB1AC
/* 804DB190 004A4750  2C 00 00 01 */	cmpwi r0, 1
/* 804DB194 004A4754  41 82 00 40 */	beq .L_804DB1D4
/* 804DB198 004A4758  2C 00 00 02 */	cmpwi r0, 2
/* 804DB19C 004A475C  41 82 00 60 */	beq .L_804DB1FC
/* 804DB1A0 004A4760  2C 00 00 03 */	cmpwi r0, 3
/* 804DB1A4 004A4764  41 82 00 64 */	beq .L_804DB208
/* 804DB1A8 004A4768  48 00 00 68 */	b .L_804DB210
.L_804DB1AC:
/* 804DB1AC 004A476C  80 84 00 08 */	lwz r4, 8(r4)
/* 804DB1B0 004A4770  38 60 00 00 */	li r3, 0
/* 804DB1B4 004A4774  4B FF F6 E5 */	bl func_804DA898
/* 804DB1B8 004A4778  2C 03 00 00 */	cmpwi r3, 0
/* 804DB1BC 004A477C  41 82 00 0C */	beq .L_804DB1C8
/* 804DB1C0 004A4780  38 60 00 02 */	li r3, 2
/* 804DB1C4 004A4784  48 00 00 50 */	b .L_804DB214
.L_804DB1C8:
/* 804DB1C8 004A4788  38 00 00 01 */	li r0, 1
/* 804DB1CC 004A478C  98 1F 00 0C */	stb r0, 0xc(r31)
/* 804DB1D0 004A4790  48 00 00 40 */	b .L_804DB210
.L_804DB1D4:
/* 804DB1D4 004A4794  80 64 00 00 */	lwz r3, 0(r4)
/* 804DB1D8 004A4798  80 84 00 08 */	lwz r4, 8(r4)
/* 804DB1DC 004A479C  4B FF F6 BD */	bl func_804DA898
/* 804DB1E0 004A47A0  2C 03 00 00 */	cmpwi r3, 0
/* 804DB1E4 004A47A4  41 82 00 0C */	beq .L_804DB1F0
/* 804DB1E8 004A47A8  38 60 00 02 */	li r3, 2
/* 804DB1EC 004A47AC  48 00 00 28 */	b .L_804DB214
.L_804DB1F0:
/* 804DB1F0 004A47B0  38 00 00 02 */	li r0, 2
/* 804DB1F4 004A47B4  98 1F 00 0C */	stb r0, 0xc(r31)
/* 804DB1F8 004A47B8  48 00 00 18 */	b .L_804DB210
.L_804DB1FC:
/* 804DB1FC 004A47BC  38 00 00 03 */	li r0, 3
/* 804DB200 004A47C0  98 04 00 0C */	stb r0, 0xc(r4)
/* 804DB204 004A47C4  48 00 00 0C */	b .L_804DB210
.L_804DB208:
/* 804DB208 004A47C8  38 60 00 01 */	li r3, 1
/* 804DB20C 004A47CC  48 00 00 08 */	b .L_804DB214
.L_804DB210:
/* 804DB210 004A47D0  38 60 00 00 */	li r3, 0
.L_804DB214:
/* 804DB214 004A47D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB218 004A47D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB21C 004A47DC  7C 08 03 A6 */	mtlr r0
/* 804DB220 004A47E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB224 004A47E4  4E 80 00 20 */	blr
.endfn func_804DB114

.fn sinit_804DB228, global
/* 804DB228 004A47E8  38 6D C1 48 */	addi r3, r13, lbl_806682C8@sda21
/* 804DB22C 004A47EC  48 00 00 04 */	b .L_804DB230
.L_804DB230:
/* 804DB230 004A47F0  3C 80 80 57 */	lis r4, __vt__CNReqtaskReaddir@ha
/* 804DB234 004A47F4  38 84 35 F0 */	addi r4, r4, __vt__CNReqtaskReaddir@l
/* 804DB238 004A47F8  90 83 00 00 */	stw r4, 0(r3)
/* 804DB23C 004A47FC  4E 80 00 20 */	blr
.endfn sinit_804DB228

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_804DB228

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global CNReqtaskReaddir_typestr
CNReqtaskReaddir_typestr:
	.asciz "CNReqtaskReaddir"
	.balign 4
	.4byte 0
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt__CNReqtaskReaddir
__vt__CNReqtaskReaddir:
	.4byte __RTTI__CNReqtaskReaddir
	.4byte 0
	.4byte func_804DB114
	.4byte func_804DA4CC

.global CNReqtaskReaddir_hierarchy
CNReqtaskReaddir_hierarchy:
	.4byte __RTTI__CNReqtask
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__CNReqtaskReaddir
__RTTI__CNReqtaskReaddir:
	.4byte CNReqtaskReaddir_typestr
	.4byte CNReqtaskReaddir_hierarchy

.section .sbss, "wa"  # 0x80666600 - 0x8066836F



.global lbl_806682C8
lbl_806682C8:
	.skip 0x8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80020778", local
.hidden "@etb_80020778"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020778"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80038780", local
.hidden "@eti_80038780"
	.4byte func_804DB114
	.4byte 0x00000114
	.4byte "@etb_80020778"
.endobj "@eti_80038780"
