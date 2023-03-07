.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__CDeviceFontInfoRom, global
/* 8045365C 0041CC1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453660 0041CC20  7C 08 02 A6 */	mflr r0
/* 80453664 0041CC24  2C 03 00 00 */	cmpwi r3, 0
/* 80453668 0041CC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045366C 0041CC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80453670 0041CC30  7C 9F 23 78 */	mr r31, r4
/* 80453674 0041CC34  93 C1 00 08 */	stw r30, 8(r1)
/* 80453678 0041CC38  7C 7E 1B 78 */	mr r30, r3
/* 8045367C 0041CC3C  41 82 00 44 */	beq .L_804536C0
/* 80453680 0041CC40  80 03 00 08 */	lwz r0, 8(r3)
/* 80453684 0041CC44  3C 80 80 57 */	lis r4, __vt__CDeviceFontInfoRom@ha
/* 80453688 0041CC48  38 84 FF D0 */	addi r4, r4, __vt__CDeviceFontInfoRom@l
/* 8045368C 0041CC4C  90 83 00 00 */	stw r4, 0(r3)
/* 80453690 0041CC50  2C 00 00 00 */	cmpwi r0, 0
/* 80453694 0041CC54  41 82 00 14 */	beq .L_804536A8
/* 80453698 0041CC58  7C 03 03 78 */	mr r3, r0
/* 8045369C 0041CC5C  4B FE 0E 3D */	bl func_804344D8
/* 804536A0 0041CC60  38 00 00 00 */	li r0, 0
/* 804536A4 0041CC64  90 1E 00 08 */	stw r0, 8(r30)
.L_804536A8:
/* 804536A8 0041CC68  2C 1F 00 00 */	cmpwi r31, 0
/* 804536AC 0041CC6C  38 00 00 00 */	li r0, 0
/* 804536B0 0041CC70  90 0D BD E0 */	stw r0, lbl_80667F60@sda21(r13)
/* 804536B4 0041CC74  40 81 00 0C */	ble .L_804536C0
/* 804536B8 0041CC78  7F C3 F3 78 */	mr r3, r30
/* 804536BC 0041CC7C  4B FE 15 71 */	bl __dl__FPv
.L_804536C0:
/* 804536C0 0041CC80  7F C3 F3 78 */	mr r3, r30
/* 804536C4 0041CC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804536C8 0041CC88  83 C1 00 08 */	lwz r30, 8(r1)
/* 804536CC 0041CC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804536D0 0041CC90  7C 08 03 A6 */	mtlr r0
/* 804536D4 0041CC94  38 21 00 10 */	addi r1, r1, 0x10
/* 804536D8 0041CC98  4E 80 00 20 */	blr 
.endfn __dt__CDeviceFontInfoRom

.fn func_804536DC, global
/* 804536DC 0041CC9C  7C 83 23 78 */	mr r3, r4
/* 804536E0 0041CCA0  7C A4 2B 78 */	mr r4, r5
/* 804536E4 0041CCA4  7C C5 33 78 */	mr r5, r6
/* 804536E8 0041CCA8  7C E6 3B 78 */	mr r6, r7
/* 804536EC 0041CCAC  7D 07 43 78 */	mr r7, r8
/* 804536F0 0041CCB0  4B F0 51 70 */	b OSGetFontTexture
.endfn func_804536DC

.fn func_804536F4, global
/* 804536F4 0041CCB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804536F8 0041CCB8  7C 08 02 A6 */	mflr r0
/* 804536FC 0041CCBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453700 0041CCC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80453704 0041CCC4  4B FF EE C9 */	bl func_804525CC
/* 80453708 0041CCC8  7C 64 1B 78 */	mr r4, r3
/* 8045370C 0041CCCC  38 60 00 14 */	li r3, 0x14
/* 80453710 0041CCD0  80 84 00 54 */	lwz r4, 0x54(r4)
/* 80453714 0041CCD4  4B FE 13 49 */	bl mm_malloc
/* 80453718 0041CCD8  2C 03 00 00 */	cmpwi r3, 0
/* 8045371C 0041CCDC  7C 7F 1B 78 */	mr r31, r3
/* 80453720 0041CCE0  41 82 00 54 */	beq .L_80453774
/* 80453724 0041CCE4  3C 80 80 57 */	lis r4, __vt__CDeviceFontInfoRom@ha
/* 80453728 0041CCE8  38 00 00 00 */	li r0, 0
/* 8045372C 0041CCEC  38 84 FF D0 */	addi r4, r4, __vt__CDeviceFontInfoRom@l
/* 80453730 0041CCF0  90 83 00 00 */	stw r4, 0(r3)
/* 80453734 0041CCF4  90 03 00 04 */	stw r0, 4(r3)
/* 80453738 0041CCF8  90 03 00 08 */	stw r0, 8(r3)
/* 8045373C 0041CCFC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80453740 0041CD00  90 03 00 10 */	stw r0, 0x10(r3)
/* 80453744 0041CD04  4B FE 0C 65 */	bl func_804343A8
/* 80453748 0041CD08  3C 80 00 14 */	lis r4, 0x00145000@ha
/* 8045374C 0041CD0C  38 A0 00 20 */	li r5, 0x20
/* 80453750 0041CD10  38 84 50 00 */	addi r4, r4, 0x00145000@l
/* 80453754 0041CD14  4B FE 0C FD */	bl func_80434450
/* 80453758 0041CD18  90 7F 00 08 */	stw r3, 8(r31)
/* 8045375C 0041CD1C  4B F0 4F 25 */	bl OSInitFont
/* 80453760 0041CD20  2C 03 00 00 */	cmpwi r3, 0
/* 80453764 0041CD24  41 82 00 0C */	beq .L_80453770
/* 80453768 0041CD28  80 1F 00 08 */	lwz r0, 8(r31)
/* 8045376C 0041CD2C  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80453770:
/* 80453770 0041CD30  93 ED BD E0 */	stw r31, lbl_80667F60@sda21(r13)
.L_80453774:
/* 80453774 0041CD34  7F E3 FB 78 */	mr r3, r31
/* 80453778 0041CD38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045377C 0041CD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453780 0041CD40  7C 08 03 A6 */	mtlr r0
/* 80453784 0041CD44  38 21 00 10 */	addi r1, r1, 0x10
/* 80453788 0041CD48  4E 80 00 20 */	blr 
.endfn func_804536F4

.fn func_8045378C, global
/* 8045378C 0041CD4C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80453790 0041CD50  38 04 FF FF */	addi r0, r4, -1
/* 80453794 0041CD54  28 00 00 01 */	cmplwi r0, 1
/* 80453798 0041CD58  4D 81 00 20 */	bgtlr 
/* 8045379C 0041CD5C  38 04 00 01 */	addi r0, r4, 1
/* 804537A0 0041CD60  90 03 00 10 */	stw r0, 0x10(r3)
/* 804537A4 0041CD64  4E 80 00 20 */	blr 
.endfn func_8045378C

.fn func_804537A8, global
/* 804537A8 0041CD68  80 83 00 10 */	lwz r4, 0x10(r3)
/* 804537AC 0041CD6C  2C 04 00 00 */	cmpwi r4, 0
/* 804537B0 0041CD70  4C 82 00 20 */	bnelr 
/* 804537B4 0041CD74  38 04 00 01 */	addi r0, r4, 1
/* 804537B8 0041CD78  90 03 00 10 */	stw r0, 0x10(r3)
/* 804537BC 0041CD7C  4E 80 00 20 */	blr 
.endfn func_804537A8

.fn func_804537C0, global
/* 804537C0 0041CD80  80 63 00 10 */	lwz r3, 0x10(r3)
/* 804537C4 0041CD84  7C 03 00 D0 */	neg r0, r3
/* 804537C8 0041CD88  7C 00 1B 78 */	or r0, r0, r3
/* 804537CC 0041CD8C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 804537D0 0041CD90  4E 80 00 20 */	blr 
.endfn func_804537C0

.fn func_804537D4, global
/* 804537D4 0041CD94  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 804537D8 0041CD98  38 00 00 03 */	li r0, 3
/* 804537DC 0041CD9C  38 60 00 00 */	li r3, 0
/* 804537E0 0041CDA0  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 804537E4 0041CDA4  7C 00 28 10 */	subfc r0, r0, r5
/* 804537E8 0041CDA8  7C 64 19 14 */	adde r3, r4, r3
/* 804537EC 0041CDAC  4E 80 00 20 */	blr 
.endfn func_804537D4

.fn func_804537F0, global
/* 804537F0 0041CDB0  38 60 00 00 */	li r3, 0
/* 804537F4 0041CDB4  4E 80 00 20 */	blr 
.endfn func_804537F0

.fn func_804537F8, global
/* 804537F8 0041CDB8  38 60 00 00 */	li r3, 0
/* 804537FC 0041CDBC  4E 80 00 20 */	blr 
.endfn func_804537F8

.fn func_80453800, global
/* 80453800 0041CDC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80453804 0041CDC4  A0 63 00 12 */	lhz r3, 0x12(r3)
/* 80453808 0041CDC8  4E 80 00 20 */	blr 
.endfn func_80453800

.fn func_8045380C, global
/* 8045380C 0041CDCC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80453810 0041CDD0  A0 63 00 18 */	lhz r3, 0x18(r3)
/* 80453814 0041CDD4  4E 80 00 20 */	blr 
.endfn func_8045380C

.fn func_80453818, global
/* 80453818 0041CDD8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8045381C 0041CDDC  A0 63 00 20 */	lhz r3, 0x20(r3)
/* 80453820 0041CDE0  4E 80 00 20 */	blr 
.endfn func_80453818

.fn func_80453824, global
/* 80453824 0041CDE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80453828 0041CDE8  A0 63 00 1E */	lhz r3, 0x1e(r3)
/* 8045382C 0041CDEC  4E 80 00 20 */	blr 
.endfn func_80453824

.fn func_80453830, global
/* 80453830 0041CDF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80453834 0041CDF4  4E 80 00 20 */	blr 
.endfn func_80453830


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CDeviceFontInfoRom_typestr, global
	.asciz "CDeviceFontInfoRom"
	.balign 4
	.4byte 0
.endobj CDeviceFontInfoRom_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CDeviceFontInfoRom, global
	.4byte __RTTI__CDeviceFontInfoRom
	.4byte 0
	.4byte __dt__CDeviceFontInfoRom
	.4byte func_80453830
	.4byte func_80453824
	.4byte func_80453818
	.4byte func_8045380C
	.4byte func_80453800
	.4byte func_804536DC
	.4byte func_804537F0
	.4byte func_804537F8
	.4byte func_8045378C
	.4byte func_804537A8
	.4byte func_804537C0
	.4byte func_804537D4
.endobj __vt__CDeviceFontInfoRom


.obj CDeviceFontInfoRom_hierarchy, global
	.4byte __RTTI__IDeviceFontInfo
	.4byte 0
	.4byte 0
.endobj CDeviceFontInfoRom_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CDeviceFontInfoRom, global
	.4byte CDeviceFontInfoRom_typestr
	.4byte CDeviceFontInfoRom_hierarchy
.endobj __RTTI__CDeviceFontInfoRom

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667F60, global
	.skip 0x8
.endobj lbl_80667F60

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D0E8", local
.hidden "@etb_8001D0E8"
	.4byte 0x10080000
	.4byte 0x00000044
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__80453080
.endobj "@etb_8001D0E8"

.obj "@etb_8001D104", local
.hidden "@etb_8001D104"
	.4byte 0x08080000
	.4byte 0x00000054
	.4byte 0x00060010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__80453080
.endobj "@etb_8001D104"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034D9C", local
.hidden "@eti_80034D9C"
	.4byte __dt__CDeviceFontInfoRom
	.4byte 0x00000080
	.4byte "@etb_8001D0E8"
.endobj "@eti_80034D9C"

.obj "@eti_80034DA8", local
.hidden "@eti_80034DA8"
	.4byte func_804536F4
	.4byte 0x00000098
	.4byte "@etb_8001D104"
.endobj "@eti_80034DA8"
