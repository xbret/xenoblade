.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.fn func_80296A04__FPUc, global
/* 80296A04 0025FFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296A08 0025FFC8  7C 08 02 A6 */	mflr r0
/* 80296A0C 0025FFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296A10 0025FFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296A14 0025FFD4  7C 7F 1B 78 */	mr r31, r3
/* 80296A18 0025FFD8  48 00 00 1D */	bl func_80296A34__FPUc
/* 80296A1C 0025FFDC  7F E3 FB 78 */	mr r3, r31
/* 80296A20 0025FFE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296A24 0025FFE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296A28 0025FFE8  7C 08 03 A6 */	mtlr r0
/* 80296A2C 0025FFEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80296A30 0025FFF0  4E 80 00 20 */	blr 
.endfn func_80296A04__FPUc

.fn func_80296A34__FPUc, global
/* 80296A34 0025FFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296A38 0025FFF8  7C 08 02 A6 */	mflr r0
/* 80296A3C 0025FFFC  38 80 00 00 */	li r4, 0
/* 80296A40 00260000  38 A0 00 40 */	li r5, 0x40
/* 80296A44 00260004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296A48 00260008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296A4C 0026000C  7C 7F 1B 78 */	mr r31, r3
/* 80296A50 00260010  4B D6 D9 01 */	bl memset
/* 80296A54 00260014  38 E0 00 01 */	li r7, 1
/* 80296A58 00260018  38 80 00 00 */	li r4, 0
/* 80296A5C 0026001C  38 C0 00 02 */	li r6, 2
/* 80296A60 00260020  38 60 00 03 */	li r3, 3
/* 80296A64 00260024  38 A0 00 0A */	li r5, 0xa
/* 80296A68 00260028  38 00 00 05 */	li r0, 5
/* 80296A6C 0026002C  98 FF 00 00 */	stb r7, 0(r31)
/* 80296A70 00260030  98 FF 00 01 */	stb r7, 1(r31)
/* 80296A74 00260034  98 DF 00 02 */	stb r6, 2(r31)
/* 80296A78 00260038  98 DF 00 03 */	stb r6, 3(r31)
/* 80296A7C 0026003C  98 DF 00 04 */	stb r6, 4(r31)
/* 80296A80 00260040  98 FF 00 05 */	stb r7, 5(r31)
/* 80296A84 00260044  98 FF 00 06 */	stb r7, 6(r31)
/* 80296A88 00260048  98 FF 00 07 */	stb r7, 7(r31)
/* 80296A8C 0026004C  98 BF 00 0F */	stb r5, 0xf(r31)
/* 80296A90 00260050  98 FF 00 10 */	stb r7, 0x10(r31)
/* 80296A94 00260054  98 9F 00 11 */	stb r4, 0x11(r31)
/* 80296A98 00260058  98 FF 00 20 */	stb r7, 0x20(r31)
/* 80296A9C 0026005C  98 FF 00 21 */	stb r7, 0x21(r31)
/* 80296AA0 00260060  98 9F 00 22 */	stb r4, 0x22(r31)
/* 80296AA4 00260064  98 9F 00 23 */	stb r4, 0x23(r31)
/* 80296AA8 00260068  98 FF 00 24 */	stb r7, 0x24(r31)
/* 80296AAC 0026006C  98 FF 00 25 */	stb r7, 0x25(r31)
/* 80296AB0 00260070  98 FF 00 30 */	stb r7, 0x30(r31)
/* 80296AB4 00260074  98 FF 00 32 */	stb r7, 0x32(r31)
/* 80296AB8 00260078  98 9F 00 31 */	stb r4, 0x31(r31)
/* 80296ABC 0026007C  98 7F 00 38 */	stb r3, 0x38(r31)
/* 80296AC0 00260080  98 7F 00 39 */	stb r3, 0x39(r31)
/* 80296AC4 00260084  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 80296AC8 00260088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296ACC 0026008C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296AD0 00260090  7C 08 03 A6 */	mtlr r0
/* 80296AD4 00260094  38 21 00 10 */	addi r1, r1, 0x10
/* 80296AD8 00260098  4E 80 00 20 */	blr 
.endfn func_80296A34__FPUc

.fn func_80296ADC__Fv, global
/* 80296ADC 0026009C  3C 60 80 58 */	lis r3, lbl_8057A9C8@ha
/* 80296AE0 002600A0  38 63 A9 C8 */	addi r3, r3, lbl_8057A9C8@l
/* 80296AE4 002600A4  4E 80 00 20 */	blr 
.endfn func_80296ADC__Fv

.fn func_80296AE8__FPUc, global
/* 80296AE8 002600A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296AEC 002600AC  7C 08 02 A6 */	mflr r0
/* 80296AF0 002600B0  7C 64 1B 78 */	mr r4, r3
/* 80296AF4 002600B4  38 A0 00 40 */	li r5, 0x40
/* 80296AF8 002600B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296AFC 002600BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296B00 002600C0  3F E0 80 58 */	lis r31, lbl_8057A9C8@ha
/* 80296B04 002600C4  38 7F A9 C8 */	addi r3, r31, lbl_8057A9C8@l
/* 80296B08 002600C8  4B D6 D4 F9 */	bl memcpy
/* 80296B0C 002600CC  38 7F A9 C8 */	addi r3, r31, lbl_8057A9C8@l
/* 80296B10 002600D0  88 03 00 0F */	lbz r0, 0xf(r3)
/* 80296B14 002600D4  2C 00 00 00 */	cmpwi r0, 0
/* 80296B18 002600D8  40 82 00 0C */	bne .L_80296B24
/* 80296B1C 002600DC  38 00 00 0A */	li r0, 0xa
/* 80296B20 002600E0  98 03 00 0F */	stb r0, 0xf(r3)
.L_80296B24:
/* 80296B24 002600E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296B28 002600E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296B2C 002600EC  7C 08 03 A6 */	mtlr r0
/* 80296B30 002600F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80296B34 002600F4  4E 80 00 20 */	blr
.endfn func_80296AE8__FPUc

.fn sinit_80296B38__Fv, local
/* 80296B38 002600F8  3C 60 80 58 */	lis r3, lbl_8057A9C8@ha
/* 80296B3C 002600FC  38 63 A9 C8 */	addi r3, r3, lbl_8057A9C8@l
/* 80296B40 00260100  4B FF FE F4 */	b func_80296A34__FPUc
.endfn sinit_80296B38__Fv

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_80296B38

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



.obj lbl_8057A9C8, global
	.skip 0x40
.endobj lbl_8057A9C8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80019C08", local
.hidden "@etb_80019C08"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019C08"

.obj "@etb_80019C10", local
.hidden "@etb_80019C10"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019C10"

.obj "@etb_80019C18", local
.hidden "@etb_80019C18"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019C18"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4


.obj "@eti_80031E98", local
.hidden "@eti_80031E98"
	.4byte func_80296A04
	.4byte 0x00000030
	.4byte "@etb_80019C08"
.endobj "@eti_80031E98"

.obj "@eti_80031EA4", local
.hidden "@eti_80031EA4"
	.4byte func_80296A34
	.4byte 0x000000A8
	.4byte "@etb_80019C10"
.endobj "@eti_80031EA4"

.obj "@eti_80031EB0", local
.hidden "@eti_80031EB0"
	.4byte func_80296AE8
	.4byte 0x00000050
	.4byte "@etb_80019C18"
.endobj "@eti_80031EB0"
