.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8035CD90
func_8035CD90:
/* 8035CD90 00326350  88 C3 00 00 */	lbz r6, 0(r3)
/* 8035CD94 00326354  2C 06 00 00 */	cmpwi r6, 0
/* 8035CD98 00326358  41 82 00 08 */	beq lbl_8035CDA0
/* 8035CD9C 0032635C  38 63 00 01 */	addi r3, r3, 1
lbl_8035CDA0:
/* 8035CDA0 00326360  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 8035CDA4 00326364  40 82 00 0C */	bne lbl_8035CDB0
/* 8035CDA8 00326368  38 E0 00 00 */	li r7, 0
/* 8035CDAC 0032636C  48 00 00 54 */	b lbl_8035CE00
lbl_8035CDB0:
/* 8035CDB0 00326370  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 8035CDB4 00326374  28 00 00 C0 */	cmplwi r0, 0xc0
/* 8035CDB8 00326378  40 82 00 10 */	bne lbl_8035CDC8
/* 8035CDBC 0032637C  54 C6 06 FE */	clrlwi r6, r6, 0x1b
/* 8035CDC0 00326380  38 E0 00 01 */	li r7, 1
/* 8035CDC4 00326384  48 00 00 3C */	b lbl_8035CE00
lbl_8035CDC8:
/* 8035CDC8 00326388  54 C0 06 36 */	rlwinm r0, r6, 0, 0x18, 0x1b
/* 8035CDCC 0032638C  28 00 00 E0 */	cmplwi r0, 0xe0
/* 8035CDD0 00326390  40 82 00 10 */	bne lbl_8035CDE0
/* 8035CDD4 00326394  54 C6 07 3E */	clrlwi r6, r6, 0x1c
/* 8035CDD8 00326398  38 E0 00 02 */	li r7, 2
/* 8035CDDC 0032639C  48 00 00 24 */	b lbl_8035CE00
lbl_8035CDE0:
/* 8035CDE0 003263A0  54 C0 06 38 */	rlwinm r0, r6, 0, 0x18, 0x1c
/* 8035CDE4 003263A4  28 00 00 F0 */	cmplwi r0, 0xf0
/* 8035CDE8 003263A8  40 82 00 10 */	bne lbl_8035CDF8
/* 8035CDEC 003263AC  54 C6 07 7E */	clrlwi r6, r6, 0x1d
/* 8035CDF0 003263B0  38 E0 00 03 */	li r7, 3
/* 8035CDF4 003263B4  48 00 00 0C */	b lbl_8035CE00
lbl_8035CDF8:
/* 8035CDF8 003263B8  38 60 00 00 */	li r3, 0
/* 8035CDFC 003263BC  4E 80 00 20 */	blr

.global lbl_8035CE00
lbl_8035CE00:
/* 8035CE00 003263C0  7C E9 03 A6 */	mtctr r7
/* 8035CE04 003263C4  28 07 00 00 */	cmplwi r7, 0
/* 8035CE08 003263C8  40 81 00 34 */	ble lbl_8035CE3C
/* 8035CE0C 003263CC  60 00 00 00 */	nop 
lbl_8035CE10:
/* 8035CE10 003263D0  88 A3 00 00 */	lbz r5, 0(r3)
/* 8035CE14 003263D4  54 C6 30 32 */	slwi r6, r6, 6
/* 8035CE18 003263D8  38 63 00 01 */	addi r3, r3, 1
/* 8035CE1C 003263DC  54 A0 06 32 */	rlwinm r0, r5, 0, 0x18, 0x19
/* 8035CE20 003263E0  28 00 00 80 */	cmplwi r0, 0x80
/* 8035CE24 003263E4  41 82 00 0C */	beq lbl_8035CE30
/* 8035CE28 003263E8  38 60 00 00 */	li r3, 0
/* 8035CE2C 003263EC  4E 80 00 20 */	blr

.global lbl_8035CE30
lbl_8035CE30:
/* 8035CE30 003263F0  54 A0 06 BE */	clrlwi r0, r5, 0x1a
/* 8035CE34 003263F4  7C C6 03 78 */	or r6, r6, r0
/* 8035CE38 003263F8  42 00 FF D8 */	bdnz lbl_8035CE10
lbl_8035CE3C:
/* 8035CE3C 003263FC  28 06 00 7F */	cmplwi r6, 0x7f
/* 8035CE40 00326400  41 81 00 14 */	bgt lbl_8035CE54
/* 8035CE44 00326404  2C 07 00 00 */	cmpwi r7, 0
/* 8035CE48 00326408  41 82 00 3C */	beq lbl_8035CE84
/* 8035CE4C 0032640C  38 60 00 00 */	li r3, 0
/* 8035CE50 00326410  4E 80 00 20 */	blr

.global lbl_8035CE54
lbl_8035CE54:
/* 8035CE54 00326414  28 06 07 FF */	cmplwi r6, 0x7ff
/* 8035CE58 00326418  41 81 00 14 */	bgt lbl_8035CE6C
/* 8035CE5C 0032641C  28 07 00 01 */	cmplwi r7, 1
/* 8035CE60 00326420  41 82 00 24 */	beq lbl_8035CE84
/* 8035CE64 00326424  38 60 00 00 */	li r3, 0
/* 8035CE68 00326428  4E 80 00 20 */	blr

.global lbl_8035CE6C
lbl_8035CE6C:
/* 8035CE6C 0032642C  28 06 FF FF */	cmplwi r6, 0xffff
/* 8035CE70 00326430  41 81 00 14 */	bgt lbl_8035CE84
/* 8035CE74 00326434  28 07 00 02 */	cmplwi r7, 2
/* 8035CE78 00326438  41 82 00 0C */	beq lbl_8035CE84
/* 8035CE7C 0032643C  38 60 00 00 */	li r3, 0
/* 8035CE80 00326440  4E 80 00 20 */	blr

.global lbl_8035CE84
lbl_8035CE84:
/* 8035CE84 00326444  28 06 D8 00 */	cmplwi r6, 0xd800
/* 8035CE88 00326448  41 80 00 14 */	blt lbl_8035CE9C
/* 8035CE8C 0032644C  28 06 DF FF */	cmplwi r6, 0xdfff
/* 8035CE90 00326450  41 81 00 0C */	bgt lbl_8035CE9C
/* 8035CE94 00326454  38 60 00 00 */	li r3, 0
/* 8035CE98 00326458  4E 80 00 20 */	blr

.global lbl_8035CE9C
lbl_8035CE9C:
/* 8035CE9C 0032645C  90 C4 00 00 */	stw r6, 0(r4)
/* 8035CEA0 00326460  4E 80 00 20 */	blr 
/* 8035CEA4 00326464  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035CEA8 00326468  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035CEAC 0032646C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_8035CEB0
func_8035CEB0:
/* 8035CEB0 00326470  A0 A3 00 00 */	lhz r5, 0(r3)
/* 8035CEB4 00326474  2C 05 00 00 */	cmpwi r5, 0
/* 8035CEB8 00326478  41 82 00 08 */	beq lbl_8035CEC0
/* 8035CEBC 0032647C  38 63 00 02 */	addi r3, r3, 2
lbl_8035CEC0:
/* 8035CEC0 00326480  28 05 D8 00 */	cmplwi r5, 0xd800
/* 8035CEC4 00326484  41 80 00 0C */	blt lbl_8035CED0
/* 8035CEC8 00326488  28 05 DF FF */	cmplwi r5, 0xdfff
/* 8035CECC 0032648C  40 81 00 0C */	ble lbl_8035CED8
lbl_8035CED0:
/* 8035CED0 00326490  7C A6 2B 78 */	mr r6, r5
/* 8035CED4 00326494  48 00 00 44 */	b lbl_8035CF18
lbl_8035CED8:
/* 8035CED8 00326498  28 05 DB FF */	cmplwi r5, 0xdbff
/* 8035CEDC 0032649C  41 81 00 34 */	bgt lbl_8035CF10
/* 8035CEE0 003264A0  A0 03 00 00 */	lhz r0, 0(r3)
/* 8035CEE4 003264A4  38 63 00 02 */	addi r3, r3, 2
/* 8035CEE8 003264A8  28 00 DC 00 */	cmplwi r0, 0xdc00
/* 8035CEEC 003264AC  41 80 00 1C */	blt lbl_8035CF08
/* 8035CEF0 003264B0  28 00 DF FF */	cmplwi r0, 0xdfff
/* 8035CEF4 003264B4  41 81 00 14 */	bgt lbl_8035CF08
/* 8035CEF8 003264B8  54 06 05 BE */	clrlwi r6, r0, 0x16
/* 8035CEFC 003264BC  50 A6 53 2A */	rlwimi r6, r5, 0xa, 0xc, 0x15
/* 8035CF00 003264C0  3C C6 00 01 */	addis r6, r6, 1
/* 8035CF04 003264C4  48 00 00 14 */	b lbl_8035CF18
lbl_8035CF08:
/* 8035CF08 003264C8  38 60 00 00 */	li r3, 0
/* 8035CF0C 003264CC  4E 80 00 20 */	blr

.global lbl_8035CF10
lbl_8035CF10:
/* 8035CF10 003264D0  38 60 00 00 */	li r3, 0
/* 8035CF14 003264D4  4E 80 00 20 */	blr

.global lbl_8035CF18
lbl_8035CF18:
/* 8035CF18 003264D8  90 C4 00 00 */	stw r6, 0(r4)
/* 8035CF1C 003264DC  4E 80 00 20 */	blr 

.global func_8035CF20
func_8035CF20:
/* 8035CF20 003264E0  28 03 00 FF */	cmplwi r3, 0xff
/* 8035CF24 003264E4  40 81 00 0C */	ble lbl_8035CF30
/* 8035CF28 003264E8  38 60 00 00 */	li r3, 0
/* 8035CF2C 003264EC  4E 80 00 20 */	blr

.global lbl_8035CF30
lbl_8035CF30:
/* 8035CF30 003264F0  28 03 00 80 */	cmplwi r3, 0x80
/* 8035CF34 003264F4  41 80 00 0C */	blt lbl_8035CF40
/* 8035CF38 003264F8  28 03 00 9F */	cmplwi r3, 0x9f
/* 8035CF3C 003264FC  40 81 00 0C */	ble lbl_8035CF48
lbl_8035CF40:
/* 8035CF40 00326500  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8035CF44 00326504  4E 80 00 20 */	blr

.global lbl_8035CF48
lbl_8035CF48:
/* 8035CF48 00326508  28 03 01 52 */	cmplwi r3, 0x152
/* 8035CF4C 0032650C  41 80 00 48 */	blt lbl_8035CF94
/* 8035CF50 00326510  28 03 21 22 */	cmplwi r3, 0x2122
/* 8035CF54 00326514  41 81 00 40 */	bgt lbl_8035CF94
/* 8035CF58 00326518  3C 80 80 55 */	lis r4, lbl_80552DB8@ha
/* 8035CF5C 0032651C  38 00 00 20 */	li r0, 0x20
/* 8035CF60 00326520  38 84 2D B8 */	addi r4, r4, lbl_80552DB8@l
/* 8035CF64 00326524  38 A0 00 00 */	li r5, 0
/* 8035CF68 00326528  7C 09 03 A6 */	mtctr r0
/* 8035CF6C 0032652C  60 00 00 00 */	nop 
lbl_8035CF70:
/* 8035CF70 00326530  A0 04 00 00 */	lhz r0, 0(r4)
/* 8035CF74 00326534  7C 03 00 40 */	cmplw r3, r0
/* 8035CF78 00326538  40 82 00 10 */	bne lbl_8035CF88
/* 8035CF7C 0032653C  38 05 00 80 */	addi r0, r5, 0x80
/* 8035CF80 00326540  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8035CF84 00326544  4E 80 00 20 */	blr

.global lbl_8035CF88
lbl_8035CF88:
/* 8035CF88 00326548  38 84 00 02 */	addi r4, r4, 2
/* 8035CF8C 0032654C  38 A5 00 01 */	addi r5, r5, 1
/* 8035CF90 00326550  42 00 FF E0 */	bdnz lbl_8035CF70
lbl_8035CF94:
/* 8035CF94 00326554  38 60 00 00 */	li r3, 0
/* 8035CF98 00326558  4E 80 00 20 */	blr 
/* 8035CF9C 0032655C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_8035CFA0
func_8035CFA0:
/* 8035CFA0 00326560  3C 00 00 01 */	lis r0, 1
/* 8035CFA4 00326564  7C 03 00 40 */	cmplw r3, r0
/* 8035CFA8 00326568  41 80 00 0C */	blt lbl_8035CFB4
/* 8035CFAC 0032656C  38 60 00 00 */	li r3, 0
/* 8035CFB0 00326570  4E 80 00 20 */	blr

.global lbl_8035CFB4
lbl_8035CFB4:
/* 8035CFB4 00326574  3C 80 80 56 */	lis r4, lbl_8055E7F8@ha
/* 8035CFB8 00326578  54 60 D5 BA */	rlwinm r0, r3, 0x1a, 0x16, 0x1d
/* 8035CFBC 0032657C  38 84 E7 F8 */	addi r4, r4, lbl_8055E7F8@l
/* 8035CFC0 00326580  7C 84 00 2E */	lwzx r4, r4, r0
/* 8035CFC4 00326584  2C 04 00 00 */	cmpwi r4, 0
/* 8035CFC8 00326588  41 82 00 10 */	beq lbl_8035CFD8
/* 8035CFCC 0032658C  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 8035CFD0 00326590  7C 64 02 2E */	lhzx r3, r4, r0
/* 8035CFD4 00326594  4E 80 00 20 */	blr

.global lbl_8035CFD8
lbl_8035CFD8:
/* 8035CFD8 00326598  38 60 00 00 */	li r3, 0
/* 8035CFDC 0032659C  4E 80 00 20 */	blr 