.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn PADControlMotor, global
/* 8035F410 003289D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035F414 003289D4  7C 08 02 A6 */	mflr r0
/* 8035F418 003289D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035F41C 003289DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035F420 003289E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035F424 003289E4  7C 9E 23 78 */	mr r30, r4
/* 8035F428 003289E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035F42C 003289EC  7C 7D 1B 78 */	mr r29, r3
/* 8035F430 003289F0  4B FF 95 81 */	bl OSDisableInterrupts
/* 8035F434 003289F4  3C 00 80 00 */	lis r0, 0x8000
/* 8035F438 003289F8  80 8D B9 D4 */	lwz r4, EnabledBits@sda21(r13)
/* 8035F43C 003289FC  7C 00 EC 30 */	srw r0, r0, r29
/* 8035F440 00328A00  7C 7F 1B 78 */	mr r31, r3
/* 8035F444 00328A04  7C 80 00 39 */	and. r0, r4, r0
/* 8035F448 00328A08  41 82 00 5C */	beq .L_8035F4A4
/* 8035F44C 00328A0C  7F A3 EB 78 */	mr r3, r29
/* 8035F450 00328A10  48 00 30 C1 */	bl SIGetType
/* 8035F454 00328A14  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 8035F458 00328A18  40 82 00 4C */	bne .L_8035F4A4
/* 8035F45C 00328A1C  80 0D 9A 3C */	lwz r0, Spec@sda21(r13)
/* 8035F460 00328A20  28 00 00 02 */	cmplwi r0, 2
/* 8035F464 00328A24  40 80 00 10 */	bge .L_8035F474
/* 8035F468 00328A28  28 1E 00 02 */	cmplwi r30, 2
/* 8035F46C 00328A2C  40 82 00 08 */	bne .L_8035F474
/* 8035F470 00328A30  3B C0 00 00 */	li r30, 0
.L_8035F474:
/* 8035F474 00328A34  3C 60 80 00 */	lis r3, 0x800030E3@ha
/* 8035F478 00328A38  88 03 30 E3 */	lbz r0, 0x800030E3@l(r3)
/* 8035F47C 00328A3C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8035F480 00328A40  41 82 00 08 */	beq .L_8035F488
/* 8035F484 00328A44  3B C0 00 00 */	li r30, 0
.L_8035F488:
/* 8035F488 00328A48  80 8D 9A 38 */	lwz r4, AnalogMode@sda21(r13)
/* 8035F48C 00328A4C  57 C0 07 BE */	clrlwi r0, r30, 0x1e
/* 8035F490 00328A50  7F A3 EB 78 */	mr r3, r29
/* 8035F494 00328A54  64 84 00 40 */	oris r4, r4, 0x40
/* 8035F498 00328A58  7C 84 03 78 */	or r4, r4, r0
/* 8035F49C 00328A5C  48 00 2B 25 */	bl SISetCommand
/* 8035F4A0 00328A60  48 00 2B 41 */	bl SITransferCommands
.L_8035F4A4:
/* 8035F4A4 00328A64  7F E3 FB 78 */	mr r3, r31
/* 8035F4A8 00328A68  4B FF 95 49 */	bl OSRestoreInterrupts
/* 8035F4AC 00328A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035F4B0 00328A70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035F4B4 00328A74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035F4B8 00328A78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035F4BC 00328A7C  7C 08 03 A6 */	mtlr r0
/* 8035F4C0 00328A80  38 21 00 20 */	addi r1, r1, 0x20
/* 8035F4C4 00328A84  4E 80 00 20 */	blr 
.endfn PADControlMotor

.balign 16, 0
.fn __PADDisableRecalibration, global
/* 8035F4D0 00328A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035F4D4 00328A94  7C 08 02 A6 */	mflr r0
/* 8035F4D8 00328A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035F4DC 00328A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035F4E0 00328AA0  7C 7F 1B 78 */	mr r31, r3
/* 8035F4E4 00328AA4  4B FF 94 CD */	bl OSDisableInterrupts
/* 8035F4E8 00328AA8  3C A0 80 00 */	lis r5, 0x800030E3@ha
/* 8035F4EC 00328AAC  2C 1F 00 00 */	cmpwi r31, 0
/* 8035F4F0 00328AB0  88 85 30 E3 */	lbz r4, 0x800030E3@l(r5)
/* 8035F4F4 00328AB4  54 80 06 B0 */	rlwinm r0, r4, 0, 0x1a, 0x18
/* 8035F4F8 00328AB8  98 05 30 E3 */	stb r0, 0x30e3(r5)
/* 8035F4FC 00328ABC  54 9F D7 FE */	rlwinm r31, r4, 0x1a, 0x1f, 0x1f
/* 8035F500 00328AC0  41 82 00 10 */	beq .L_8035F510
/* 8035F504 00328AC4  88 05 30 E3 */	lbz r0, 0x30e3(r5)
/* 8035F508 00328AC8  60 00 00 40 */	ori r0, r0, 0x40
/* 8035F50C 00328ACC  98 05 30 E3 */	stb r0, 0x30e3(r5)
.L_8035F510:
/* 8035F510 00328AD0  4B FF 94 E1 */	bl OSRestoreInterrupts
/* 8035F514 00328AD4  7F E3 FB 78 */	mr r3, r31
/* 8035F518 00328AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035F51C 00328ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035F520 00328AE0  7C 08 03 A6 */	mtlr r0
/* 8035F524 00328AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8035F528 00328AE8  4E 80 00 20 */	blr 
.endfn __PADDisableRecalibration

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj AnalogMode, local
	.4byte 0x00000300
.endobj AnalogMode

.obj Spec, local
	.4byte 0x00000005
.endobj Spec

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj __PADSpec, global
	.skip 0x4
.endobj __PADSpec

.obj EnabledBits, local
	.skip 0x4
.endobj EnabledBits
