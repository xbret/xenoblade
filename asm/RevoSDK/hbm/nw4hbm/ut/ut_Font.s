.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn InitReaderFunc__Q36nw4hbm2ut4FontFQ36nw4hbm2ut12FontEncoding, global
/* 80338490 00301A50  2C 04 00 00 */	cmpwi r4, 0
/* 80338494 00301A54  3C A0 80 55 */	lis r5, lbl_8054ECA0@ha
/* 80338498 00301A58  38 A5 EC A0 */	addi r5, r5, lbl_8054ECA0@l
/* 8033849C 00301A5C  41 82 00 18 */	beq .L_803384B4
/* 803384A0 00301A60  2C 04 00 01 */	cmpwi r4, 1
/* 803384A4 00301A64  41 82 00 30 */	beq .L_803384D4
/* 803384A8 00301A68  2C 04 00 02 */	cmpwi r4, 2
/* 803384AC 00301A6C  41 82 00 48 */	beq .L_803384F4
/* 803384B0 00301A70  48 00 00 64 */	b .L_80338514
.L_803384B4:
/* 803384B4 00301A74  38 85 00 00 */	addi r4, r5, 0
/* 803384B8 00301A78  80 A5 00 00 */	lwz r5, 0(r5)
/* 803384BC 00301A7C  80 04 00 04 */	lwz r0, 4(r4)
/* 803384C0 00301A80  90 03 00 08 */	stw r0, 8(r3)
/* 803384C4 00301A84  90 A3 00 04 */	stw r5, 4(r3)
/* 803384C8 00301A88  80 04 00 08 */	lwz r0, 8(r4)
/* 803384CC 00301A8C  90 03 00 0C */	stw r0, 0xc(r3)
/* 803384D0 00301A90  4E 80 00 20 */	blr
.L_803384D4:
/* 803384D4 00301A94  38 85 00 0C */	addi r4, r5, 0xc
/* 803384D8 00301A98  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 803384DC 00301A9C  80 04 00 04 */	lwz r0, 4(r4)
/* 803384E0 00301AA0  90 03 00 08 */	stw r0, 8(r3)
/* 803384E4 00301AA4  90 A3 00 04 */	stw r5, 4(r3)
/* 803384E8 00301AA8  80 04 00 08 */	lwz r0, 8(r4)
/* 803384EC 00301AAC  90 03 00 0C */	stw r0, 0xc(r3)
/* 803384F0 00301AB0  4E 80 00 20 */	blr
.L_803384F4:
/* 803384F4 00301AB4  38 85 00 18 */	addi r4, r5, 0x18
/* 803384F8 00301AB8  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 803384FC 00301ABC  80 04 00 04 */	lwz r0, 4(r4)
/* 80338500 00301AC0  90 03 00 08 */	stw r0, 8(r3)
/* 80338504 00301AC4  90 A3 00 04 */	stw r5, 4(r3)
/* 80338508 00301AC8  80 04 00 08 */	lwz r0, 8(r4)
/* 8033850C 00301ACC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80338510 00301AD0  4E 80 00 20 */	blr
.L_80338514:
/* 80338514 00301AD4  38 85 00 24 */	addi r4, r5, 0x24
/* 80338518 00301AD8  80 A5 00 24 */	lwz r5, 0x24(r5)
/* 8033851C 00301ADC  80 04 00 04 */	lwz r0, 4(r4)
/* 80338520 00301AE0  90 03 00 08 */	stw r0, 8(r3)
/* 80338524 00301AE4  90 A3 00 04 */	stw r5, 4(r3)
/* 80338528 00301AE8  80 04 00 08 */	lwz r0, 8(r4)
/* 8033852C 00301AEC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80338530 00301AF0  4E 80 00 20 */	blr 
.endfn InitReaderFunc__Q36nw4hbm2ut4FontFQ36nw4hbm2ut12FontEncoding

.section .data, "wa"  # 0x805281E0 - 0x80573C60


.global lbl_8054ECA0
lbl_8054ECA0:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF8__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF16__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharSJIS__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharCP1252__Q36nw4hbm2ut14CharStrmReaderFv

