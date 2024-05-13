.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_800CA4EC, global
/* 800CA4EC 00093AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CA4F0 00093AB0  7C 08 02 A6 */	mflr r0
/* 800CA4F4 00093AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CA4F8 00093AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CA4FC 00093ABC  7C 7F 1B 78 */	mr r31, r3
/* 800CA500 00093AC0  48 00 04 49 */	bl func_800CA948
/* 800CA504 00093AC4  81 9F 00 00 */	lwz r12, 0(r31)
/* 800CA508 00093AC8  7F E3 FB 78 */	mr r3, r31
/* 800CA50C 00093ACC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 800CA510 00093AD0  7D 89 03 A6 */	mtctr r12
/* 800CA514 00093AD4  4E 80 04 21 */	bctrl 
/* 800CA518 00093AD8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 800CA51C 00093ADC  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 800CA520 00093AE0  48 09 16 1D */	bl func_8015BB3C
/* 800CA524 00093AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CA528 00093AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CA52C 00093AEC  7C 08 03 A6 */	mtlr r0
/* 800CA530 00093AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 800CA534 00093AF4  4E 80 00 20 */	blr 
.endfn func_800CA4EC

.fn func_800CA538, global
/* 800CA538 00093AF8  38 63 00 68 */	addi r3, r3, 0x68
/* 800CA53C 00093AFC  4E 80 00 20 */	blr 
.endfn func_800CA538

.fn func_800CA540, global
/* 800CA540 00093B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CA544 00093B04  7C 08 02 A6 */	mflr r0
/* 800CA548 00093B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CA54C 00093B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CA550 00093B10  7C 7F 1B 78 */	mr r31, r3
/* 800CA554 00093B14  48 00 05 AD */	bl func_800CAB00
/* 800CA558 00093B18  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 800CA55C 00093B1C  38 7F 03 68 */	addi r3, r31, 0x368
/* 800CA560 00093B20  38 80 00 00 */	li r4, 0
/* 800CA564 00093B24  80 A5 00 98 */	lwz r5, 0x98(r5)
/* 800CA568 00093B28  48 0C 89 19 */	bl func_80192E80
/* 800CA56C 00093B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CA570 00093B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CA574 00093B34  7C 08 03 A6 */	mtlr r0
/* 800CA578 00093B38  38 21 00 10 */	addi r1, r1, 0x10
/* 800CA57C 00093B3C  4E 80 00 20 */	blr 
.endfn func_800CA540

.fn func_800CA580, global
/* 800CA580 00093B40  38 A0 00 01 */	li r5, 1
/* 800CA584 00093B44  38 63 03 68 */	addi r3, r3, 0x368
/* 800CA588 00093B48  48 0C 8B 18 */	b func_801930A0
.endfn func_800CA580

.fn func_800CA58C, global
/* 800CA58C 00093B4C  4E 80 00 20 */	blr 
.endfn func_800CA58C

.fn func_800CA590, global
/* 800CA590 00093B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CA594 00093B54  7C 08 02 A6 */	mflr r0
/* 800CA598 00093B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CA59C 00093B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CA5A0 00093B60  7C 7F 1B 78 */	mr r31, r3
/* 800CA5A4 00093B64  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 800CA5A8 00093B68  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 800CA5AC 00093B6C  7C 04 00 40 */	cmplw r4, r0
/* 800CA5B0 00093B70  40 82 00 AC */	bne .L_800CA65C
/* 800CA5B4 00093B74  88 05 00 0A */	lbz r0, 0xa(r5)
/* 800CA5B8 00093B78  28 00 00 10 */	cmplwi r0, 0x10
/* 800CA5BC 00093B7C  40 82 00 50 */	bne .L_800CA60C
/* 800CA5C0 00093B80  88 65 00 1C */	lbz r3, 0x1c(r5)
/* 800CA5C4 00093B84  38 C0 FF FF */	li r6, -1
/* 800CA5C8 00093B88  38 03 FF D0 */	addi r0, r3, -48
/* 800CA5CC 00093B8C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800CA5D0 00093B90  28 00 00 09 */	cmplwi r0, 9
/* 800CA5D4 00093B94  41 81 00 10 */	bgt .L_800CA5E4
/* 800CA5D8 00093B98  38 65 00 1C */	addi r3, r5, 0x1c
/* 800CA5DC 00093B9C  48 1F A1 35 */	bl atoi
/* 800CA5E0 00093BA0  7C 66 1B 78 */	mr r6, r3
.L_800CA5E4:
/* 800CA5E4 00093BA4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800CA5E8 00093BA8  38 80 00 23 */	li r4, 0x23
/* 800CA5EC 00093BAC  38 A0 00 00 */	li r5, 0
/* 800CA5F0 00093BB0  38 E0 00 00 */	li r7, 0
/* 800CA5F4 00093BB4  81 83 00 00 */	lwz r12, 0(r3)
/* 800CA5F8 00093BB8  39 00 00 00 */	li r8, 0
/* 800CA5FC 00093BBC  81 8C 02 04 */	lwz r12, 0x204(r12)
/* 800CA600 00093BC0  7D 89 03 A6 */	mtctr r12
/* 800CA604 00093BC4  4E 80 04 21 */	bctrl 
/* 800CA608 00093BC8  48 00 00 54 */	b .L_800CA65C
.L_800CA60C:
/* 800CA60C 00093BCC  28 00 00 11 */	cmplwi r0, 0x11
/* 800CA610 00093BD0  40 82 00 4C */	bne .L_800CA65C
/* 800CA614 00093BD4  88 65 00 1C */	lbz r3, 0x1c(r5)
/* 800CA618 00093BD8  38 C0 FF FF */	li r6, -1
/* 800CA61C 00093BDC  38 03 FF D0 */	addi r0, r3, -48
/* 800CA620 00093BE0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800CA624 00093BE4  28 00 00 09 */	cmplwi r0, 9
/* 800CA628 00093BE8  41 81 00 10 */	bgt .L_800CA638
/* 800CA62C 00093BEC  38 65 00 1C */	addi r3, r5, 0x1c
/* 800CA630 00093BF0  48 1F A0 E1 */	bl atoi
/* 800CA634 00093BF4  7C 66 1B 78 */	mr r6, r3
.L_800CA638:
/* 800CA638 00093BF8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800CA63C 00093BFC  38 80 00 23 */	li r4, 0x23
/* 800CA640 00093C00  38 A0 00 00 */	li r5, 0
/* 800CA644 00093C04  38 E0 00 00 */	li r7, 0
/* 800CA648 00093C08  81 83 00 00 */	lwz r12, 0(r3)
/* 800CA64C 00093C0C  39 00 00 00 */	li r8, 0
/* 800CA650 00093C10  81 8C 02 04 */	lwz r12, 0x204(r12)
/* 800CA654 00093C14  7D 89 03 A6 */	mtctr r12
/* 800CA658 00093C18  4E 80 04 21 */	bctrl 
.L_800CA65C:
/* 800CA65C 00093C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CA660 00093C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CA664 00093C24  7C 08 03 A6 */	mtlr r0
/* 800CA668 00093C28  38 21 00 10 */	addi r1, r1, 0x10
/* 800CA66C 00093C2C  4E 80 00 20 */	blr
.endfn func_800CA590

.fn __dt__cf_CfObjectImplObj, global
/* 800CA670 00093C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CA674 00093C34  7C 08 02 A6 */	mflr r0
/* 800CA678 00093C38  2C 03 00 00 */	cmpwi r3, 0
/* 800CA67C 00093C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CA680 00093C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CA684 00093C44  7C 9F 23 78 */	mr r31, r4
/* 800CA688 00093C48  93 C1 00 08 */	stw r30, 8(r1)
/* 800CA68C 00093C4C  7C 7E 1B 78 */	mr r30, r3
/* 800CA690 00093C50  41 82 00 20 */	beq .L_800CA6B0
/* 800CA694 00093C54  38 80 FF FF */	li r4, -1
/* 800CA698 00093C58  38 63 03 68 */	addi r3, r3, 0x368
/* 800CA69C 00093C5C  48 0C 87 A5 */	bl __dt__cf_CPartsChange
/* 800CA6A0 00093C60  2C 1F 00 00 */	cmpwi r31, 0
/* 800CA6A4 00093C64  40 81 00 0C */	ble .L_800CA6B0
/* 800CA6A8 00093C68  7F C3 F3 78 */	mr r3, r30
/* 800CA6AC 00093C6C  48 36 A5 81 */	bl __dl__FPv
.L_800CA6B0:
/* 800CA6B0 00093C70  7F C3 F3 78 */	mr r3, r30
/* 800CA6B4 00093C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CA6B8 00093C78  83 C1 00 08 */	lwz r30, 8(r1)
/* 800CA6BC 00093C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CA6C0 00093C80  7C 08 03 A6 */	mtlr r0
/* 800CA6C4 00093C84  38 21 00 10 */	addi r1, r1, 0x10
/* 800CA6C8 00093C88  4E 80 00 20 */	blr 
.endfn __dt__cf_CfObjectImplObj

.fn func_800CA6CC, global
/* 800CA6CC 00093C8C  38 63 FF F4 */	addi r3, r3, -12
/* 800CA6D0 00093C90  48 00 47 58 */	b func_800CEE28
.endfn func_800CA6CC

.fn func_800CA6D4, global
/* 800CA6D4 00093C94  38 63 FF F4 */	addi r3, r3, -12
/* 800CA6D8 00093C98  4B FF FF 98 */	b __dt__cf_CfObjectImplObj
.endfn func_800CA6D4

.fn func_800CA6DC, global
/* 800CA6DC 00093C9C  38 63 FF F0 */	addi r3, r3, -16
/* 800CA6E0 00093CA0  4B FF FF 90 */	b __dt__cf_CfObjectImplObj
.endfn func_800CA6DC

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CfObjectImplObj_typestr, global
	.asciz "cf::CfObjectImplObj"
	.4byte 0
.endobj cf_CfObjectImplObj_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf15CfObjectImplObj, global
	.4byte __RTTI__Q22cf15CfObjectImplObj
	.4byte 0
	.4byte __dt__cf_CfObjectImplObj
	.4byte func_80054A20
	.4byte func_800CC5DC
	.4byte func_800CC638
	.4byte func_800CA590
	.4byte func_800CD268
	.4byte func_800CD460
	.4byte func_800CD5C0
	.4byte func_800CD5DC
	.4byte func_800CEB68
	.4byte func_80087448
	.4byte func_8008742C
	.4byte func_8008743C
	.4byte func_80087424
	.4byte func_800459FC
	.4byte func_80087410
	.4byte func_800873FC
	.4byte func_800873E8
	.4byte func_800873D4
	.4byte func_800873C8
	.4byte func_800873AC
	.4byte func_80087390
	.4byte func_80087378
	.4byte func_80087364
	.4byte func_80087334
	.4byte func_80087348
	.4byte func_800CE8E4
	.4byte func_800CEBE0
	.4byte func_800CE544
	.4byte func_800CE6A0
	.4byte func_800CE8AC
	.4byte func_800CEA34
	.4byte func_800CAB30
	.4byte func_800CB454
	.4byte func_800CB21C
	.4byte func_800CB9AC
	.4byte func_800CB94C
	.4byte func_80087330
	.4byte func_800CA4EC
	.4byte func_800CA964
	.4byte func_800C596C
	.4byte func_800CAA44
	.4byte func_800CA540
	.4byte __RTTI__Q22cf15CfObjectImplObj
	.4byte 0xFFFFFFF4
	.4byte func_800CA6D4
	.4byte func_800CA6CC
	.4byte __RTTI__Q22cf15CfObjectImplObj
	.4byte 0xFFFFFFF0
	.4byte func_800CA6DC
	.4byte func_800C5988
	.4byte func_800CA58C
	.4byte func_800CBBD8
	.4byte func_800CC01C
	.4byte func_800CC020
	.4byte func_800CA538
	.4byte func_800CEE28
	.4byte func_800CFFA0
.endobj __vt__Q22cf15CfObjectImplObj

.obj cf_CfObjectImplObj_hierarchy, global
	.4byte __RTTI__Q22cf11IObjectInfo
	.4byte 0x00000010
	.4byte __RTTI__14IActParamEvent
	.4byte 0
	.4byte __RTTI__Q22cf8CfObjectImpl
	.4byte 0
	.4byte __RTTI__Q22cf16CfObjectImplMove
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CfObjectImplObj_hierarchy

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000A374", local
.hidden "@etb_8000A374"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000A374"

.obj "@etb_8000A37C", local
.hidden "@etb_8000A37C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000A37C"

.obj "@etb_8000A384", local
.hidden "@etb_8000A384"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000A384"

.obj "@etb_8000A38C", local
.hidden "@etb_8000A38C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000A38C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80025E14", local
.hidden "@eti_80025E14"
	.4byte func_800CA4EC
	.4byte 0x0000004C
	.4byte "@etb_8000A374"
.endobj "@eti_80025E14"

.obj "@eti_80025E20", local
.hidden "@eti_80025E20"
	.4byte func_800CA540
	.4byte 0x00000040
	.4byte "@etb_8000A37C"
.endobj "@eti_80025E20"

.obj "@eti_80025E2C", local
.hidden "@eti_80025E2C"
	.4byte func_800CA590
	.4byte 0x000000E0
	.4byte "@etb_8000A384"
.endobj "@eti_80025E2C"

.obj "@eti_80025E38", local
.hidden "@eti_80025E38"
	.4byte __dt__cf_CfObjectImplObj
	.4byte 0x0000005C
	.4byte "@etb_8000A38C"
.endobj "@eti_80025E38"
