.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80448F30, global
/* 80448F30 004124F0  38 63 FE 38 */	addi r3, r3, -456
/* 80448F34 004124F4  4B FF FF 54 */	b func_80448E88
.endfn func_80448F30

.fn func_80448F38, global
/* 80448F38 004124F8  38 63 FE 38 */	addi r3, r3, -456
/* 80448F3C 004124FC  4B FF F2 4C */	b __dt__CDeviceVI
.endfn func_80448F38

.fn func_80448F40, global
/* 80448F40 00412500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80448F44 00412504  7C 08 02 A6 */	mflr r0
/* 80448F48 00412508  3C 80 80 57 */	lis r4, __vt__CDeviceVICb@ha
/* 80448F4C 0041250C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80448F50 00412510  38 84 F7 A8 */	addi r4, r4, __vt__CDeviceVICb@l
/* 80448F54 00412514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80448F58 00412518  7C 7F 1B 78 */	mr r31, r3
/* 80448F5C 0041251C  90 83 00 00 */	stw r4, 0(r3)
/* 80448F60 00412520  4B FF F4 D9 */	bl func_80448438
/* 80448F64 00412524  7F E3 FB 78 */	mr r3, r31
/* 80448F68 00412528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80448F6C 0041252C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80448F70 00412530  7C 08 03 A6 */	mtlr r0
/* 80448F74 00412534  38 21 00 10 */	addi r1, r1, 0x10
/* 80448F78 00412538  4E 80 00 20 */	blr 
.endfn func_80448F40

.fn __dt__CDeviceVICb, global
/* 80448F7C 0041253C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80448F80 00412540  7C 08 02 A6 */	mflr r0
/* 80448F84 00412544  2C 03 00 00 */	cmpwi r3, 0
/* 80448F88 00412548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80448F8C 0041254C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80448F90 00412550  7C 9F 23 78 */	mr r31, r4
/* 80448F94 00412554  93 C1 00 08 */	stw r30, 8(r1)
/* 80448F98 00412558  7C 7E 1B 78 */	mr r30, r3
/* 80448F9C 0041255C  41 82 00 24 */	beq .L_80448FC0
/* 80448FA0 00412560  3C 80 80 57 */	lis r4, __vt__CDeviceVICb@ha
/* 80448FA4 00412564  38 84 F7 A8 */	addi r4, r4, __vt__CDeviceVICb@l
/* 80448FA8 00412568  90 83 00 00 */	stw r4, 0(r3)
/* 80448FAC 0041256C  4B FF F5 19 */	bl func_804484C4
/* 80448FB0 00412570  2C 1F 00 00 */	cmpwi r31, 0
/* 80448FB4 00412574  40 81 00 0C */	ble .L_80448FC0
/* 80448FB8 00412578  7F C3 F3 78 */	mr r3, r30
/* 80448FBC 0041257C  4B FE BC 71 */	bl __dl__FPv
.L_80448FC0:
/* 80448FC0 00412580  7F C3 F3 78 */	mr r3, r30
/* 80448FC4 00412584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80448FC8 00412588  83 C1 00 08 */	lwz r30, 8(r1)
/* 80448FCC 0041258C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80448FD0 00412590  7C 08 03 A6 */	mtlr r0
/* 80448FD4 00412594  38 21 00 10 */	addi r1, r1, 0x10
/* 80448FD8 00412598  4E 80 00 20 */	blr 
.endfn __dt__CDeviceVICb

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global CDeviceVICb_typestr
CDeviceVICb_typestr:
	.asciz "CDeviceVICb"
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt__CDeviceVICb
__vt__CDeviceVICb:
	.4byte __RTTI__CDeviceVICb
	.4byte 0
	.4byte __dt__CDeviceVICb
	.4byte func_80166630
	.4byte func_8016662C
	.4byte func_80448A40

.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__CDeviceVICb
__RTTI__CDeviceVICb:
	.4byte CDeviceVICb_typestr
	.4byte 0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001CB68", local
.hidden "@etb_8001CB68"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CB68"

.obj "@etb_8001CB70", local
.hidden "@etb_8001CB70"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CB70"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034760", local
.hidden "@eti_80034760"
	.4byte func_80448F40
	.4byte 0x0000003C
	.4byte "@etb_8001CB68"
.endobj "@eti_80034760"

.obj "@eti_8003476C", local
.hidden "@eti_8003476C"
	.4byte __dt__CDeviceVICb
	.4byte 0x00000060
	.4byte "@etb_8001CB70"
.endobj "@eti_8003476C"
