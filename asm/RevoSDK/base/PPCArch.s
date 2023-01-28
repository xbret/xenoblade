.include "macros.inc"
.file "RevoSDK/base/PPCArch.o"

# 0x802DAB50 - 0x802DAD60
.text
.balign 16

.fn PPCMfmsr, global
/* 802DAB50 002A4110  7C 60 00 A6 */	mfmsr r3
/* 802DAB54 002A4114  4E 80 00 20 */	blr
.endfn PPCMfmsr
/* 802DAB58 002A4118  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAB5C 002A411C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtmsr, global
/* 802DAB60 002A4120  7C 60 01 24 */	mtmsr r3
/* 802DAB64 002A4124  4E 80 00 20 */	blr
.endfn PPCMtmsr
/* 802DAB68 002A4128  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAB6C 002A412C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMfhid0, global
/* 802DAB70 002A4130  7C 70 FA A6 */	mfspr r3, HID0
/* 802DAB74 002A4134  4E 80 00 20 */	blr
.endfn PPCMfhid0
/* 802DAB78 002A4138  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAB7C 002A413C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMthid0, global
/* 802DAB80 002A4140  7C 70 FB A6 */	mtspr HID0, r3
/* 802DAB84 002A4144  4E 80 00 20 */	blr
.endfn PPCMthid0
/* 802DAB88 002A4148  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAB8C 002A414C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMfl2cr, global
/* 802DAB90 002A4150  7C 79 FA A6 */	mfspr r3, L2CR
/* 802DAB94 002A4154  4E 80 00 20 */	blr
.endfn PPCMfl2cr
/* 802DAB98 002A4158  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAB9C 002A415C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtl2cr, global
/* 802DABA0 002A4160  7C 79 FB A6 */	mtspr L2CR, r3
/* 802DABA4 002A4164  4E 80 00 20 */	blr
.endfn PPCMtl2cr
/* 802DABA8 002A4168  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DABAC 002A416C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtdec, weak
/* 802DABB0 002A4170  7C 76 03 A6 */	mtdec r3
/* 802DABB4 002A4174  4E 80 00 20 */	blr
.endfn PPCMtdec
/* 802DABB8 002A4178  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DABBC 002A417C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCSync, global
/* 802DABC0 002A4180  44 00 00 02 */	sc
/* 802DABC4 002A4184  4E 80 00 20 */	blr
.endfn PPCSync
/* 802DABC8 002A4188  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DABCC 002A418C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCHalt, weak
/* 802DABD0 002A4190  7C 00 04 AC */	sync
.L_802DABD4:
/* 802DABD4 002A4194  60 00 00 00 */	nop
/* 802DABD8 002A4198  38 60 00 00 */	li r3, 0x0
/* 802DABDC 002A419C  60 00 00 00 */	nop
/* 802DABE0 002A41A0  4B FF FF F4 */	b .L_802DABD4
.endfn PPCHalt
/* 802DABE4 002A41A4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DABE8 002A41A8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DABEC 002A41AC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtmmcr0, global
/* 802DABF0 002A41B0  7C 78 EB A6 */	mtspr MMCR0, r3
/* 802DABF4 002A41B4  4E 80 00 20 */	blr
.endfn PPCMtmmcr0
/* 802DABF8 002A41B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DABFC 002A41BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtmmcr1, global
/* 802DAC00 002A41C0  7C 7C EB A6 */	mtspr MMCR1, r3
/* 802DAC04 002A41C4  4E 80 00 20 */	blr
.endfn PPCMtmmcr1
/* 802DAC08 002A41C8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAC0C 002A41CC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtpmc1, global
/* 802DAC10 002A41D0  7C 79 EB A6 */	mtspr PMC1, r3
/* 802DAC14 002A41D4  4E 80 00 20 */	blr
.endfn PPCMtpmc1
/* 802DAC18 002A41D8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAC1C 002A41DC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtpmc2, global
/* 802DAC20 002A41E0  7C 7A EB A6 */	mtspr PMC2, r3
/* 802DAC24 002A41E4  4E 80 00 20 */	blr
.endfn PPCMtpmc2
/* 802DAC28 002A41E8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAC2C 002A41EC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtpmc3, global
/* 802DAC30 002A41F0  7C 7D EB A6 */	mtspr PMC3, r3
/* 802DAC34 002A41F4  4E 80 00 20 */	blr
.endfn PPCMtpmc3
/* 802DAC38 002A41F8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAC3C 002A41FC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtpmc4, global
/* 802DAC40 002A4200  7C 7E EB A6 */	mtspr PMC4, r3
/* 802DAC44 002A4204  4E 80 00 20 */	blr
.endfn PPCMtpmc4
/* 802DAC48 002A4208  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAC4C 002A420C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMffpscr, global
/* 802DAC50 002A4210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DAC54 002A4214  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802DAC58 002A4218  FF E0 04 8E */	mffs f31
/* 802DAC5C 002A421C  DB E1 00 08 */	stfd f31, 0x8(r1)
/* 802DAC60 002A4220  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802DAC64 002A4224  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802DAC68 002A4228  38 21 00 20 */	addi r1, r1, 0x20
/* 802DAC6C 002A422C  4E 80 00 20 */	blr
.endfn PPCMffpscr

.fn PPCMtfpscr, global
/* 802DAC70 002A4230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DAC74 002A4234  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802DAC78 002A4238  38 80 00 00 */	li r4, 0x0
/* 802DAC7C 002A423C  90 81 00 08 */	stw r4, 0x8(r1)
/* 802DAC80 002A4240  90 61 00 0C */	stw r3, 0xc(r1)
/* 802DAC84 002A4244  CB E1 00 08 */	lfd f31, 0x8(r1)
/* 802DAC88 002A4248  FD FE FD 8E */	mtfsf 255, f31
/* 802DAC8C 002A424C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802DAC90 002A4250  38 21 00 20 */	addi r1, r1, 0x20
/* 802DAC94 002A4254  4E 80 00 20 */	blr
.endfn PPCMtfpscr
/* 802DAC98 002A4258  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAC9C 002A425C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMfhid2, global
/* 802DACA0 002A4260  7C 78 E2 A6 */	mfspr r3, HID2
/* 802DACA4 002A4264  4E 80 00 20 */	blr
.endfn PPCMfhid2
/* 802DACA8 002A4268  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DACAC 002A426C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMthid2, global
/* 802DACB0 002A4270  7C 78 E3 A6 */	mtspr HID2, r3
/* 802DACB4 002A4274  4E 80 00 20 */	blr
.endfn PPCMthid2
/* 802DACB8 002A4278  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DACBC 002A427C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMtwpar, global
/* 802DACC0 002A4280  7C 79 E3 A6 */	mtspr WPAR, r3
/* 802DACC4 002A4284  4E 80 00 20 */	blr
.endfn PPCMtwpar
/* 802DACC8 002A4288  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DACCC 002A428C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCDisableSpeculation, global
/* 802DACD0 002A4290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DACD4 002A4294  7C 08 02 A6 */	mflr r0
/* 802DACD8 002A4298  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DACDC 002A429C  4B FF FE 95 */	bl PPCMfhid0
/* 802DACE0 002A42A0  60 63 02 00 */	ori r3, r3, 0x200
/* 802DACE4 002A42A4  4B FF FE 9D */	bl PPCMthid0
/* 802DACE8 002A42A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DACEC 002A42AC  7C 08 03 A6 */	mtlr r0
/* 802DACF0 002A42B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DACF4 002A42B4  4E 80 00 20 */	blr
.endfn PPCDisableSpeculation
/* 802DACF8 002A42B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DACFC 002A42BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCSetFpNonIEEEMode, global
/* 802DAD00 002A42C0  FF A0 00 4C */	mtfsb1 4*cr7+gt
/* 802DAD04 002A42C4  4E 80 00 20 */	blr
.endfn PPCSetFpNonIEEEMode
/* 802DAD08 002A42C8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802DAD0C 002A42CC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn PPCMthid4, global
/* 802DAD10 002A42D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DAD14 002A42D4  7C 08 02 A6 */	mflr r0
/* 802DAD18 002A42D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DAD1C 002A42DC  54 60 00 01 */	clrrwi. r0, r3, 31
/* 802DAD20 002A42E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DAD24 002A42E4  7C 7F 1B 78 */	mr r31, r3
/* 802DAD28 002A42E8  41 82 00 0C */	beq .L_802DAD34
/* 802DAD2C 002A42EC  7C 73 FB A6 */	mtspr 1011, r3
/* 802DAD30 002A42F0  48 00 00 1C */	b .L_802DAD4C
.L_802DAD34:
/* 802DAD34 002A42F4  3C 60 80 54 */	lis r3, "@98"@ha
/* 802DAD38 002A42F8  38 63 3D E0 */	addi r3, r3, "@98"@l
/* 802DAD3C 002A42FC  4C C6 31 82 */	crclr 4*cr1+eq
/* 802DAD40 002A4300  48 07 A1 B1 */	bl OSReport
/* 802DAD44 002A4304  67 FF 80 00 */	oris r31, r31, 0x8000
/* 802DAD48 002A4308  7F F3 FB A6 */	mtspr 1011, r31
.L_802DAD4C:
/* 802DAD4C 002A430C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DAD50 002A4310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DAD54 002A4314  7C 08 03 A6 */	mtlr r0
/* 802DAD58 002A4318  38 21 00 10 */	addi r1, r1, 0x10
/* 802DAD5C 002A431C  4E 80 00 20 */	blr
.endfn PPCMthid4

# 0x80543DE0 - 0x80543E18
.data
.balign 8

.obj "@98", local
	.4byte 0x48344120
	.4byte 0x73686F75
	.4byte 0x6C64206E
	.4byte 0x6F742062
	.4byte 0x6520636C
	.4byte 0x65617265
	.4byte 0x64206265
	.4byte 0x63617573
	.4byte 0x65206F66
	.4byte 0x2042726F
	.4byte 0x61647761
	.4byte 0x79206572
	.4byte 0x72617461
	.byte 0x2E, 0x0A, 0x00
.endobj "@98"
	.byte 0x00
