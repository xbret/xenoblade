.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn bdcpy, global
/* 802DE634 002A7BF4  89 24 00 00 */	lbz r9, 0(r4)
/* 802DE638 002A7BF8  89 04 00 01 */	lbz r8, 1(r4)
/* 802DE63C 002A7BFC  88 E4 00 02 */	lbz r7, 2(r4)
/* 802DE640 002A7C00  88 C4 00 03 */	lbz r6, 3(r4)
/* 802DE644 002A7C04  88 A4 00 04 */	lbz r5, 4(r4)
/* 802DE648 002A7C08  88 04 00 05 */	lbz r0, 5(r4)
/* 802DE64C 002A7C0C  99 23 00 00 */	stb r9, 0(r3)
/* 802DE650 002A7C10  99 03 00 01 */	stb r8, 1(r3)
/* 802DE654 002A7C14  98 E3 00 02 */	stb r7, 2(r3)
/* 802DE658 002A7C18  98 C3 00 03 */	stb r6, 3(r3)
/* 802DE65C 002A7C1C  98 A3 00 04 */	stb r5, 4(r3)
/* 802DE660 002A7C20  98 03 00 05 */	stb r0, 5(r3)
/* 802DE664 002A7C24  4E 80 00 20 */	blr 
.endfn bdcpy

.fn bdcmp, global
/* 802DE668 002A7C28  88 A3 00 00 */	lbz r5, 0(r3)
/* 802DE66C 002A7C2C  88 04 00 00 */	lbz r0, 0(r4)
/* 802DE670 002A7C30  7C 05 00 40 */	cmplw r5, r0
/* 802DE674 002A7C34  41 82 00 0C */	beq .L_802DE680
/* 802DE678 002A7C38  38 60 FF FF */	li r3, -1
/* 802DE67C 002A7C3C  4E 80 00 20 */	blr
.L_802DE680:
/* 802DE680 002A7C40  88 A3 00 01 */	lbz r5, 1(r3)
/* 802DE684 002A7C44  38 C3 00 02 */	addi r6, r3, 2
/* 802DE688 002A7C48  88 04 00 01 */	lbz r0, 1(r4)
/* 802DE68C 002A7C4C  38 64 00 02 */	addi r3, r4, 2
/* 802DE690 002A7C50  7C 05 00 40 */	cmplw r5, r0
/* 802DE694 002A7C54  41 82 00 0C */	beq .L_802DE6A0
/* 802DE698 002A7C58  38 60 FF FF */	li r3, -1
/* 802DE69C 002A7C5C  4E 80 00 20 */	blr
.L_802DE6A0:
/* 802DE6A0 002A7C60  88 A6 00 00 */	lbz r5, 0(r6)
/* 802DE6A4 002A7C64  88 03 00 00 */	lbz r0, 0(r3)
/* 802DE6A8 002A7C68  7C 05 00 40 */	cmplw r5, r0
/* 802DE6AC 002A7C6C  41 82 00 0C */	beq .L_802DE6B8
/* 802DE6B0 002A7C70  38 60 FF FF */	li r3, -1
/* 802DE6B4 002A7C74  4E 80 00 20 */	blr
.L_802DE6B8:
/* 802DE6B8 002A7C78  88 A6 00 01 */	lbz r5, 1(r6)
/* 802DE6BC 002A7C7C  88 03 00 01 */	lbz r0, 1(r3)
/* 802DE6C0 002A7C80  7C 05 00 40 */	cmplw r5, r0
/* 802DE6C4 002A7C84  41 82 00 0C */	beq .L_802DE6D0
/* 802DE6C8 002A7C88  38 60 FF FF */	li r3, -1
/* 802DE6CC 002A7C8C  4E 80 00 20 */	blr
.L_802DE6D0:
/* 802DE6D0 002A7C90  88 A6 00 02 */	lbz r5, 2(r6)
/* 802DE6D4 002A7C94  88 03 00 02 */	lbz r0, 2(r3)
/* 802DE6D8 002A7C98  7C 05 00 40 */	cmplw r5, r0
/* 802DE6DC 002A7C9C  41 82 00 0C */	beq .L_802DE6E8
/* 802DE6E0 002A7CA0  38 60 FF FF */	li r3, -1
/* 802DE6E4 002A7CA4  4E 80 00 20 */	blr
.L_802DE6E8:
/* 802DE6E8 002A7CA8  88 A6 00 03 */	lbz r5, 3(r6)
/* 802DE6EC 002A7CAC  88 03 00 03 */	lbz r0, 3(r3)
/* 802DE6F0 002A7CB0  7C 05 00 40 */	cmplw r5, r0
/* 802DE6F4 002A7CB4  41 82 00 0C */	beq .L_802DE700
/* 802DE6F8 002A7CB8  38 60 FF FF */	li r3, -1
/* 802DE6FC 002A7CBC  4E 80 00 20 */	blr
.L_802DE700:
/* 802DE700 002A7CC0  38 60 00 00 */	li r3, 0
/* 802DE704 002A7CC4  4E 80 00 20 */	blr
.endfn bdcmp


.section .sbss2, "", @nobits #0x8066DCE0 - 0x8066DCFB

.balign 8

.obj bd_addr_null, global
	.skip 0x8
.endobj bd_addr_null
