.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn hidd_proc_repage_timeout, global
/* 802F3700 002BCCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3704 002BCCC4  7C 08 02 A6 */	mflr r0
/* 802F3708 002BCCC8  3C 60 80 5C */	lis r3, hd_cb@ha
/* 802F370C 002BCCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3710 002BCCD0  38 63 25 70 */	addi r3, r3, hd_cb@l
/* 802F3714 002BCCD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F3718 002BCCD8  88 03 01 41 */	lbz r0, 0x141(r3)
/* 802F371C 002BCCDC  28 00 00 05 */	cmplwi r0, 5
/* 802F3720 002BCCE0  41 80 00 18 */	blt .L_802F3738
/* 802F3724 002BCCE4  3C 60 00 1E */	lis r3, 0x001E0004@ha
/* 802F3728 002BCCE8  3C 80 80 54 */	lis r4, lbl_805466C0@ha
/* 802F372C 002BCCEC  38 63 00 04 */	addi r3, r3, 0x001E0004@l
/* 802F3730 002BCCF0  38 84 66 C0 */	addi r4, r4, lbl_805466C0@l
/* 802F3734 002BCCF4  4B FE A8 6D */	bl LogMsg_0
.L_802F3738:
/* 802F3738 002BCCF8  3F E0 80 5C */	lis r31, hd_cb@ha
/* 802F373C 002BCCFC  3B FF 25 70 */	addi r31, r31, hd_cb@l
/* 802F3740 002BCD00  88 7F 00 09 */	lbz r3, 9(r31)
/* 802F3744 002BCD04  38 03 00 01 */	addi r0, r3, 1
/* 802F3748 002BCD08  98 1F 00 09 */	stb r0, 9(r31)
/* 802F374C 002BCD0C  4B FF FE F5 */	bl hidd_conn_initiate
/* 802F3750 002BCD10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F3754 002BCD14  41 82 00 48 */	beq .L_802F379C
/* 802F3758 002BCD18  88 1F 00 09 */	lbz r0, 9(r31)
/* 802F375C 002BCD1C  28 00 00 0F */	cmplwi r0, 0xf
/* 802F3760 002BCD20  40 81 00 28 */	ble .L_802F3788
/* 802F3764 002BCD24  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 802F3768 002BCD28  38 00 00 00 */	li r0, 0
/* 802F376C 002BCD2C  98 1F 00 08 */	stb r0, 8(r31)
/* 802F3770 002BCD30  38 60 00 01 */	li r3, 1
/* 802F3774 002BCD34  38 80 00 00 */	li r4, 0
/* 802F3778 002BCD38  38 A0 00 00 */	li r5, 0
/* 802F377C 002BCD3C  7D 89 03 A6 */	mtctr r12
/* 802F3780 002BCD40  4E 80 04 21 */	bctrl 
/* 802F3784 002BCD44  48 00 00 30 */	b .L_802F37B4
.L_802F3788:
/* 802F3788 002BCD48  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802F378C 002BCD4C  38 80 00 16 */	li r4, 0x16
/* 802F3790 002BCD50  38 A0 00 01 */	li r5, 1
/* 802F3794 002BCD54  4B FE AE 1D */	bl btu_start_timer
/* 802F3798 002BCD58  48 00 00 1C */	b .L_802F37B4
.L_802F379C:
/* 802F379C 002BCD5C  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 802F37A0 002BCD60  38 60 00 02 */	li r3, 2
/* 802F37A4 002BCD64  88 9F 00 09 */	lbz r4, 9(r31)
/* 802F37A8 002BCD68  38 A0 00 00 */	li r5, 0
/* 802F37AC 002BCD6C  7D 89 03 A6 */	mtctr r12
/* 802F37B0 002BCD70  4E 80 04 21 */	bctrl 
.L_802F37B4:
/* 802F37B4 002BCD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F37B8 002BCD78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F37BC 002BCD7C  7C 08 03 A6 */	mtlr r0
/* 802F37C0 002BCD80  38 21 00 10 */	addi r1, r1, 0x10
/* 802F37C4 002BCD84  4E 80 00 20 */	blr
.endfn hidd_proc_repage_timeout


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_805466C0, global
	.asciz "hidd_proc_repage_timeout"
	.balign 4
	.4byte 0
.endobj lbl_805466C0


.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj hd_cb, global
	.skip 0x148
.endobj hd_cb
