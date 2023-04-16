.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __ct__Q36nw4hbm3lyt8BoundingFPCQ46nw4hbm3lyt3res8BoundingRCQ36nw4hbm3lyt11ResBlockSet, global
/* 8032C410 002F59D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C414 002F59D4  7C 08 02 A6 */	mflr r0
/* 8032C418 002F59D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C41C 002F59DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C420 002F59E0  7C 7F 1B 78 */	mr r31, r3
/* 8032C424 002F59E4  48 00 53 1D */	bl __ct__Q36nw4hbm3lyt4PaneFPCQ46nw4hbm3lyt3res4Pane
/* 8032C428 002F59E8  3C 80 80 55 */	lis r4, lbl_8054D6B8@ha
/* 8032C42C 002F59EC  7F E3 FB 78 */	mr r3, r31
/* 8032C430 002F59F0  38 84 D6 B8 */	addi r4, r4, lbl_8054D6B8@l
/* 8032C434 002F59F4  90 9F 00 00 */	stw r4, 0(r31)
/* 8032C438 002F59F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C43C 002F59FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C440 002F5A00  7C 08 03 A6 */	mtlr r0
/* 8032C444 002F5A04  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C448 002F5A08  4E 80 00 20 */	blr 
.endfn __ct__Q36nw4hbm3lyt8BoundingFPCQ46nw4hbm3lyt3res8BoundingRCQ36nw4hbm3lyt11ResBlockSet

.balign 16, 0
.fn __dt__Q36nw4hbm3lyt8BoundingFv, global
/* 8032C450 002F5A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C454 002F5A14  7C 08 02 A6 */	mflr r0
/* 8032C458 002F5A18  2C 03 00 00 */	cmpwi r3, 0
/* 8032C45C 002F5A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C460 002F5A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C464 002F5A24  7C 9F 23 78 */	mr r31, r4
/* 8032C468 002F5A28  93 C1 00 08 */	stw r30, 8(r1)
/* 8032C46C 002F5A2C  7C 7E 1B 78 */	mr r30, r3
/* 8032C470 002F5A30  41 82 00 1C */	beq .L_8032C48C
/* 8032C474 002F5A34  38 80 00 00 */	li r4, 0
/* 8032C478 002F5A38  48 00 53 E9 */	bl __dt__Q36nw4hbm3lyt4PaneFv
/* 8032C47C 002F5A3C  2C 1F 00 00 */	cmpwi r31, 0
/* 8032C480 002F5A40  40 81 00 0C */	ble .L_8032C48C
/* 8032C484 002F5A44  7F C3 F3 78 */	mr r3, r30
/* 8032C488 002F5A48  48 10 87 A5 */	bl __dl__FPv
.L_8032C48C:
/* 8032C48C 002F5A4C  7F C3 F3 78 */	mr r3, r30
/* 8032C490 002F5A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C494 002F5A54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8032C498 002F5A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C49C 002F5A5C  7C 08 03 A6 */	mtlr r0
/* 8032C4A0 002F5A60  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C4A4 002F5A64  4E 80 00 20 */	blr 
.endfn __dt__Q36nw4hbm3lyt8BoundingFv

.balign 16, 0
.fn DrawSelf__Q36nw4hbm3lyt8BoundingFRCQ36nw4hbm3lyt8DrawInfo, global
/* 8032C4B0 002F5A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032C4B4 002F5A74  7C 08 02 A6 */	mflr r0
/* 8032C4B8 002F5A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032C4BC 002F5A7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8032C4C0 002F5A80  7C 7F 1B 78 */	mr r31, r3
/* 8032C4C4 002F5A84  88 04 00 50 */	lbz r0, 0x50(r4)
/* 8032C4C8 002F5A88  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8032C4CC 002F5A8C  41 82 00 40 */	beq .L_8032C50C
/* 8032C4D0 002F5A90  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C4D4 002F5A94  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8032C4D8 002F5A98  7D 89 03 A6 */	mtctr r12
/* 8032C4DC 002F5A9C  4E 80 04 21 */	bctrl 
/* 8032C4E0 002F5AA0  3C 80 00 FF */	lis r4, 0x00FF00FF@ha
/* 8032C4E4 002F5AA4  7F E3 FB 78 */	mr r3, r31
/* 8032C4E8 002F5AA8  38 04 00 FF */	addi r0, r4, 0x00FF00FF@l
/* 8032C4EC 002F5AAC  90 01 00 08 */	stw r0, 8(r1)
/* 8032C4F0 002F5AB0  48 00 61 41 */	bl GetVtxPos__Q36nw4hbm3lyt4PaneCFv
/* 8032C4F4 002F5AB4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8032C4F8 002F5AB8  38 9F 00 4C */	addi r4, r31, 0x4c
/* 8032C4FC 002F5ABC  38 A1 00 08 */	addi r5, r1, 8
/* 8032C500 002F5AC0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8032C504 002F5AC4  38 61 00 10 */	addi r3, r1, 0x10
/* 8032C508 002F5AC8  48 00 0C 39 */	bl DrawLine__Q36nw4hbm3lyt6detailFRCQ36nw4hbm4math4VEC2RCQ36nw4hbm3lyt4SizeQ36nw4hbm2ut5Color
.L_8032C50C:
/* 8032C50C 002F5ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032C510 002F5AD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8032C514 002F5AD4  7C 08 03 A6 */	mtlr r0
/* 8032C518 002F5AD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8032C51C 002F5ADC  4E 80 00 20 */	blr
.endfn DrawSelf__Q36nw4hbm3lyt8BoundingFRCQ36nw4hbm3lyt8DrawInfo

.balign 16, 0
.fn __dt__Q36nw4hbm2ut5ColorFv, global
/* 8032C520 002F5AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C524 002F5AE4  7C 08 02 A6 */	mflr r0
/* 8032C528 002F5AE8  2C 03 00 00 */	cmpwi r3, 0
/* 8032C52C 002F5AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C530 002F5AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C534 002F5AF4  7C 7F 1B 78 */	mr r31, r3
/* 8032C538 002F5AF8  41 82 00 10 */	beq .L_8032C548
/* 8032C53C 002F5AFC  2C 04 00 00 */	cmpwi r4, 0
/* 8032C540 002F5B00  40 81 00 08 */	ble .L_8032C548
/* 8032C544 002F5B04  48 10 86 E9 */	bl __dl__FPv
.L_8032C548:
/* 8032C548 002F5B08  7F E3 FB 78 */	mr r3, r31
/* 8032C54C 002F5B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C550 002F5B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C554 002F5B14  7C 08 03 A6 */	mtlr r0
/* 8032C558 002F5B18  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C55C 002F5B1C  4E 80 00 20 */	blr 
.endfn __dt__Q36nw4hbm2ut5ColorFv

.balign 16, 0
.fn GetRuntimeTypeInfo__Q36nw4hbm3lyt8BoundingCFv, global
/* 8032C560 002F5B20  3C 60 80 5D */	lis r3, typeInfo__Q36nw4hbm3lyt8Bounding@ha
/* 8032C564 002F5B24  38 63 D7 88 */	addi r3, r3, typeInfo__Q36nw4hbm3lyt8Bounding@l
/* 8032C568 002F5B28  4E 80 00 20 */	blr 
.endfn GetRuntimeTypeInfo__Q36nw4hbm3lyt8BoundingCFv

.balign 16, 0
.fn "__sinit_\lyt_bounding_cpp", local
/* 8032C570 002F5B30  3C 80 80 5D */	lis r4, typeInfo__Q36nw4hbm3lyt4Pane@ha
/* 8032C574 002F5B34  3C 60 80 5D */	lis r3, typeInfo__Q36nw4hbm3lyt8Bounding@ha
/* 8032C578 002F5B38  38 84 D7 C0 */	addi r4, r4, typeInfo__Q36nw4hbm3lyt4Pane@l
/* 8032C57C 002F5B3C  90 83 D7 88 */	stw r4, typeInfo__Q36nw4hbm3lyt8Bounding@l(r3)
/* 8032C580 002F5B40  4E 80 00 20 */	blr 
.endfn "__sinit_\lyt_bounding_cpp"

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte "__sinit_\lyt_bounding_cpp"

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8054D6B8, global
	.4byte lbl_8054D748
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt8BoundingFv
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt8BoundingCFv
	.4byte CalculateMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Draw__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte DrawSelf__Q36nw4hbm3lyt8BoundingFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Animate__Q36nw4hbm3lyt4PaneFUl
	.4byte AnimateSelf__Q36nw4hbm3lyt4PaneFUl
	.4byte GetVtxColor__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetVtxColor__Q36nw4hbm3lyt4PaneFUlQ36nw4hbm2ut5Color
	.4byte GetColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetVtxColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte FindPaneByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte BindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte FindAnimationLink__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformbb
	.4byte GetMaterial__Q36nw4hbm3lyt4PaneCFv
	.4byte LoadMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
.endobj lbl_8054D6B8

.obj lbl_8054D71C, global
	.asciz "nw4hbm::lyt::Bounding"
	.balign 4
.endobj lbl_8054D71C

.obj lbl_8054D734, global
	.4byte lbl_8054D798
	.4byte 0
	.4byte lbl_8054D770
	.4byte 0
	.4byte 0
.endobj lbl_8054D734

.obj lbl_8054D748, global
	.4byte lbl_8054D71C
	.4byte lbl_8054D734
.endobj lbl_8054D748

.obj lbl_8054D750, global
	.asciz "nw4hbm::lyt::Pane"
	.balign 4
.endobj lbl_8054D750

.obj lbl_8054D764, global
	.4byte lbl_8054D798
	.4byte 0
	.4byte 0
.endobj lbl_8054D764

.obj lbl_8054D770, global
	.4byte lbl_8054D750
	.4byte lbl_8054D764
.endobj lbl_8054D770

.obj lbl_8054D778, global
	.asciz "nw4hbm::lyt::detail::PaneBase"
	.balign 4
.endobj lbl_8054D778

.obj lbl_8054D798, global
	.4byte lbl_8054D778
	.4byte 0
.endobj lbl_8054D798

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj typeInfo__Q36nw4hbm3lyt8Bounding, global
	.skip 0x8
.endobj typeInfo__Q36nw4hbm3lyt8Bounding
