.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ldexp
ldexp:
/* 802CAE54 00294414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CAE58 00294418  7C 08 02 A6 */	mflr r0
/* 802CAE5C 0029441C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CAE60 00294420  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802CAE64 00294424  FF E0 08 90 */	fmr f31, f1
/* 802CAE68 00294428  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802CAE6C 0029442C  7C 7F 1B 78 */	mr r31, r3
/* 802CAE70 00294430  D8 21 00 08 */	stfd f1, 8(r1)
/* 802CAE74 00294434  4B FF 3D 4D */	bl func_802BEBC0
/* 802CAE78 00294438  2C 03 00 02 */	cmpwi r3, 2
/* 802CAE7C 0029443C  40 81 00 10 */	ble lbl_802CAE8C
/* 802CAE80 00294440  C8 02 B9 F0 */	lfd f0, lbl_8066BD70@sda21(r2)
/* 802CAE84 00294444  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802CAE88 00294448  40 82 00 0C */	bne lbl_802CAE94
lbl_802CAE8C:
/* 802CAE8C 0029444C  FC 20 F8 90 */	fmr f1, f31
/* 802CAE90 00294450  48 00 01 18 */	b lbl_802CAFA8
lbl_802CAE94:
/* 802CAE94 00294454  80 A1 00 08 */	lwz r5, 8(r1)
/* 802CAE98 00294458  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802CAE9C 0029445C  54 A4 65 7F */	rlwinm. r4, r5, 0xc, 0x15, 0x1f
/* 802CAEA0 00294460  40 82 00 4C */	bne lbl_802CAEEC
/* 802CAEA4 00294464  54 A0 00 7E */	clrlwi r0, r5, 1
/* 802CAEA8 00294468  7C 60 03 79 */	or. r0, r3, r0
/* 802CAEAC 0029446C  40 82 00 0C */	bne lbl_802CAEB8
/* 802CAEB0 00294470  FC 20 F8 90 */	fmr f1, f31
/* 802CAEB4 00294474  48 00 00 F4 */	b lbl_802CAFA8
lbl_802CAEB8:
/* 802CAEB8 00294478  C8 02 B9 F8 */	lfd f0, lbl_8066BD78@sda21(r2)
/* 802CAEBC 0029447C  3C 60 FF FF */	lis r3, 0xFFFF3CB0@ha
/* 802CAEC0 00294480  38 03 3C B0 */	addi r0, r3, 0xFFFF3CB0@l
/* 802CAEC4 00294484  FF FF 00 32 */	fmul f31, f31, f0
/* 802CAEC8 00294488  7C 1F 00 00 */	cmpw r31, r0
/* 802CAECC 0029448C  DB E1 00 08 */	stfd f31, 8(r1)
/* 802CAED0 00294490  80 A1 00 08 */	lwz r5, 8(r1)
/* 802CAED4 00294494  54 A3 65 7E */	rlwinm r3, r5, 0xc, 0x15, 0x1f
/* 802CAED8 00294498  38 83 FF CA */	addi r4, r3, -54
/* 802CAEDC 0029449C  40 80 00 10 */	bge lbl_802CAEEC
/* 802CAEE0 002944A0  C8 02 BA 00 */	lfd f0, lbl_8066BD80@sda21(r2)
/* 802CAEE4 002944A4  FC 20 07 F2 */	fmul f1, f0, f31
/* 802CAEE8 002944A8  48 00 00 C0 */	b lbl_802CAFA8
lbl_802CAEEC:
/* 802CAEEC 002944AC  2C 04 07 FF */	cmpwi r4, 0x7ff
/* 802CAEF0 002944B0  40 82 00 0C */	bne lbl_802CAEFC
/* 802CAEF4 002944B4  FC 3F F8 2A */	fadd f1, f31, f31
/* 802CAEF8 002944B8  48 00 00 B0 */	b lbl_802CAFA8
lbl_802CAEFC:
/* 802CAEFC 002944BC  7C 84 FA 14 */	add r4, r4, r31
/* 802CAF00 002944C0  2C 04 07 FE */	cmpwi r4, 0x7fe
/* 802CAF04 002944C4  40 81 00 1C */	ble lbl_802CAF20
/* 802CAF08 002944C8  FC 40 F8 90 */	fmr f2, f31
/* 802CAF0C 002944CC  C8 22 BA 08 */	lfd f1, lbl_8066BD88@sda21(r2)
/* 802CAF10 002944D0  4B FF FC 79 */	bl func_802CAB88
/* 802CAF14 002944D4  C8 02 BA 08 */	lfd f0, lbl_8066BD88@sda21(r2)
/* 802CAF18 002944D8  FC 20 00 72 */	fmul f1, f0, f1
/* 802CAF1C 002944DC  48 00 00 8C */	b lbl_802CAFA8
lbl_802CAF20:
/* 802CAF20 002944E0  2C 04 00 00 */	cmpwi r4, 0
/* 802CAF24 002944E4  40 81 00 1C */	ble lbl_802CAF40
/* 802CAF28 002944E8  54 A3 03 00 */	rlwinm r3, r5, 0, 0xc, 0
/* 802CAF2C 002944EC  54 80 A0 16 */	slwi r0, r4, 0x14
/* 802CAF30 002944F0  7C 60 03 78 */	or r0, r3, r0
/* 802CAF34 002944F4  90 01 00 08 */	stw r0, 8(r1)
/* 802CAF38 002944F8  C8 21 00 08 */	lfd f1, 8(r1)
/* 802CAF3C 002944FC  48 00 00 6C */	b lbl_802CAFA8
lbl_802CAF40:
/* 802CAF40 00294500  2C 04 FF CA */	cmpwi r4, -54
/* 802CAF44 00294504  41 81 00 44 */	bgt lbl_802CAF88
/* 802CAF48 00294508  3C 60 00 01 */	lis r3, 0x0000C350@ha
/* 802CAF4C 0029450C  38 03 C3 50 */	addi r0, r3, 0x0000C350@l
/* 802CAF50 00294510  7C 1F 00 00 */	cmpw r31, r0
/* 802CAF54 00294514  40 81 00 1C */	ble lbl_802CAF70
/* 802CAF58 00294518  FC 40 F8 90 */	fmr f2, f31
/* 802CAF5C 0029451C  C8 22 BA 08 */	lfd f1, lbl_8066BD88@sda21(r2)
/* 802CAF60 00294520  4B FF FC 29 */	bl func_802CAB88
/* 802CAF64 00294524  C8 02 BA 08 */	lfd f0, lbl_8066BD88@sda21(r2)
/* 802CAF68 00294528  FC 20 00 72 */	fmul f1, f0, f1
/* 802CAF6C 0029452C  48 00 00 3C */	b lbl_802CAFA8
lbl_802CAF70:
/* 802CAF70 00294530  FC 40 F8 90 */	fmr f2, f31
/* 802CAF74 00294534  C8 22 BA 00 */	lfd f1, lbl_8066BD80@sda21(r2)
/* 802CAF78 00294538  4B FF FC 11 */	bl func_802CAB88
/* 802CAF7C 0029453C  C8 02 BA 00 */	lfd f0, lbl_8066BD80@sda21(r2)
/* 802CAF80 00294540  FC 20 00 72 */	fmul f1, f0, f1
/* 802CAF84 00294544  48 00 00 24 */	b lbl_802CAFA8
lbl_802CAF88:
/* 802CAF88 00294548  38 04 00 36 */	addi r0, r4, 0x36
/* 802CAF8C 0029454C  54 A3 03 00 */	rlwinm r3, r5, 0, 0xc, 0
/* 802CAF90 00294550  54 00 A0 16 */	slwi r0, r0, 0x14
/* 802CAF94 00294554  C8 22 BA 10 */	lfd f1, lbl_8066BD90@sda21(r2)
/* 802CAF98 00294558  7C 60 03 78 */	or r0, r3, r0
/* 802CAF9C 0029455C  90 01 00 08 */	stw r0, 8(r1)
/* 802CAFA0 00294560  C8 01 00 08 */	lfd f0, 8(r1)
/* 802CAFA4 00294564  FC 21 00 32 */	fmul f1, f1, f0
lbl_802CAFA8:
/* 802CAFA8 00294568  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CAFAC 0029456C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802CAFB0 00294570  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802CAFB4 00294574  7C 08 03 A6 */	mtlr r0
/* 802CAFB8 00294578  38 21 00 20 */	addi r1, r1, 0x20
/* 802CAFBC 0029457C  4E 80 00 20 */	blr 