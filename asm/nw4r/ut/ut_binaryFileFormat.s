.include "macros.inc"
.file "nw4r/ut/ut_binaryFileFormat.o"

# 0x8042B57C - 0x8042B5F0
.text
.balign 4

# nw4r::ut::IsValidBinaryFile(const nw4r::ut::BinaryFileHeader*, unsigned long, unsigned short, unsigned short)
.fn IsValidBinaryFile__Q24nw4r2utFPCQ34nw4r2ut16BinaryFileHeaderUlUsUs, global
/* 8042B57C 003F4B3C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8042B580 003F4B40  7C 00 20 40 */	cmplw r0, r4
/* 8042B584 003F4B44  41 82 00 0C */	beq .L_8042B590
/* 8042B588 003F4B48  38 60 00 00 */	li r3, 0x0
/* 8042B58C 003F4B4C  4E 80 00 20 */	blr
.L_8042B590:
/* 8042B590 003F4B50  A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8042B594 003F4B54  28 00 FE FF */	cmplwi r0, 0xfeff
/* 8042B598 003F4B58  41 82 00 0C */	beq .L_8042B5A4
/* 8042B59C 003F4B5C  38 60 00 00 */	li r3, 0x0
/* 8042B5A0 003F4B60  4E 80 00 20 */	blr
.L_8042B5A4:
/* 8042B5A4 003F4B64  A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8042B5A8 003F4B68  7C 00 28 40 */	cmplw r0, r5
/* 8042B5AC 003F4B6C  41 82 00 0C */	beq .L_8042B5B8
/* 8042B5B0 003F4B70  38 60 00 00 */	li r3, 0x0
/* 8042B5B4 003F4B74  4E 80 00 20 */	blr
.L_8042B5B8:
/* 8042B5B8 003F4B78  54 C4 1B 78 */	clrlslwi r4, r6, 16, 3
/* 8042B5BC 003F4B7C  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8042B5C0 003F4B80  38 04 00 10 */	addi r0, r4, 0x10
/* 8042B5C4 003F4B84  7C 05 00 40 */	cmplw r5, r0
/* 8042B5C8 003F4B88  40 80 00 0C */	bge .L_8042B5D4
/* 8042B5CC 003F4B8C  38 60 00 00 */	li r3, 0x0
/* 8042B5D0 003F4B90  4E 80 00 20 */	blr
.L_8042B5D4:
/* 8042B5D4 003F4B94  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 8042B5D8 003F4B98  7C 06 18 50 */	subf r0, r6, r3
/* 8042B5DC 003F4B9C  7C 63 33 38 */	orc r3, r3, r6
/* 8042B5E0 003F4BA0  54 00 F8 7E */	srwi r0, r0, 1
/* 8042B5E4 003F4BA4  7C 00 18 50 */	subf r0, r0, r3
/* 8042B5E8 003F4BA8  54 03 0F FE */	srwi r3, r0, 31
/* 8042B5EC 003F4BAC  4E 80 00 20 */	blr
.endfn IsValidBinaryFile__Q24nw4r2utFPCQ34nw4r2ut16BinaryFileHeaderUlUsUs
