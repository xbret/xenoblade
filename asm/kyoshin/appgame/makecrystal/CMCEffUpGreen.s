.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802241F8, global
/* 802241F8 001ED7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802241FC 001ED7BC  7C 08 02 A6 */	mflr r0
/* 80224200 001ED7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224204 001ED7C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224208 001ED7C8  7C 7F 1B 78 */	mr r31, r3
/* 8022420C 001ED7CC  4B FF FB 35 */	bl func_80223D40
/* 80224210 001ED7D0  3C 80 80 54 */	lis r4, __vt__CMCEffUpGreen@ha
/* 80224214 001ED7D4  7F E3 FB 78 */	mr r3, r31
/* 80224218 001ED7D8  38 84 98 6C */	addi r4, r4, __vt__CMCEffUpGreen@l
/* 8022421C 001ED7DC  90 9F 00 00 */	stw r4, 0(r31)
/* 80224220 001ED7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224224 001ED7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224228 001ED7E8  7C 08 03 A6 */	mtlr r0
/* 8022422C 001ED7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80224230 001ED7F0  4E 80 00 20 */	blr 
.endfn func_802241F8

.fn __dt__CMCEffUpGreen, global
/* 80224234 001ED7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224238 001ED7F8  7C 08 02 A6 */	mflr r0
/* 8022423C 001ED7FC  2C 03 00 00 */	cmpwi r3, 0
/* 80224240 001ED800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224244 001ED804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224248 001ED808  7C 7F 1B 78 */	mr r31, r3
/* 8022424C 001ED80C  41 82 00 10 */	beq .L_8022425C
/* 80224250 001ED810  2C 04 00 00 */	cmpwi r4, 0
/* 80224254 001ED814  40 81 00 08 */	ble .L_8022425C
/* 80224258 001ED818  48 21 09 D5 */	bl __dl__FPv
.L_8022425C:
/* 8022425C 001ED81C  7F E3 FB 78 */	mr r3, r31
/* 80224260 001ED820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224264 001ED824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224268 001ED828  7C 08 03 A6 */	mtlr r0
/* 8022426C 001ED82C  38 21 00 10 */	addi r1, r1, 0x10
/* 80224270 001ED830  4E 80 00 20 */	blr 
.endfn __dt__CMCEffUpGreen

.fn func_80224274, global
/* 80224274 001ED834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224278 001ED838  7C 08 02 A6 */	mflr r0
/* 8022427C 001ED83C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224280 001ED840  BF C1 00 08 */	stmw r30, 8(r1)
/* 80224284 001ED844  3F E0 80 50 */	lis r31, CMCEffCrystal_strpool@ha
/* 80224288 001ED848  3B FF 4C FC */	addi r31, r31, CMCEffCrystal_strpool@l
/* 8022428C 001ED84C  7C 7E 1B 78 */	mr r30, r3
/* 80224290 001ED850  38 BF 00 93 */	addi r5, r31, 0x93
/* 80224294 001ED854  80 83 00 08 */	lwz r4, 8(r3)
/* 80224298 001ED858  38 63 00 0C */	addi r3, r3, 0xc
/* 8022429C 001ED85C  4B F1 2B E9 */	bl func_80136E84
/* 802242A0 001ED860  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802242A4 001ED864  38 9E 00 10 */	addi r4, r30, 0x10
/* 802242A8 001ED868  80 BE 00 08 */	lwz r5, 8(r30)
/* 802242AC 001ED86C  38 DF 00 AA */	addi r6, r31, 0xaa
/* 802242B0 001ED870  4B F1 2C 59 */	bl func_80136F08
/* 802242B4 001ED874  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802242B8 001ED878  38 A0 00 01 */	li r5, 1
/* 802242BC 001ED87C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 802242C0 001ED880  81 83 00 00 */	lwz r12, 0(r3)
/* 802242C4 001ED884  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802242C8 001ED888  7D 89 03 A6 */	mtctr r12
/* 802242CC 001ED88C  4E 80 04 21 */	bctrl 
/* 802242D0 001ED890  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802242D4 001ED894  38 80 00 00 */	li r4, 0
/* 802242D8 001ED898  81 83 00 00 */	lwz r12, 0(r3)
/* 802242DC 001ED89C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802242E0 001ED8A0  7D 89 03 A6 */	mtctr r12
/* 802242E4 001ED8A4  4E 80 04 21 */	bctrl 
/* 802242E8 001ED8A8  38 00 00 01 */	li r0, 1
/* 802242EC 001ED8AC  98 1E 00 14 */	stb r0, 0x14(r30)
/* 802242F0 001ED8B0  BB C1 00 08 */	lmw r30, 8(r1)
/* 802242F4 001ED8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802242F8 001ED8B8  7C 08 03 A6 */	mtlr r0
/* 802242FC 001ED8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80224300 001ED8C0  4E 80 00 20 */	blr 
.endfn func_80224274

.fn func_80224304, global
/* 80224304 001ED8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224308 001ED8C8  7C 08 02 A6 */	mflr r0
/* 8022430C 001ED8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224310 001ED8D0  4B FF FC 15 */	bl func_80223F24
/* 80224314 001ED8D4  38 60 00 8C */	li r3, 0x8c
/* 80224318 001ED8D8  4B F1 3D 61 */	bl func_80138078
/* 8022431C 001ED8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224320 001ED8E0  7C 08 03 A6 */	mtlr r0
/* 80224324 001ED8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80224328 001ED8E8  4E 80 00 20 */	blr 
.endfn func_80224304

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80014FF4", local
.hidden "@etb_80014FF4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014FF4"

.obj "@etb_80014FFC", local
.hidden "@etb_80014FFC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014FFC"

.obj "@etb_80015004", local
.hidden "@etb_80015004"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80015004"

.obj "@etb_8001500C", local
.hidden "@etb_8001500C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001500C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002DE9C", local
.hidden "@eti_8002DE9C"
	.4byte func_802241F8
	.4byte 0x0000003C
	.4byte "@etb_80014FF4"
.endobj "@eti_8002DE9C"

.obj "@eti_8002DEA8", local
.hidden "@eti_8002DEA8"
	.4byte __dt__CMCEffUpGreen
	.4byte 0x00000040
	.4byte "@etb_80014FFC"
.endobj "@eti_8002DEA8"

.obj "@eti_8002DEB4", local
.hidden "@eti_8002DEB4"
	.4byte func_80224274
	.4byte 0x00000090
	.4byte "@etb_80015004"
.endobj "@eti_8002DEB4"

.obj "@eti_8002DEC0", local
.hidden "@eti_8002DEC0"
	.4byte func_80224304
	.4byte 0x00000028
	.4byte "@etb_8001500C"
.endobj "@eti_8002DEC0"
