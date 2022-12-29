.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global Console_Printf__Q24nw4r2dbFPQ44nw4r2db6detail11ConsoleHeadPCce
Console_Printf__Q24nw4r2dbFPQ44nw4r2db6detail11ConsoleHeadPCce:
/* 803D7244 003A0804  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803D7248 003A0808  40 86 00 24 */	bne cr1, .L_803D726C
/* 803D724C 003A080C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803D7250 003A0810  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803D7254 003A0814  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803D7258 003A0818  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803D725C 003A081C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803D7260 003A0820  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803D7264 003A0824  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803D7268 003A0828  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803D726C:
/* 803D726C 003A082C  39 61 00 88 */	addi r11, r1, 0x88
/* 803D7270 003A0830  38 01 00 08 */	addi r0, r1, 8
/* 803D7274 003A0834  3D 80 02 00 */	lis r12, 0x200
/* 803D7278 003A0838  90 61 00 08 */	stw r3, 8(r1)
/* 803D727C 003A083C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D7280 003A0840  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803D7284 003A0844  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803D7288 003A0848  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803D728C 003A084C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803D7290 003A0850  91 21 00 20 */	stw r9, 0x20(r1)
/* 803D7294 003A0854  91 41 00 24 */	stw r10, 0x24(r1)
/* 803D7298 003A0858  91 81 00 68 */	stw r12, 0x68(r1)
/* 803D729C 003A085C  91 61 00 6C */	stw r11, 0x6c(r1)
/* 803D72A0 003A0860  90 01 00 70 */	stw r0, 0x70(r1)
/* 803D72A4 003A0864  38 21 00 80 */	addi r1, r1, 0x80
/* 803D72A8 003A0868  4E 80 00 20 */	blr 

.global Console_GetTotalLines__Q24nw4r2dbFPQ44nw4r2db6detail11ConsoleHead
Console_GetTotalLines__Q24nw4r2dbFPQ44nw4r2db6detail11ConsoleHead:
/* 803D72AC 003A086C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D72B0 003A0870  7C 08 02 A6 */	mflr r0
/* 803D72B4 003A0874  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D72B8 003A0878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D72BC 003A087C  7C 7F 1B 78 */	mr r31, r3
/* 803D72C0 003A0880  4B F8 16 F1 */	bl OSDisableInterrupts
/* 803D72C4 003A0884  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 803D72C8 003A0888  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 803D72CC 003A088C  7C 84 00 51 */	subf. r4, r4, r0
/* 803D72D0 003A0890  40 80 00 0C */	bge .L_803D72DC
/* 803D72D4 003A0894  A0 1F 00 06 */	lhz r0, 6(r31)
/* 803D72D8 003A0898  7C 84 02 14 */	add r4, r4, r0
.L_803D72DC:
/* 803D72DC 003A089C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 803D72E0 003A08A0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803D72E4 003A08A4  2C 00 00 00 */	cmpwi r0, 0
/* 803D72E8 003A08A8  41 82 00 0C */	beq .L_803D72F4
/* 803D72EC 003A08AC  38 04 00 01 */	addi r0, r4, 1
/* 803D72F0 003A08B0  54 04 04 3E */	clrlwi r4, r0, 0x10
.L_803D72F4:
/* 803D72F4 003A08B4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D72F8 003A08B8  7F E0 22 14 */	add r31, r0, r4
/* 803D72FC 003A08BC  4B F8 16 F5 */	bl OSRestoreInterrupts
/* 803D7300 003A08C0  7F E3 FB 78 */	mr r3, r31
/* 803D7304 003A08C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7308 003A08C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D730C 003A08CC  7C 08 03 A6 */	mtlr r0
/* 803D7310 003A08D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7314 003A08D4  4E 80 00 20 */	blr 

#probably in a separate file (db_DbgPrintBase?)
.global SetTextColor__Q34nw4r2ut10CharWriterFQ34nw4r2ut5Color
SetTextColor__Q34nw4r2ut10CharWriterFQ34nw4r2ut5Color:
/* 803D7318 003A08D8  88 E4 00 00 */	lbz r7, 0(r4)
/* 803D731C 003A08DC  88 C4 00 01 */	lbz r6, 1(r4)
/* 803D7320 003A08E0  88 A4 00 02 */	lbz r5, 2(r4)
/* 803D7324 003A08E4  88 04 00 03 */	lbz r0, 3(r4)
/* 803D7328 003A08E8  98 E3 00 18 */	stb r7, 0x18(r3)
/* 803D732C 003A08EC  98 C3 00 19 */	stb r6, 0x19(r3)
/* 803D7330 003A08F0  98 A3 00 1A */	stb r5, 0x1a(r3)
/* 803D7334 003A08F4  98 03 00 1B */	stb r0, 0x1b(r3)
/* 803D7338 003A08F8  48 05 8E 50 */	b UpdateVertexColor__Q34nw4r2ut10CharWriterFv