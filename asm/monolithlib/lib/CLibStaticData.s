.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CLibStaticData, global
/* 8045F930 00428EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045F934 00428EF4  7C 08 02 A6 */	mflr r0
/* 8045F938 00428EF8  38 C0 00 00 */	li r6, 0
/* 8045F93C 00428EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045F940 00428F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045F944 00428F04  93 C1 00 08 */	stw r30, 8(r1)
/* 8045F948 00428F08  7C 7E 1B 78 */	mr r30, r3
/* 8045F94C 00428F0C  4B FD 7C 71 */	bl __ct__CWorkThread
/* 8045F950 00428F10  3C 60 80 57 */	lis r3, __vt__CLibStaticData@ha
/* 8045F954 00428F14  3B E0 00 00 */	li r31, 0
/* 8045F958 00428F18  38 63 0C 50 */	addi r3, r3, __vt__CLibStaticData@l
/* 8045F95C 00428F1C  90 7E 00 00 */	stw r3, 0(r30)
/* 8045F960 00428F20  38 00 00 13 */	li r0, 0x13
/* 8045F964 00428F24  38 80 00 40 */	li r4, 0x40
/* 8045F968 00428F28  93 FE 01 C4 */	stw r31, 0x1c4(r30)
/* 8045F96C 00428F2C  38 A0 00 04 */	li r5, 4
/* 8045F970 00428F30  93 FE 01 C8 */	stw r31, 0x1c8(r30)
/* 8045F974 00428F34  93 FE 01 CC */	stw r31, 0x1cc(r30)
/* 8045F978 00428F38  93 CD BE 70 */	stw r30, lbl_80667FF0@sda21(r13)
/* 8045F97C 00428F3C  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 8045F980 00428F40  90 1E 00 50 */	stw r0, 0x50(r30)
/* 8045F984 00428F44  90 7E 01 D4 */	stw r3, 0x1d4(r30)
/* 8045F988 00428F48  4B FD 4A A5 */	bl func_8043442C
/* 8045F98C 00428F4C  90 7E 01 C8 */	stw r3, 0x1c8(r30)
/* 8045F990 00428F50  38 00 00 10 */	li r0, 0x10
/* 8045F994 00428F54  7F C3 F3 78 */	mr r3, r30
/* 8045F998 00428F58  93 FE 01 CC */	stw r31, 0x1cc(r30)
/* 8045F99C 00428F5C  90 1E 01 D0 */	stw r0, 0x1d0(r30)
/* 8045F9A0 00428F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045F9A4 00428F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045F9A8 00428F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045F9AC 00428F6C  7C 08 03 A6 */	mtlr r0
/* 8045F9B0 00428F70  38 21 00 10 */	addi r1, r1, 0x10
/* 8045F9B4 00428F74  4E 80 00 20 */	blr 
.endfn __ct__CLibStaticData

.fn __dt__8045F9B8, global
/* 8045F9B8 00428F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045F9BC 00428F7C  7C 08 02 A6 */	mflr r0
/* 8045F9C0 00428F80  2C 03 00 00 */	cmpwi r3, 0
/* 8045F9C4 00428F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045F9C8 00428F88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045F9CC 00428F8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045F9D0 00428F90  7C 9E 23 78 */	mr r30, r4
/* 8045F9D4 00428F94  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8045F9D8 00428F98  7C 7D 1B 78 */	mr r29, r3
/* 8045F9DC 00428F9C  41 82 00 54 */	beq .L_8045FA30
/* 8045F9E0 00428FA0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8045F9E4 00428FA4  3B E0 00 00 */	li r31, 0
/* 8045F9E8 00428FA8  93 E3 00 04 */	stw r31, 4(r3)
/* 8045F9EC 00428FAC  3C 04 00 01 */	addis r0, r4, 1
/* 8045F9F0 00428FB0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8045F9F4 00428FB4  41 82 00 18 */	beq .L_8045FA0C
/* 8045F9F8 00428FB8  80 63 00 00 */	lwz r3, 0(r3)
/* 8045F9FC 00428FBC  2C 03 00 00 */	cmpwi r3, 0
/* 8045FA00 00428FC0  41 82 00 0C */	beq .L_8045FA0C
/* 8045FA04 00428FC4  4B FD 4A D5 */	bl func_804344D8
/* 8045FA08 00428FC8  93 FD 00 00 */	stw r31, 0(r29)
.L_8045FA0C:
/* 8045FA0C 00428FCC  2C 1E 00 00 */	cmpwi r30, 0
/* 8045FA10 00428FD0  38 60 00 00 */	li r3, 0
/* 8045FA14 00428FD4  38 00 FF FF */	li r0, -1
/* 8045FA18 00428FD8  90 7D 00 00 */	stw r3, 0(r29)
/* 8045FA1C 00428FDC  90 7D 00 08 */	stw r3, 8(r29)
/* 8045FA20 00428FE0  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8045FA24 00428FE4  40 81 00 0C */	ble .L_8045FA30
/* 8045FA28 00428FE8  7F A3 EB 78 */	mr r3, r29
/* 8045FA2C 00428FEC  4B FD 52 01 */	bl __dl__FPv
.L_8045FA30:
/* 8045FA30 00428FF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045FA34 00428FF4  7F A3 EB 78 */	mr r3, r29
/* 8045FA38 00428FF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045FA3C 00428FFC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8045FA40 00429000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045FA44 00429004  7C 08 03 A6 */	mtlr r0
/* 8045FA48 00429008  38 21 00 20 */	addi r1, r1, 0x20
/* 8045FA4C 0042900C  4E 80 00 20 */	blr 
.endfn __dt__8045F9B8

.fn __dt__CLibStaticData, global
/* 8045FA50 00429010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045FA54 00429014  7C 08 02 A6 */	mflr r0
/* 8045FA58 00429018  2C 03 00 00 */	cmpwi r3, 0
/* 8045FA5C 0042901C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045FA60 00429020  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045FA64 00429024  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045FA68 00429028  7C 9E 23 78 */	mr r30, r4
/* 8045FA6C 0042902C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8045FA70 00429030  7C 7D 1B 78 */	mr r29, r3
/* 8045FA74 00429034  41 82 00 6C */	beq .L_8045FAE0
/* 8045FA78 00429038  34 03 01 C8 */	addic. r0, r3, 0x1c8
/* 8045FA7C 0042903C  3B E0 00 00 */	li r31, 0
/* 8045FA80 00429040  93 ED BE 70 */	stw r31, lbl_80667FF0@sda21(r13)
/* 8045FA84 00429044  41 82 00 40 */	beq .L_8045FAC4
/* 8045FA88 00429048  80 83 01 D4 */	lwz r4, 0x1d4(r3)
/* 8045FA8C 0042904C  93 E3 01 CC */	stw r31, 0x1cc(r3)
/* 8045FA90 00429050  3C 04 00 01 */	addis r0, r4, 1
/* 8045FA94 00429054  28 00 FF FF */	cmplwi r0, 0xffff
/* 8045FA98 00429058  41 82 00 18 */	beq .L_8045FAB0
/* 8045FA9C 0042905C  80 63 01 C8 */	lwz r3, 0x1c8(r3)
/* 8045FAA0 00429060  2C 03 00 00 */	cmpwi r3, 0
/* 8045FAA4 00429064  41 82 00 0C */	beq .L_8045FAB0
/* 8045FAA8 00429068  4B FD 4A 31 */	bl func_804344D8
/* 8045FAAC 0042906C  93 FD 01 C8 */	stw r31, 0x1c8(r29)
.L_8045FAB0:
/* 8045FAB0 00429070  38 60 00 00 */	li r3, 0
/* 8045FAB4 00429074  38 00 FF FF */	li r0, -1
/* 8045FAB8 00429078  90 7D 01 C8 */	stw r3, 0x1c8(r29)
/* 8045FABC 0042907C  90 7D 01 D0 */	stw r3, 0x1d0(r29)
/* 8045FAC0 00429080  90 1D 01 D4 */	stw r0, 0x1d4(r29)
.L_8045FAC4:
/* 8045FAC4 00429084  7F A3 EB 78 */	mr r3, r29
/* 8045FAC8 00429088  38 80 00 00 */	li r4, 0
/* 8045FACC 0042908C  4B FD 7F FD */	bl __dt__CWorkThread
/* 8045FAD0 00429090  2C 1E 00 00 */	cmpwi r30, 0
/* 8045FAD4 00429094  40 81 00 0C */	ble .L_8045FAE0
/* 8045FAD8 00429098  7F A3 EB 78 */	mr r3, r29
/* 8045FADC 0042909C  4B FD 51 51 */	bl __dl__FPv
.L_8045FAE0:
/* 8045FAE0 004290A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045FAE4 004290A4  7F A3 EB 78 */	mr r3, r29
/* 8045FAE8 004290A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045FAEC 004290AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8045FAF0 004290B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045FAF4 004290B4  7C 08 03 A6 */	mtlr r0
/* 8045FAF8 004290B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8045FAFC 004290BC  4E 80 00 20 */	blr 
.endfn __dt__CLibStaticData

.fn func_8045FB00, global
/* 8045FB00 004290C0  80 6D BE 70 */	lwz r3, lbl_80667FF0@sda21(r13)
/* 8045FB04 004290C4  4E 80 00 20 */	blr 
.endfn func_8045FB00

.fn func_8045FB08, global
/* 8045FB08 004290C8  80 CD BE 70 */	lwz r6, lbl_80667FF0@sda21(r13)
/* 8045FB0C 004290CC  80 06 00 7C */	lwz r0, 0x7c(r6)
/* 8045FB10 004290D0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8045FB14 004290D4  41 82 00 0C */	beq .L_8045FB20
/* 8045FB18 004290D8  38 00 00 01 */	li r0, 1
/* 8045FB1C 004290DC  48 00 00 5C */	b .L_8045FB78
.L_8045FB20:
/* 8045FB20 004290E0  80 06 01 AC */	lwz r0, 0x1ac(r6)
/* 8045FB24 004290E4  38 E0 00 00 */	li r7, 0
/* 8045FB28 004290E8  7C 09 03 A6 */	mtctr r0
/* 8045FB2C 004290EC  28 00 00 00 */	cmplwi r0, 0
/* 8045FB30 004290F0  40 81 00 3C */	ble .L_8045FB6C
.L_8045FB34:
/* 8045FB34 004290F4  80 06 01 A8 */	lwz r0, 0x1a8(r6)
/* 8045FB38 004290F8  80 66 01 B0 */	lwz r3, 0x1b0(r6)
/* 8045FB3C 004290FC  7C 80 3A 14 */	add r4, r0, r7
/* 8045FB40 00429100  80 A6 01 A4 */	lwz r5, 0x1a4(r6)
/* 8045FB44 00429104  7C 04 1B 96 */	divwu r0, r4, r3
/* 8045FB48 00429108  7C 00 19 D6 */	mullw r0, r0, r3
/* 8045FB4C 0042910C  7C 00 20 50 */	subf r0, r0, r4
/* 8045FB50 00429110  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8045FB54 00429114  7C 05 00 2E */	lwzx r0, r5, r0
/* 8045FB58 00429118  28 00 00 02 */	cmplwi r0, 2
/* 8045FB5C 0042911C  40 82 00 08 */	bne .L_8045FB64
/* 8045FB60 00429120  48 00 00 10 */	b .L_8045FB70
.L_8045FB64:
/* 8045FB64 00429124  38 E7 00 01 */	addi r7, r7, 1
/* 8045FB68 00429128  42 00 FF CC */	bdnz .L_8045FB34
.L_8045FB6C:
/* 8045FB6C 0042912C  38 E0 FF FF */	li r7, -1
.L_8045FB70:
/* 8045FB70 00429130  54 E0 0F FE */	srwi r0, r7, 0x1f
/* 8045FB74 00429134  68 00 00 01 */	xori r0, r0, 1
.L_8045FB78:
/* 8045FB78 00429138  2C 00 00 00 */	cmpwi r0, 0
/* 8045FB7C 0042913C  38 60 00 00 */	li r3, 0
/* 8045FB80 00429140  4C 82 00 20 */	bnelr 
/* 8045FB84 00429144  80 86 00 48 */	lwz r4, 0x48(r6)
/* 8045FB88 00429148  38 00 00 01 */	li r0, 1
/* 8045FB8C 0042914C  2C 04 00 02 */	cmpwi r4, 2
/* 8045FB90 00429150  41 82 00 10 */	beq .L_8045FBA0
/* 8045FB94 00429154  2C 04 00 03 */	cmpwi r4, 3
/* 8045FB98 00429158  41 82 00 08 */	beq .L_8045FBA0
/* 8045FB9C 0042915C  38 00 00 00 */	li r0, 0
.L_8045FBA0:
/* 8045FBA0 00429160  2C 00 00 00 */	cmpwi r0, 0
/* 8045FBA4 00429164  4D 82 00 20 */	beqlr 
/* 8045FBA8 00429168  38 60 00 01 */	li r3, 1
/* 8045FBAC 0042916C  4E 80 00 20 */	blr 
.endfn func_8045FB08

.fn func_8045FBB0, global
/* 8045FBB0 00429170  90 6D BE 74 */	stw r3, lbl_80667FF4@sda21(r13)
/* 8045FBB4 00429174  4E 80 00 20 */	blr 
.endfn func_8045FBB0

.fn func_8045FBB8, global
/* 8045FBB8 00429178  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045FBBC 0042917C  7C 08 02 A6 */	mflr r0
/* 8045FBC0 00429180  2C 05 00 00 */	cmpwi r5, 0
/* 8045FBC4 00429184  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045FBC8 00429188  BF 41 00 08 */	stmw r26, 8(r1)
/* 8045FBCC 0042918C  7C 7A 1B 78 */	mr r26, r3
/* 8045FBD0 00429190  7C 9B 23 78 */	mr r27, r4
/* 8045FBD4 00429194  7C BC 2B 78 */	mr r28, r5
/* 8045FBD8 00429198  41 82 00 0C */	beq .L_8045FBE4
/* 8045FBDC 0042919C  38 00 00 00 */	li r0, 0
/* 8045FBE0 004291A0  90 05 00 00 */	stw r0, 0(r5)
.L_8045FBE4:
/* 8045FBE4 004291A4  38 00 00 00 */	li r0, 0
/* 8045FBE8 004291A8  90 04 00 00 */	stw r0, 0(r4)
/* 8045FBEC 004291AC  80 6D BE 70 */	lwz r3, lbl_80667FF0@sda21(r13)
/* 8045FBF0 004291B0  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 8045FBF4 004291B4  83 A3 01 C8 */	lwz r29, 0x1c8(r3)
/* 8045FBF8 004291B8  54 00 10 3A */	slwi r0, r0, 2
/* 8045FBFC 004291BC  7F FD 02 14 */	add r31, r29, r0
/* 8045FC00 004291C0  48 00 00 64 */	b .L_8045FC64
.L_8045FC04:
/* 8045FC04 004291C4  83 DD 00 00 */	lwz r30, 0(r29)
/* 8045FC08 004291C8  7F 44 D3 78 */	mr r4, r26
/* 8045FC0C 004291CC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8045FC10 004291D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8045FC14 004291D4  4B E6 2C 21 */	bl strcmp
/* 8045FC18 004291D8  2C 03 00 00 */	cmpwi r3, 0
/* 8045FC1C 004291DC  40 82 00 44 */	bne .L_8045FC60
/* 8045FC20 004291E0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8045FC24 004291E4  2C 1C 00 00 */	cmpwi r28, 0
/* 8045FC28 004291E8  90 1B 00 00 */	stw r0, 0(r27)
/* 8045FC2C 004291EC  41 82 00 10 */	beq .L_8045FC3C
/* 8045FC30 004291F0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8045FC34 004291F4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8045FC38 004291F8  90 1C 00 00 */	stw r0, 0(r28)
.L_8045FC3C:
/* 8045FC3C 004291FC  2C 1B 00 00 */	cmpwi r27, 0
/* 8045FC40 00429200  38 60 00 00 */	li r3, 0
/* 8045FC44 00429204  41 82 00 2C */	beq .L_8045FC70
/* 8045FC48 00429208  80 9D 00 00 */	lwz r4, 0(r29)
/* 8045FC4C 0042920C  80 04 00 08 */	lwz r0, 8(r4)
/* 8045FC50 00429210  2C 00 00 00 */	cmpwi r0, 0
/* 8045FC54 00429214  40 82 00 1C */	bne .L_8045FC70
/* 8045FC58 00429218  38 60 00 01 */	li r3, 1
/* 8045FC5C 0042921C  48 00 00 14 */	b .L_8045FC70
.L_8045FC60:
/* 8045FC60 00429220  3B BD 00 04 */	addi r29, r29, 4
.L_8045FC64:
/* 8045FC64 00429224  7C 1D F8 40 */	cmplw r29, r31
/* 8045FC68 00429228  40 82 FF 9C */	bne .L_8045FC04
/* 8045FC6C 0042922C  38 60 00 00 */	li r3, 0
.L_8045FC70:
/* 8045FC70 00429230  BB 41 00 08 */	lmw r26, 8(r1)
/* 8045FC74 00429234  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045FC78 00429238  7C 08 03 A6 */	mtlr r0
/* 8045FC7C 0042923C  38 21 00 20 */	addi r1, r1, 0x20
/* 8045FC80 00429240  4E 80 00 20 */	blr 
.endfn func_8045FBB8

#called from func_804385D0
.fn func_8045FC84, global
/* 8045FC84 00429244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045FC88 00429248  7C 08 02 A6 */	mflr r0
/* 8045FC8C 0042924C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045FC90 00429250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045FC94 00429254  7C 7F 1B 78 */	mr r31, r3
/* 8045FC98 00429258  93 C1 00 08 */	stw r30, 8(r1)
/* 8045FC9C 0042925C  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 8045FCA0 00429260  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045FCA4 00429264  41 82 00 0C */	beq .L_8045FCB0
/* 8045FCA8 00429268  4B FD 8D 51 */	bl func_804389F8
/* 8045FCAC 0042926C  48 00 00 F4 */	b .L_8045FDA0
.L_8045FCB0:
/* 8045FCB0 00429270  48 07 E3 DD */	bl func_804DE08C
/* 8045FCB4 00429274  2C 03 00 00 */	cmpwi r3, 0
/* 8045FCB8 00429278  40 82 00 0C */	bne .L_8045FCC4
/* 8045FCBC 0042927C  38 60 00 00 */	li r3, 0
/* 8045FCC0 00429280  48 00 00 E0 */	b .L_8045FDA0
.L_8045FCC4:
/* 8045FCC4 00429284  80 1F 01 C4 */	lwz r0, 0x1c4(r31)
/* 8045FCC8 00429288  2C 00 00 00 */	cmpwi r0, 0
/* 8045FCCC 0042928C  41 82 00 10 */	beq .L_8045FCDC
/* 8045FCD0 00429290  2C 00 00 01 */	cmpwi r0, 1
/* 8045FCD4 00429294  41 82 00 80 */	beq .L_8045FD54
/* 8045FCD8 00429298  48 00 00 C0 */	b .L_8045FD98
.L_8045FCDC:
/* 8045FCDC 0042929C  4B FF 55 D9 */	bl func_804552B4
/* 8045FCE0 004292A0  2C 03 00 00 */	cmpwi r3, 0
/* 8045FCE4 004292A4  40 82 00 0C */	bne .L_8045FCF0
/* 8045FCE8 004292A8  38 60 00 00 */	li r3, 0
/* 8045FCEC 004292AC  48 00 00 B4 */	b .L_8045FDA0
.L_8045FCF0:
/* 8045FCF0 004292B0  83 CD BE 74 */	lwz r30, lbl_80667FF4@sda21(r13)
/* 8045FCF4 004292B4  2C 1E 00 00 */	cmpwi r30, 0
/* 8045FCF8 004292B8  41 82 00 50 */	beq .L_8045FD48
/* 8045FCFC 004292BC  48 00 00 40 */	b .L_8045FD3C
.L_8045FD00:
/* 8045FD00 004292C0  4B FD 78 B5 */	bl getMemBlockIndex
/* 8045FD04 004292C4  7C 64 1B 78 */	mr r4, r3
/* 8045FD08 004292C8  38 60 00 18 */	li r3, 0x18
/* 8045FD0C 004292CC  4B FD 4D 51 */	bl heap_allocate
/* 8045FD10 004292D0  2C 03 00 00 */	cmpwi r3, 0
/* 8045FD14 004292D4  41 82 00 0C */	beq .L_8045FD20
/* 8045FD18 004292D8  7F C4 F3 78 */	mr r4, r30
/* 8045FD1C 004292DC  48 00 01 8D */	bl __ct__CLibStaticData_CItem
.L_8045FD20:
/* 8045FD20 004292E0  80 9F 01 CC */	lwz r4, 0x1cc(r31)
/* 8045FD24 004292E4  3B DE 00 14 */	addi r30, r30, 0x14
/* 8045FD28 004292E8  80 BF 01 C8 */	lwz r5, 0x1c8(r31)
/* 8045FD2C 004292EC  54 80 10 3A */	slwi r0, r4, 2
/* 8045FD30 004292F0  38 84 00 01 */	addi r4, r4, 1
/* 8045FD34 004292F4  7C 65 01 2E */	stwx r3, r5, r0
/* 8045FD38 004292F8  90 9F 01 CC */	stw r4, 0x1cc(r31)
.L_8045FD3C:
/* 8045FD3C 004292FC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8045FD40 00429300  2C 00 00 00 */	cmpwi r0, 0
/* 8045FD44 00429304  40 82 FF BC */	bne .L_8045FD00
.L_8045FD48:
/* 8045FD48 00429308  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 8045FD4C 0042930C  38 03 00 01 */	addi r0, r3, 1
/* 8045FD50 00429310  90 1F 01 C4 */	stw r0, 0x1c4(r31)
.L_8045FD54:
/* 8045FD54 00429314  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 8045FD58 00429318  80 BF 01 C8 */	lwz r5, 0x1c8(r31)
/* 8045FD5C 0042931C  54 00 10 3A */	slwi r0, r0, 2
/* 8045FD60 00429320  7C 85 02 14 */	add r4, r5, r0
/* 8045FD64 00429324  48 00 00 20 */	b .L_8045FD84
.L_8045FD68:
/* 8045FD68 00429328  80 65 00 00 */	lwz r3, 0(r5)
/* 8045FD6C 0042932C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8045FD70 00429330  2C 00 00 00 */	cmpwi r0, 0
/* 8045FD74 00429334  40 82 00 0C */	bne .L_8045FD80
/* 8045FD78 00429338  38 60 00 00 */	li r3, 0
/* 8045FD7C 0042933C  48 00 00 24 */	b .L_8045FDA0
.L_8045FD80:
/* 8045FD80 00429340  38 A5 00 04 */	addi r5, r5, 4
.L_8045FD84:
/* 8045FD84 00429344  7C 05 20 40 */	cmplw r5, r4
/* 8045FD88 00429348  40 82 FF E0 */	bne .L_8045FD68
/* 8045FD8C 0042934C  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 8045FD90 00429350  38 03 00 01 */	addi r0, r3, 1
/* 8045FD94 00429354  90 1F 01 C4 */	stw r0, 0x1c4(r31)
.L_8045FD98:
/* 8045FD98 00429358  7F E3 FB 78 */	mr r3, r31
/* 8045FD9C 0042935C  4B FD 8C 5D */	bl func_804389F8
.L_8045FDA0:
/* 8045FDA0 00429360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045FDA4 00429364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045FDA8 00429368  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045FDAC 0042936C  7C 08 03 A6 */	mtlr r0
/* 8045FDB0 00429370  38 21 00 10 */	addi r1, r1, 0x10
/* 8045FDB4 00429374  4E 80 00 20 */	blr 
.endfn func_8045FC84

.fn func_8045FDB8, global
/* 8045FDB8 00429378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045FDBC 0042937C  7C 08 02 A6 */	mflr r0
/* 8045FDC0 00429380  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045FDC4 00429384  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045FDC8 00429388  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045FDCC 0042938C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8045FDD0 00429390  7C 7D 1B 78 */	mr r29, r3
/* 8045FDD4 00429394  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8045FDD8 00429398  80 04 00 00 */	lwz r0, 0(r4)
/* 8045FDDC 0042939C  7C 00 20 40 */	cmplw r0, r4
/* 8045FDE0 004293A0  40 82 00 A8 */	bne .L_8045FE88
/* 8045FDE4 004293A4  4B FD 99 C9 */	bl func_804397AC
/* 8045FDE8 004293A8  2C 03 00 00 */	cmpwi r3, 0
/* 8045FDEC 004293AC  40 82 00 9C */	bne .L_8045FE88
/* 8045FDF0 004293B0  83 DD 01 C8 */	lwz r30, 0x1c8(r29)
/* 8045FDF4 004293B4  3B E0 00 00 */	li r31, 0
/* 8045FDF8 004293B8  48 00 00 30 */	b .L_8045FE28
.L_8045FDFC:
/* 8045FDFC 004293BC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8045FE00 004293C0  2C 03 00 00 */	cmpwi r3, 0
/* 8045FE04 004293C4  41 82 00 20 */	beq .L_8045FE24
/* 8045FE08 004293C8  41 82 00 18 */	beq .L_8045FE20
/* 8045FE0C 004293CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8045FE10 004293D0  38 80 00 01 */	li r4, 1
/* 8045FE14 004293D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8045FE18 004293D8  7D 89 03 A6 */	mtctr r12
/* 8045FE1C 004293DC  4E 80 04 21 */	bctrl 
.L_8045FE20:
/* 8045FE20 004293E0  93 FE 00 00 */	stw r31, 0(r30)
.L_8045FE24:
/* 8045FE24 004293E4  3B DE 00 04 */	addi r30, r30, 4
.L_8045FE28:
/* 8045FE28 004293E8  80 1D 01 CC */	lwz r0, 0x1cc(r29)
/* 8045FE2C 004293EC  80 7D 01 C8 */	lwz r3, 0x1c8(r29)
/* 8045FE30 004293F0  54 00 10 3A */	slwi r0, r0, 2
/* 8045FE34 004293F4  7C 03 02 14 */	add r0, r3, r0
/* 8045FE38 004293F8  7C 1E 00 40 */	cmplw r30, r0
/* 8045FE3C 004293FC  40 82 FF C0 */	bne .L_8045FDFC
/* 8045FE40 00429400  80 9D 01 D4 */	lwz r4, 0x1d4(r29)
/* 8045FE44 00429404  3B E0 00 00 */	li r31, 0
/* 8045FE48 00429408  93 FD 01 CC */	stw r31, 0x1cc(r29)
/* 8045FE4C 0042940C  3C 04 00 01 */	addis r0, r4, 1
/* 8045FE50 00429410  28 00 FF FF */	cmplwi r0, 0xffff
/* 8045FE54 00429414  41 82 00 14 */	beq .L_8045FE68
/* 8045FE58 00429418  2C 03 00 00 */	cmpwi r3, 0
/* 8045FE5C 0042941C  41 82 00 0C */	beq .L_8045FE68
/* 8045FE60 00429420  4B FD 46 79 */	bl func_804344D8
/* 8045FE64 00429424  93 FD 01 C8 */	stw r31, 0x1c8(r29)
.L_8045FE68:
/* 8045FE68 00429428  38 80 00 00 */	li r4, 0
/* 8045FE6C 0042942C  38 00 FF FF */	li r0, -1
/* 8045FE70 00429430  90 9D 01 C8 */	stw r4, 0x1c8(r29)
/* 8045FE74 00429434  7F A3 EB 78 */	mr r3, r29
/* 8045FE78 00429438  90 9D 01 D0 */	stw r4, 0x1d0(r29)
/* 8045FE7C 0042943C  90 1D 01 D4 */	stw r0, 0x1d4(r29)
/* 8045FE80 00429440  4B FD 8B A5 */	bl func_80438A24
/* 8045FE84 00429444  48 00 00 08 */	b .L_8045FE8C
.L_8045FE88:
/* 8045FE88 00429448  38 60 00 00 */	li r3, 0
.L_8045FE8C:
/* 8045FE8C 0042944C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045FE90 00429450  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045FE94 00429454  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045FE98 00429458  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8045FE9C 0042945C  7C 08 03 A6 */	mtlr r0
/* 8045FEA0 00429460  38 21 00 20 */	addi r1, r1, 0x20
/* 8045FEA4 00429464  4E 80 00 20 */	blr 
.endfn func_8045FDB8

#r4: StaticArcFile struct
.fn __ct__CLibStaticData_CItem, global
/* 8045FEA8 00429468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045FEAC 0042946C  7C 08 02 A6 */	mflr r0
/* 8045FEB0 00429470  3C A0 80 57 */	lis r5, __vt__CLibStaticData_CItem@ha
/* 8045FEB4 00429474  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045FEB8 00429478  38 00 00 00 */	li r0, 0
/* 8045FEBC 0042947C  38 A5 0D 08 */	addi r5, r5, __vt__CLibStaticData_CItem@l
/* 8045FEC0 00429480  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045FEC4 00429484  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045FEC8 00429488  7C 9E 23 78 */	mr r30, r4
/* 8045FECC 0042948C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8045FED0 00429490  7C 7D 1B 78 */	mr r29, r3
/* 8045FED4 00429494  90 A3 00 00 */	stw r5, 0(r3)
/* 8045FED8 00429498  90 83 00 04 */	stw r4, 4(r3)
/* 8045FEDC 0042949C  90 03 00 08 */	stw r0, 8(r3)
/* 8045FEE0 004294A0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8045FEE4 004294A4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8045FEE8 004294A8  98 03 00 14 */	stb r0, 0x14(r3)
/* 8045FEEC 004294AC  4B FD 44 B5 */	bl func_804343A0
/* 8045FEF0 004294B0  80 1E 00 08 */	lwz r0, 8(r30)
/* 8045FEF4 004294B4  7C 7F 1B 78 */	mr r31, r3
/* 8045FEF8 004294B8  2C 00 00 00 */	cmpwi r0, 0
/* 8045FEFC 004294BC  40 82 00 10 */	bne .L_8045FF0C
/* 8045FF00 004294C0  4B FD 44 99 */	bl func_80434398
/* 8045FF04 004294C4  7C 7F 1B 78 */	mr r31, r3
/* 8045FF08 004294C8  48 00 00 14 */	b .L_8045FF1C
.L_8045FF0C:
/* 8045FF0C 004294CC  2C 00 00 02 */	cmpwi r0, 2
/* 8045FF10 004294D0  40 82 00 0C */	bne .L_8045FF1C
/* 8045FF14 004294D4  4B FD 44 95 */	bl func_804343A8
/* 8045FF18 004294D8  7C 7F 1B 78 */	mr r31, r3
.L_8045FF1C:
/* 8045FF1C 004294DC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8045FF20 004294E0  38 9D 00 0C */	addi r4, r29, 0xc
/* 8045FF24 004294E4  38 BD 00 10 */	addi r5, r29, 0x10
/* 8045FF28 004294E8  48 07 DE CD */	bl func_804DDDF4
/* 8045FF2C 004294EC  2C 03 00 00 */	cmpwi r3, 0
/* 8045FF30 004294F0  41 82 00 30 */	beq .L_8045FF60
/* 8045FF34 004294F4  38 00 00 01 */	li r0, 1
/* 8045FF38 004294F8  98 1D 00 14 */	stb r0, 0x14(r29)
/* 8045FF3C 004294FC  80 7D 00 04 */	lwz r3, 4(r29)
/* 8045FF40 00429500  81 83 00 0C */	lwz r12, 0xc(r3)
/* 8045FF44 00429504  2C 0C 00 00 */	cmpwi r12, 0
/* 8045FF48 00429508  41 82 00 34 */	beq .L_8045FF7C
/* 8045FF4C 0042950C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8045FF50 00429510  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 8045FF54 00429514  7D 89 03 A6 */	mtctr r12
/* 8045FF58 00429518  4E 80 04 21 */	bctrl 
/* 8045FF5C 0042951C  48 00 00 20 */	b .L_8045FF7C
.L_8045FF60:
/* 8045FF60 00429520  80 9E 00 04 */	lwz r4, 4(r30)
/* 8045FF64 00429524  7F E3 FB 78 */	mr r3, r31
/* 8045FF68 00429528  7F A5 EB 78 */	mr r5, r29
/* 8045FF6C 0042952C  38 C0 00 00 */	li r6, 0
/* 8045FF70 00429530  38 E0 00 00 */	li r7, 0
/* 8045FF74 00429534  4B FE E8 21 */	bl func_8044E794
/* 8045FF78 00429538  90 7D 00 08 */	stw r3, 8(r29)
.L_8045FF7C:
/* 8045FF7C 0042953C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045FF80 00429540  7F A3 EB 78 */	mr r3, r29
/* 8045FF84 00429544  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045FF88 00429548  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8045FF8C 0042954C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045FF90 00429550  7C 08 03 A6 */	mtlr r0
/* 8045FF94 00429554  38 21 00 20 */	addi r1, r1, 0x20
/* 8045FF98 00429558  4E 80 00 20 */	blr 
.endfn __ct__CLibStaticData_CItem

.fn __dt__CLibStaticData_CItem, global
/* 8045FF9C 0042955C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045FFA0 00429560  7C 08 02 A6 */	mflr r0
/* 8045FFA4 00429564  2C 03 00 00 */	cmpwi r3, 0
/* 8045FFA8 00429568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045FFAC 0042956C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045FFB0 00429570  7C 9F 23 78 */	mr r31, r4
/* 8045FFB4 00429574  93 C1 00 08 */	stw r30, 8(r1)
/* 8045FFB8 00429578  7C 7E 1B 78 */	mr r30, r3
/* 8045FFBC 0042957C  41 82 00 88 */	beq .L_80460044
/* 8045FFC0 00429580  80 03 00 08 */	lwz r0, 8(r3)
/* 8045FFC4 00429584  3C 80 80 57 */	lis r4, __vt__CLibStaticData_CItem@ha
/* 8045FFC8 00429588  38 84 0D 08 */	addi r4, r4, __vt__CLibStaticData_CItem@l
/* 8045FFCC 0042958C  90 83 00 00 */	stw r4, 0(r3)
/* 8045FFD0 00429590  2C 00 00 00 */	cmpwi r0, 0
/* 8045FFD4 00429594  41 82 00 14 */	beq .L_8045FFE8
/* 8045FFD8 00429598  7C 03 03 78 */	mr r3, r0
/* 8045FFDC 0042959C  4B FE F1 3D */	bl func_8044F118
/* 8045FFE0 004295A0  38 00 00 00 */	li r0, 0
/* 8045FFE4 004295A4  90 1E 00 08 */	stw r0, 8(r30)
.L_8045FFE8:
/* 8045FFE8 004295A8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8045FFEC 004295AC  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8045FFF0 004295B0  2C 0C 00 00 */	cmpwi r12, 0
/* 8045FFF4 004295B4  41 82 00 14 */	beq .L_80460008
/* 8045FFF8 004295B8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8045FFFC 004295BC  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80460000 004295C0  7D 89 03 A6 */	mtctr r12
/* 80460004 004295C4  4E 80 04 21 */	bctrl 
.L_80460008:
/* 80460008 004295C8  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 8046000C 004295CC  2C 00 00 00 */	cmpwi r0, 0
/* 80460010 004295D0  41 82 00 0C */	beq .L_8046001C
/* 80460014 004295D4  38 00 00 00 */	li r0, 0
/* 80460018 004295D8  90 1E 00 0C */	stw r0, 0xc(r30)
.L_8046001C:
/* 8046001C 004295DC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80460020 004295E0  2C 03 00 00 */	cmpwi r3, 0
/* 80460024 004295E4  41 82 00 10 */	beq .L_80460034
/* 80460028 004295E8  4B FD 44 B1 */	bl func_804344D8
/* 8046002C 004295EC  38 00 00 00 */	li r0, 0
/* 80460030 004295F0  90 1E 00 0C */	stw r0, 0xc(r30)
.L_80460034:
/* 80460034 004295F4  2C 1F 00 00 */	cmpwi r31, 0
/* 80460038 004295F8  40 81 00 0C */	ble .L_80460044
/* 8046003C 004295FC  7F C3 F3 78 */	mr r3, r30
/* 80460040 00429600  4B FD 4B ED */	bl __dl__FPv
.L_80460044:
/* 80460044 00429604  7F C3 F3 78 */	mr r3, r30
/* 80460048 00429608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046004C 0042960C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80460050 00429610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460054 00429614  7C 08 03 A6 */	mtlr r0
/* 80460058 00429618  38 21 00 10 */	addi r1, r1, 0x10
/* 8046005C 0042961C  4E 80 00 20 */	blr 
.endfn __dt__CLibStaticData_CItem

.fn CLibStaticData_OnInit, global
/* 80460060 00429620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460064 00429624  7C 08 02 A6 */	mflr r0
/* 80460068 00429628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046006C 0042962C  80 04 00 00 */	lwz r0, 0(r4)
/* 80460070 00429630  2C 00 00 01 */	cmpwi r0, 1
/* 80460074 00429634  40 82 00 58 */	bne .L_804600CC
/* 80460078 00429638  80 A3 00 08 */	lwz r5, 8(r3)
/* 8046007C 0042963C  80 04 00 04 */	lwz r0, 4(r4)
/* 80460080 00429640  7C 00 28 40 */	cmplw r0, r5
/* 80460084 00429644  40 82 00 40 */	bne .L_804600C4
/* 80460088 00429648  80 C5 00 04 */	lwz r6, 4(r5)
/* 8046008C 0042964C  38 00 00 00 */	li r0, 0
/* 80460090 00429650  90 05 00 04 */	stw r0, 4(r5)
/* 80460094 00429654  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80460098 00429658  80 83 00 08 */	lwz r4, 8(r3)
/* 8046009C 0042965C  80 A3 00 04 */	lwz r5, 4(r3)
/* 804600A0 00429660  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 804600A4 00429664  90 83 00 10 */	stw r4, 0x10(r3)
/* 804600A8 00429668  90 03 00 08 */	stw r0, 8(r3)
/* 804600AC 0042966C  81 85 00 0C */	lwz r12, 0xc(r5)
/* 804600B0 00429670  2C 0C 00 00 */	cmpwi r12, 0
/* 804600B4 00429674  41 82 00 10 */	beq .L_804600C4
/* 804600B8 00429678  7C C3 33 78 */	mr r3, r6
/* 804600BC 0042967C  7D 89 03 A6 */	mtctr r12
/* 804600C0 00429680  4E 80 04 21 */	bctrl 
.L_804600C4:
/* 804600C4 00429684  38 60 00 01 */	li r3, 1
/* 804600C8 00429688  48 00 00 08 */	b .L_804600D0
.L_804600CC:
/* 804600CC 0042968C  38 60 00 00 */	li r3, 0
.L_804600D0:
/* 804600D0 00429690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804600D4 00429694  7C 08 03 A6 */	mtlr r0
/* 804600D8 00429698  38 21 00 10 */	addi r1, r1, 0x10
/* 804600DC 0042969C  4E 80 00 20 */	blr 
.endfn CLibStaticData_OnInit


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CLibStaticData_typestr, global
	.asciz "CLibStaticData"
	.balign 4
.endobj CLibStaticData_typestr

.obj CLibStaticData_CItem_typestr, global
	.asciz "CLibStaticData::CItem"
	.balign 4
.endobj CLibStaticData_CItem_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CLibStaticData, global
	.4byte __RTTI__CLibStaticData
	.4byte 0
	.4byte __dt__CLibStaticData
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnInit
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8045FC84
	.4byte func_8045FDB8
	.4byte func_80039E30
.endobj __vt__CLibStaticData

.obj CLibStaticData_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CLibStaticData_hierarchy


.obj __vt__CLibStaticData_CItem, global
	.4byte __RTTI__CLibStaticData_CItem
	.4byte 0
	.4byte __dt__CLibStaticData_CItem
	.4byte IWorkEvent_WorkEvent1
	.4byte CLibStaticData_OnInit
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
.endobj __vt__CLibStaticData_CItem

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CLibStaticData, global
	.4byte CLibStaticData_typestr
	.4byte CLibStaticData_hierarchy
.endobj __RTTI__CLibStaticData

.obj __RTTI__CLibStaticData_CItem, global
	.4byte CLibStaticData_CItem_typestr
	.4byte 0
.endobj __RTTI__CLibStaticData_CItem


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667FF0, global
	.skip 0x4
.endobj lbl_80667FF0

.obj lbl_80667FF4, global
	.skip 0x4
.endobj lbl_80667FF4

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D89C", local
.hidden "@etb_8001D89C"
	.4byte 0x10080000
	.4byte 0x0000005C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x000001C8
	.4byte __dt__8045F9B8
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__CWorkThread
.endobj "@etb_8001D89C"

.obj "@etb_8001D8C4", local
.hidden "@etb_8001D8C4"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001D8C4"

.obj "@etb_8001D8CC", local
.hidden "@etb_8001D8CC"
	.4byte 0x18080000
	.4byte 0x00000080
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8780001D
	.4byte 0x000001C8
	.4byte __dt__8045F9B8
.endobj "@etb_8001D8CC"

.obj "@etb_8001D8E8", local
.hidden "@etb_8001D8E8"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8001D8E8"

.obj "@etb_8001D8F0", local
.hidden "@etb_8001D8F0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D8F0"

.obj "@etb_8001D8F8", local
.hidden "@etb_8001D8F8"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001D8F8"

.obj "@etb_8001D900", local
.hidden "@etb_8001D900"
	.4byte 0x18080000
	.4byte 0x00000048
	.4byte 0x00220010
	.4byte 0x00000000
	.4byte 0x8680001D
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_8001D900"

.obj "@etb_8001D91C", local
.hidden "@etb_8001D91C"
	.4byte 0x10080000
	.4byte 0x00000044
	.4byte 0x00130010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_8001D91C"

.obj "@etb_8001D938", local
.hidden "@etb_8001D938"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001D938"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80035498", local
.hidden "@eti_80035498"
	.4byte __ct__CLibStaticData
	.4byte 0x00000088
	.4byte "@etb_8001D89C"
.endobj "@eti_80035498"

.obj "@eti_800354A4", local
.hidden "@eti_800354A4"
	.4byte __dt__8045F9B8
	.4byte 0x00000098
	.4byte "@etb_8001D8C4"
.endobj "@eti_800354A4"

.obj "@eti_800354B0", local
.hidden "@eti_800354B0"
	.4byte __dt__CLibStaticData
	.4byte 0x000000B0
	.4byte "@etb_8001D8CC"
.endobj "@eti_800354B0"

.obj "@eti_800354BC", local
.hidden "@eti_800354BC"
	.4byte func_8045FBB8
	.4byte 0x000000CC
	.4byte "@etb_8001D8E8"
.endobj "@eti_800354BC"

.obj "@eti_800354C8", local
.hidden "@eti_800354C8"
	.4byte func_8045FC84
	.4byte 0x00000134
	.4byte "@etb_8001D8F0"
.endobj "@eti_800354C8"

.obj "@eti_800354D4", local
.hidden "@eti_800354D4"
	.4byte func_8045FDB8
	.4byte 0x000000F0
	.4byte "@etb_8001D8F8"
.endobj "@eti_800354D4"

.obj "@eti_800354E0", local
.hidden "@eti_800354E0"
	.4byte __ct__CLibStaticData_CItem
	.4byte 0x000000F4
	.4byte "@etb_8001D900"
.endobj "@eti_800354E0"

.obj "@eti_800354EC", local
.hidden "@eti_800354EC"
	.4byte __dt__CLibStaticData_CItem
	.4byte 0x000000C4
	.4byte "@etb_8001D91C"
.endobj "@eti_800354EC"

.obj "@eti_800354F8", local
.hidden "@eti_800354F8"
	.4byte CLibStaticData_OnInit
	.4byte 0x00000080
	.4byte "@etb_8001D938"
.endobj "@eti_800354F8"
