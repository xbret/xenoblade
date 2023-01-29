.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4r::lyt::DrawInfo::DrawInfo()
.fn __ct__Q34nw4r3lyt8DrawInfoFv, global
/* 80408668 003D1C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040866C 003D1C2C  7C 08 02 A6 */	mflr r0
/* 80408670 003D1C30  3C 80 80 57 */	lis r4, lbl_8056D548@ha
/* 80408674 003D1C34  C0 22 C2 50 */	lfs f1, lbl_8066C5D0@sda21(r2)
/* 80408678 003D1C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040867C 003D1C3C  38 84 D5 48 */	addi r4, r4, lbl_8056D548@l
/* 80408680 003D1C40  C0 02 C2 54 */	lfs f0, lbl_8066C5D4@sda21(r2)
/* 80408684 003D1C44  38 A0 00 01 */	li r5, 0x1
/* 80408688 003D1C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040868C 003D1C4C  7C 7F 1B 78 */	mr r31, r3
/* 80408690 003D1C50  90 83 00 00 */	stw r4, 0x0(r3)
/* 80408694 003D1C54  38 80 00 00 */	li r4, 0x0
/* 80408698 003D1C58  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 8040869C 003D1C5C  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 804086A0 003D1C60  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 804086A4 003D1C64  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 804086A8 003D1C68  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 804086AC 003D1C6C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 804086B0 003D1C70  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 804086B4 003D1C74  38 63 00 50 */	addi r3, r3, 0x50
/* 804086B8 003D1C78  4B BF BC 99 */	bl memset
/* 804086BC 003D1C7C  38 7F 00 04 */	addi r3, r31, 0x4
/* 804086C0 003D1C80  4B F4 4B 21 */	bl PSMTXIdentity
/* 804086C4 003D1C84  7F E3 FB 78 */	mr r3, r31
/* 804086C8 003D1C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804086CC 003D1C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804086D0 003D1C90  7C 08 03 A6 */	mtlr r0
/* 804086D4 003D1C94  38 21 00 10 */	addi r1, r1, 0x10
/* 804086D8 003D1C98  4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3lyt8DrawInfoFv

# nw4r::lyt::DrawInfo::~DrawInfo()
.fn __dt__Q34nw4r3lyt8DrawInfoFv, global
/* 804086DC 003D1C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804086E0 003D1CA0  7C 08 02 A6 */	mflr r0
/* 804086E4 003D1CA4  2C 03 00 00 */	cmpwi r3, 0x0
/* 804086E8 003D1CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804086EC 003D1CAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804086F0 003D1CB0  7C 7F 1B 78 */	mr r31, r3
/* 804086F4 003D1CB4  41 82 00 10 */	beq .L_80408704
/* 804086F8 003D1CB8  2C 04 00 00 */	cmpwi r4, 0x0
/* 804086FC 003D1CBC  40 81 00 08 */	ble .L_80408704
/* 80408700 003D1CC0  48 02 C5 2D */	bl __dl__FPv
.L_80408704:
/* 80408704 003D1CC4  7F E3 FB 78 */	mr r3, r31
/* 80408708 003D1CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040870C 003D1CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408710 003D1CD0  7C 08 03 A6 */	mtlr r0
/* 80408714 003D1CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80408718 003D1CD8  4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3lyt8DrawInfoFv

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8
.global lbl_8056D548
lbl_8056D548:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
	.4byte 0x00000000

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_8066C5D0
lbl_8066C5D0:
	.4byte 0x00000000
.global lbl_8066C5D4
lbl_8066C5D4:
	.4byte 0x3F800000
