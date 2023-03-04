.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn DCStore__Q34nw4r3g3d7ResPlttFb, global
/* 803DD580 003A6B40  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD584 003A6B44  2C 04 00 00 */	cmpwi r4, 0
/* 803DD588 003A6B48  80 83 00 04 */	lwz r4, 4(r3)
/* 803DD58C 003A6B4C  41 82 00 08 */	beq .L_803DD594
/* 803DD590 003A6B50  4B F7 6A 50 */	b DCStoreRange
.L_803DD594:
/* 803DD594 003A6B54  4B F7 6A AC */	b DCStoreRangeNoSync
.endfn DCStore__Q34nw4r3g3d7ResPlttFb

.fn CheckRevision__Q34nw4r3g3d7ResPlttCFv, global
/* 803DD598 003A6B58  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD59C 003A6B5C  38 60 00 00 */	li r3, 0
/* 803DD5A0 003A6B60  80 04 00 08 */	lwz r0, 8(r4)
/* 803DD5A4 003A6B64  28 00 00 03 */	cmplwi r0, 3
/* 803DD5A8 003A6B68  41 82 00 0C */	beq .L_803DD5B4
/* 803DD5AC 003A6B6C  28 00 00 01 */	cmplwi r0, 1
/* 803DD5B0 003A6B70  4C 82 00 20 */	bnelr 
.L_803DD5B4:
/* 803DD5B4 003A6B74  38 60 00 01 */	li r3, 1
/* 803DD5B8 003A6B78  4E 80 00 20 */	blr 
.endfn CheckRevision__Q34nw4r3g3d7ResPlttCFv

#could also be GetParent__Q34nw4r3g3d6ResTexCFv
.fn GetParent__Q34nw4r3g3d6ResTexFv, global
/* 803DD5BC 003A6B7C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD5C0 003A6B80  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803DD5C4 003A6B84  2C 00 00 00 */	cmpwi r0, 0
/* 803DD5C8 003A6B88  41 82 00 0C */	beq .L_803DD5D4
/* 803DD5CC 003A6B8C  7C 63 02 14 */	add r3, r3, r0
/* 803DD5D0 003A6B90  4E 80 00 20 */	blr
.L_803DD5D4:
/* 803DD5D4 003A6B94  38 60 00 00 */	li r3, 0
/* 803DD5D8 003A6B98  4E 80 00 20 */	blr 
.endfn GetParent__Q34nw4r3g3d6ResTexFv

.fn GetTexObjParam__Q34nw4r3g3d6ResTexCFPPvPUsPUsP9_GXTexFmtPfPfPUc, global
/* 803DD5DC 003A6B9C  81 63 00 00 */	lwz r11, 0(r3)
/* 803DD5E0 003A6BA0  80 0B 00 18 */	lwz r0, 0x18(r11)
/* 803DD5E4 003A6BA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803DD5E8 003A6BA8  41 82 00 0C */	beq .L_803DD5F4
/* 803DD5EC 003A6BAC  38 60 00 00 */	li r3, 0
/* 803DD5F0 003A6BB0  4E 80 00 20 */	blr
.L_803DD5F4:
/* 803DD5F4 003A6BB4  2C 04 00 00 */	cmpwi r4, 0
/* 803DD5F8 003A6BB8  41 82 00 20 */	beq .L_803DD618
/* 803DD5FC 003A6BBC  80 0B 00 10 */	lwz r0, 0x10(r11)
/* 803DD600 003A6BC0  2C 00 00 00 */	cmpwi r0, 0
/* 803DD604 003A6BC4  41 82 00 0C */	beq .L_803DD610
/* 803DD608 003A6BC8  7C 0B 02 14 */	add r0, r11, r0
/* 803DD60C 003A6BCC  48 00 00 08 */	b .L_803DD614
.L_803DD610:
/* 803DD610 003A6BD0  38 00 00 00 */	li r0, 0
.L_803DD614:
/* 803DD614 003A6BD4  90 04 00 00 */	stw r0, 0(r4)
.L_803DD618:
/* 803DD618 003A6BD8  2C 05 00 00 */	cmpwi r5, 0
/* 803DD61C 003A6BDC  41 82 00 10 */	beq .L_803DD62C
/* 803DD620 003A6BE0  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD624 003A6BE4  A0 04 00 1C */	lhz r0, 0x1c(r4)
/* 803DD628 003A6BE8  B0 05 00 00 */	sth r0, 0(r5)
.L_803DD62C:
/* 803DD62C 003A6BEC  2C 06 00 00 */	cmpwi r6, 0
/* 803DD630 003A6BF0  41 82 00 10 */	beq .L_803DD640
/* 803DD634 003A6BF4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD638 003A6BF8  A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 803DD63C 003A6BFC  B0 06 00 00 */	sth r0, 0(r6)
.L_803DD640:
/* 803DD640 003A6C00  2C 07 00 00 */	cmpwi r7, 0
/* 803DD644 003A6C04  41 82 00 0C */	beq .L_803DD650
/* 803DD648 003A6C08  80 0B 00 20 */	lwz r0, 0x20(r11)
/* 803DD64C 003A6C0C  90 07 00 00 */	stw r0, 0(r7)
.L_803DD650:
/* 803DD650 003A6C10  2C 08 00 00 */	cmpwi r8, 0
/* 803DD654 003A6C14  41 82 00 0C */	beq .L_803DD660
/* 803DD658 003A6C18  C0 0B 00 28 */	lfs f0, 0x28(r11)
/* 803DD65C 003A6C1C  D0 08 00 00 */	stfs f0, 0(r8)
.L_803DD660:
/* 803DD660 003A6C20  2C 09 00 00 */	cmpwi r9, 0
/* 803DD664 003A6C24  41 82 00 0C */	beq .L_803DD670
/* 803DD668 003A6C28  C0 0B 00 2C */	lfs f0, 0x2c(r11)
/* 803DD66C 003A6C2C  D0 09 00 00 */	stfs f0, 0(r9)
.L_803DD670:
/* 803DD670 003A6C30  2C 0A 00 00 */	cmpwi r10, 0
/* 803DD674 003A6C34  41 82 00 1C */	beq .L_803DD690
/* 803DD678 003A6C38  80 6B 00 24 */	lwz r3, 0x24(r11)
/* 803DD67C 003A6C3C  68 60 00 01 */	xori r0, r3, 1
/* 803DD680 003A6C40  7C 00 00 34 */	cntlzw r0, r0
/* 803DD684 003A6C44  7C 60 00 30 */	slw r0, r3, r0
/* 803DD688 003A6C48  54 00 0F FE */	srwi r0, r0, 0x1f
/* 803DD68C 003A6C4C  98 0A 00 00 */	stb r0, 0(r10)
.L_803DD690:
/* 803DD690 003A6C50  38 60 00 01 */	li r3, 1
/* 803DD694 003A6C54  4E 80 00 20 */	blr 
.endfn GetTexObjParam__Q34nw4r3g3d6ResTexCFPPvPUsPUsP9_GXTexFmtPfPfPUc

.fn GetTexObjCIParam__Q34nw4r3g3d6ResTexCFPPvPUsPUsP11_GXCITexFmtPfPfPUc, global
/* 803DD698 003A6C58  81 63 00 00 */	lwz r11, 0(r3)
/* 803DD69C 003A6C5C  80 0B 00 18 */	lwz r0, 0x18(r11)
/* 803DD6A0 003A6C60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803DD6A4 003A6C64  40 82 00 0C */	bne .L_803DD6B0
/* 803DD6A8 003A6C68  38 60 00 00 */	li r3, 0
/* 803DD6AC 003A6C6C  4E 80 00 20 */	blr
.L_803DD6B0:
/* 803DD6B0 003A6C70  2C 04 00 00 */	cmpwi r4, 0
/* 803DD6B4 003A6C74  41 82 00 20 */	beq .L_803DD6D4
/* 803DD6B8 003A6C78  80 0B 00 10 */	lwz r0, 0x10(r11)
/* 803DD6BC 003A6C7C  2C 00 00 00 */	cmpwi r0, 0
/* 803DD6C0 003A6C80  41 82 00 0C */	beq .L_803DD6CC
/* 803DD6C4 003A6C84  7C 0B 02 14 */	add r0, r11, r0
/* 803DD6C8 003A6C88  48 00 00 08 */	b .L_803DD6D0
.L_803DD6CC:
/* 803DD6CC 003A6C8C  38 00 00 00 */	li r0, 0
.L_803DD6D0:
/* 803DD6D0 003A6C90  90 04 00 00 */	stw r0, 0(r4)
.L_803DD6D4:
/* 803DD6D4 003A6C94  2C 05 00 00 */	cmpwi r5, 0
/* 803DD6D8 003A6C98  41 82 00 10 */	beq .L_803DD6E8
/* 803DD6DC 003A6C9C  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD6E0 003A6CA0  A0 04 00 1C */	lhz r0, 0x1c(r4)
/* 803DD6E4 003A6CA4  B0 05 00 00 */	sth r0, 0(r5)
.L_803DD6E8:
/* 803DD6E8 003A6CA8  2C 06 00 00 */	cmpwi r6, 0
/* 803DD6EC 003A6CAC  41 82 00 10 */	beq .L_803DD6FC
/* 803DD6F0 003A6CB0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD6F4 003A6CB4  A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 803DD6F8 003A6CB8  B0 06 00 00 */	sth r0, 0(r6)
.L_803DD6FC:
/* 803DD6FC 003A6CBC  2C 07 00 00 */	cmpwi r7, 0
/* 803DD700 003A6CC0  41 82 00 0C */	beq .L_803DD70C
/* 803DD704 003A6CC4  80 0B 00 20 */	lwz r0, 0x20(r11)
/* 803DD708 003A6CC8  90 07 00 00 */	stw r0, 0(r7)
.L_803DD70C:
/* 803DD70C 003A6CCC  2C 08 00 00 */	cmpwi r8, 0
/* 803DD710 003A6CD0  41 82 00 0C */	beq .L_803DD71C
/* 803DD714 003A6CD4  C0 0B 00 28 */	lfs f0, 0x28(r11)
/* 803DD718 003A6CD8  D0 08 00 00 */	stfs f0, 0(r8)
.L_803DD71C:
/* 803DD71C 003A6CDC  2C 09 00 00 */	cmpwi r9, 0
/* 803DD720 003A6CE0  41 82 00 0C */	beq .L_803DD72C
/* 803DD724 003A6CE4  C0 0B 00 2C */	lfs f0, 0x2c(r11)
/* 803DD728 003A6CE8  D0 09 00 00 */	stfs f0, 0(r9)
.L_803DD72C:
/* 803DD72C 003A6CEC  2C 0A 00 00 */	cmpwi r10, 0
/* 803DD730 003A6CF0  41 82 00 1C */	beq .L_803DD74C
/* 803DD734 003A6CF4  80 6B 00 24 */	lwz r3, 0x24(r11)
/* 803DD738 003A6CF8  68 60 00 01 */	xori r0, r3, 1
/* 803DD73C 003A6CFC  7C 00 00 34 */	cntlzw r0, r0
/* 803DD740 003A6D00  7C 60 00 30 */	slw r0, r3, r0
/* 803DD744 003A6D04  54 00 0F FE */	srwi r0, r0, 0x1f
/* 803DD748 003A6D08  98 0A 00 00 */	stb r0, 0(r10)
.L_803DD74C:
/* 803DD74C 003A6D0C  38 60 00 01 */	li r3, 1
/* 803DD750 003A6D10  4E 80 00 20 */	blr 
.endfn GetTexObjCIParam__Q34nw4r3g3d6ResTexCFPPvPUsPUsP11_GXCITexFmtPfPfPUc

.fn CheckRevision__Q34nw4r3g3d6ResTexCFv, global
/* 803DD754 003A6D14  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD758 003A6D18  38 60 00 00 */	li r3, 0
/* 803DD75C 003A6D1C  80 04 00 08 */	lwz r0, 8(r4)
/* 803DD760 003A6D20  28 00 00 03 */	cmplwi r0, 3
/* 803DD764 003A6D24  41 82 00 0C */	beq .L_803DD770
/* 803DD768 003A6D28  28 00 00 01 */	cmplwi r0, 1
/* 803DD76C 003A6D2C  4C 82 00 20 */	bnelr 
.L_803DD770:
/* 803DD770 003A6D30  38 60 00 01 */	li r3, 1
/* 803DD774 003A6D34  4E 80 00 20 */	blr 
.endfn CheckRevision__Q34nw4r3g3d6ResTexCFv

.fn Init__Q34nw4r3g3d6ResTexFv, global
/* 803DD778 003A6D38  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD77C 003A6D3C  80 83 00 04 */	lwz r4, 4(r3)
/* 803DD780 003A6D40  4B F7 68 90 */	b DCFlushRangeNoSync
.endfn Init__Q34nw4r3g3d6ResTexFv
