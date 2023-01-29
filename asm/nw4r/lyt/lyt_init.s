.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4r::lyt::LytInit()
.fn LytInit__Q24nw4r3lytFv, global
/* 803FE8B0 003C7E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FE8B4 003C7E74  7C 08 02 A6 */	mflr r0
/* 803FE8B8 003C7E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FE8BC 003C7E7C  80 6D 9C 68 */	lwz r3, lbl_80665DE8@sda21(r13)
/* 803FE8C0 003C7E80  4B F5 44 41 */	bl OSRegisterVersion
/* 803FE8C4 003C7E84  38 60 00 04 */	li r3, 0x4
/* 803FE8C8 003C7E88  64 63 00 04 */	oris r3, r3, 0x4
/* 803FE8CC 003C7E8C  7C 72 E3 A6 */	mtspr GQR2, r3
/* 803FE8D0 003C7E90  38 60 00 05 */	li r3, 0x5
/* 803FE8D4 003C7E94  64 63 00 05 */	oris r3, r3, 0x5
/* 803FE8D8 003C7E98  7C 73 E3 A6 */	mtspr GQR3, r3
/* 803FE8DC 003C7E9C  38 60 00 06 */	li r3, 0x6
/* 803FE8E0 003C7EA0  64 63 00 06 */	oris r3, r3, 0x6
/* 803FE8E4 003C7EA4  7C 74 E3 A6 */	mtspr GQR4, r3
/* 803FE8E8 003C7EA8  38 60 00 07 */	li r3, 0x7
/* 803FE8EC 003C7EAC  64 63 00 07 */	oris r3, r3, 0x7
/* 803FE8F0 003C7EB0  7C 75 E3 A6 */	mtspr GQR5, r3
/* 803FE8F4 003C7EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FE8F8 003C7EB8  7C 08 03 A6 */	mtlr r0
/* 803FE8FC 003C7EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803FE900 003C7EC0  4E 80 00 20 */	blr
.endfn LytInit__Q24nw4r3lytFv

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8
.global lbl_8056D188
lbl_8056D188:
	.4byte 0x3C3C204E
	.4byte 0x57345220
	.4byte 0x2020202D
	.4byte 0x204C5954
	.4byte 0x20096669
	.4byte 0x6E616C20
	.4byte 0x20206275
	.4byte 0x696C643A
	.4byte 0x20417567
	.4byte 0x20323120
	.4byte 0x32303038
	.4byte 0x2030353A
	.4byte 0x32313A35
	.4byte 0x38202830
	.4byte 0x78343139
	.4byte 0x395F3630
	.4byte 0x38333129
	.4byte 0x203E3E00

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8
.global lbl_80665DE8
lbl_80665DE8:
	.4byte lbl_8056D188
	.4byte 0x00000000
