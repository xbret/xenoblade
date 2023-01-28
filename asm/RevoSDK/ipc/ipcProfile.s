.include "macros.inc"
.file "RevoSDK/ipc/ipcProfile.o"

# 0x803448E0 - 0x80344AC0
.text
.balign 4

.fn IPCiProfInit, global
/* 803448E0 0030DEA0  3C A0 80 5D */	lis r5, IpcReqPtrArray@ha
/* 803448E4 0030DEA4  3C C0 80 5D */	lis r6, IpcFdArray@ha
/* 803448E8 0030DEA8  38 80 00 00 */	li r4, 0x0
/* 803448EC 0030DEAC  38 00 00 02 */	li r0, 0x2
/* 803448F0 0030DEB0  90 8D B8 10 */	stw r4, IpcNumPendingReqs@sda21(r13)
/* 803448F4 0030DEB4  38 A5 E5 80 */	addi r5, r5, IpcReqPtrArray@l
/* 803448F8 0030DEB8  38 C6 E5 00 */	addi r6, r6, IpcFdArray@l
/* 803448FC 0030DEBC  38 60 FF FF */	li r3, -0x1
/* 80344900 0030DEC0  90 8D B8 14 */	stw r4, IpcNumUnIssuedReqs@sda21(r13)
/* 80344904 0030DEC4  7C 09 03 A6 */	mtctr r0
.L_80344908:
/* 80344908 0030DEC8  90 85 00 00 */	stw r4, 0x0(r5)
/* 8034490C 0030DECC  90 66 00 00 */	stw r3, 0x0(r6)
/* 80344910 0030DED0  90 85 00 04 */	stw r4, 0x4(r5)
/* 80344914 0030DED4  90 66 00 04 */	stw r3, 0x4(r6)
/* 80344918 0030DED8  90 85 00 08 */	stw r4, 0x8(r5)
/* 8034491C 0030DEDC  90 66 00 08 */	stw r3, 0x8(r6)
/* 80344920 0030DEE0  90 85 00 0C */	stw r4, 0xc(r5)
/* 80344924 0030DEE4  90 66 00 0C */	stw r3, 0xc(r6)
/* 80344928 0030DEE8  90 85 00 10 */	stw r4, 0x10(r5)
/* 8034492C 0030DEEC  90 66 00 10 */	stw r3, 0x10(r6)
/* 80344930 0030DEF0  90 85 00 14 */	stw r4, 0x14(r5)
/* 80344934 0030DEF4  90 66 00 14 */	stw r3, 0x14(r6)
/* 80344938 0030DEF8  90 85 00 18 */	stw r4, 0x18(r5)
/* 8034493C 0030DEFC  90 66 00 18 */	stw r3, 0x18(r6)
/* 80344940 0030DF00  90 85 00 1C */	stw r4, 0x1c(r5)
/* 80344944 0030DF04  90 66 00 1C */	stw r3, 0x1c(r6)
/* 80344948 0030DF08  90 85 00 20 */	stw r4, 0x20(r5)
/* 8034494C 0030DF0C  90 66 00 20 */	stw r3, 0x20(r6)
/* 80344950 0030DF10  90 85 00 24 */	stw r4, 0x24(r5)
/* 80344954 0030DF14  90 66 00 24 */	stw r3, 0x24(r6)
/* 80344958 0030DF18  90 85 00 28 */	stw r4, 0x28(r5)
/* 8034495C 0030DF1C  90 66 00 28 */	stw r3, 0x28(r6)
/* 80344960 0030DF20  90 85 00 2C */	stw r4, 0x2c(r5)
/* 80344964 0030DF24  90 66 00 2C */	stw r3, 0x2c(r6)
/* 80344968 0030DF28  90 85 00 30 */	stw r4, 0x30(r5)
/* 8034496C 0030DF2C  90 66 00 30 */	stw r3, 0x30(r6)
/* 80344970 0030DF30  90 85 00 34 */	stw r4, 0x34(r5)
/* 80344974 0030DF34  90 66 00 34 */	stw r3, 0x34(r6)
/* 80344978 0030DF38  90 85 00 38 */	stw r4, 0x38(r5)
/* 8034497C 0030DF3C  90 66 00 38 */	stw r3, 0x38(r6)
/* 80344980 0030DF40  90 85 00 3C */	stw r4, 0x3c(r5)
/* 80344984 0030DF44  38 A5 00 40 */	addi r5, r5, 0x40
/* 80344988 0030DF48  90 66 00 3C */	stw r3, 0x3c(r6)
/* 8034498C 0030DF4C  38 C6 00 40 */	addi r6, r6, 0x40
/* 80344990 0030DF50  42 00 FF 78 */	bdnz .L_80344908
/* 80344994 0030DF54  4E 80 00 20 */	blr
.endfn IPCiProfInit
/* 80344998 0030DF58  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034499C 0030DF5C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn IPCiProfQueueReq, global
/* 803449A0 0030DF60  80 CD B8 10 */	lwz r6, IpcNumPendingReqs@sda21(r13)
/* 803449A4 0030DF64  3D 00 80 5D */	lis r8, IpcReqPtrArray@ha
/* 803449A8 0030DF68  80 AD B8 14 */	lwz r5, IpcNumUnIssuedReqs@sda21(r13)
/* 803449AC 0030DF6C  3D 20 80 5D */	lis r9, IpcFdArray@ha
/* 803449B0 0030DF70  38 C6 00 01 */	addi r6, r6, 0x1
/* 803449B4 0030DF74  38 00 00 20 */	li r0, 0x20
/* 803449B8 0030DF78  38 A5 00 01 */	addi r5, r5, 0x1
/* 803449BC 0030DF7C  90 CD B8 10 */	stw r6, IpcNumPendingReqs@sda21(r13)
/* 803449C0 0030DF80  39 08 E5 80 */	addi r8, r8, IpcReqPtrArray@l
/* 803449C4 0030DF84  39 29 E5 00 */	addi r9, r9, IpcFdArray@l
/* 803449C8 0030DF88  90 AD B8 14 */	stw r5, IpcNumUnIssuedReqs@sda21(r13)
/* 803449CC 0030DF8C  38 E0 00 00 */	li r7, 0x0
/* 803449D0 0030DF90  7C 09 03 A6 */	mtctr r0
/* 803449D4 0030DF94  60 00 00 00 */	nop
.L_803449D8:
/* 803449D8 0030DF98  80 08 00 00 */	lwz r0, 0x0(r8)
/* 803449DC 0030DF9C  2C 00 00 00 */	cmpwi r0, 0x0
/* 803449E0 0030DFA0  40 82 00 30 */	bne .L_80344A10
/* 803449E4 0030DFA4  80 09 00 00 */	lwz r0, 0x0(r9)
/* 803449E8 0030DFA8  2C 00 FF FF */	cmpwi r0, -0x1
/* 803449EC 0030DFAC  40 82 00 24 */	bne .L_80344A10
/* 803449F0 0030DFB0  3C C0 80 5D */	lis r6, IpcReqPtrArray@ha
/* 803449F4 0030DFB4  3C A0 80 5D */	lis r5, IpcFdArray@ha
/* 803449F8 0030DFB8  54 E0 10 3A */	slwi r0, r7, 2
/* 803449FC 0030DFBC  38 C6 E5 80 */	addi r6, r6, IpcReqPtrArray@l
/* 80344A00 0030DFC0  38 A5 E5 00 */	addi r5, r5, IpcFdArray@l
/* 80344A04 0030DFC4  7C 66 01 2E */	stwx r3, r6, r0
/* 80344A08 0030DFC8  7C 85 01 2E */	stwx r4, r5, r0
/* 80344A0C 0030DFCC  4E 80 00 20 */	blr
.L_80344A10:
/* 80344A10 0030DFD0  39 08 00 04 */	addi r8, r8, 0x4
/* 80344A14 0030DFD4  39 29 00 04 */	addi r9, r9, 0x4
/* 80344A18 0030DFD8  38 E7 00 01 */	addi r7, r7, 0x1
/* 80344A1C 0030DFDC  42 00 FF BC */	bdnz .L_803449D8
/* 80344A20 0030DFE0  4E 80 00 20 */	blr
.endfn IPCiProfQueueReq
/* 80344A24 0030DFE4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80344A28 0030DFE8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80344A2C 0030DFEC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn IPCiProfAck, global
/* 80344A30 0030DFF0  80 6D B8 14 */	lwz r3, IpcNumUnIssuedReqs@sda21(r13)
/* 80344A34 0030DFF4  38 03 FF FF */	addi r0, r3, -0x1
/* 80344A38 0030DFF8  90 0D B8 14 */	stw r0, IpcNumUnIssuedReqs@sda21(r13)
/* 80344A3C 0030DFFC  4E 80 00 20 */	blr
.endfn IPCiProfAck

.fn IPCiProfReply, global
/* 80344A40 0030E000  80 AD B8 10 */	lwz r5, IpcNumPendingReqs@sda21(r13)
/* 80344A44 0030E004  3C C0 80 5D */	lis r6, IpcReqPtrArray@ha
/* 80344A48 0030E008  3C E0 80 5D */	lis r7, IpcFdArray@ha
/* 80344A4C 0030E00C  38 00 00 20 */	li r0, 0x20
/* 80344A50 0030E010  38 A5 FF FF */	addi r5, r5, -0x1
/* 80344A54 0030E014  90 AD B8 10 */	stw r5, IpcNumPendingReqs@sda21(r13)
/* 80344A58 0030E018  38 C6 E5 80 */	addi r6, r6, IpcReqPtrArray@l
/* 80344A5C 0030E01C  38 E7 E5 00 */	addi r7, r7, IpcFdArray@l
/* 80344A60 0030E020  38 A0 00 00 */	li r5, 0x0
/* 80344A64 0030E024  7C 09 03 A6 */	mtctr r0
.L_80344A68:
/* 80344A68 0030E028  80 06 00 00 */	lwz r0, 0x0(r6)
/* 80344A6C 0030E02C  7C 03 00 40 */	cmplw r3, r0
/* 80344A70 0030E030  40 82 00 38 */	bne .L_80344AA8
/* 80344A74 0030E034  80 07 00 00 */	lwz r0, 0x0(r7)
/* 80344A78 0030E038  7C 04 00 00 */	cmpw r4, r0
/* 80344A7C 0030E03C  40 82 00 2C */	bne .L_80344AA8
/* 80344A80 0030E040  3C 80 80 5D */	lis r4, IpcReqPtrArray@ha
/* 80344A84 0030E044  3C 60 80 5D */	lis r3, IpcFdArray@ha
/* 80344A88 0030E048  54 A6 10 3A */	slwi r6, r5, 2
/* 80344A8C 0030E04C  38 A0 00 00 */	li r5, 0x0
/* 80344A90 0030E050  38 84 E5 80 */	addi r4, r4, IpcReqPtrArray@l
/* 80344A94 0030E054  38 63 E5 00 */	addi r3, r3, IpcFdArray@l
/* 80344A98 0030E058  38 00 FF FF */	li r0, -0x1
/* 80344A9C 0030E05C  7C A4 31 2E */	stwx r5, r4, r6
/* 80344AA0 0030E060  7C 03 31 2E */	stwx r0, r3, r6
/* 80344AA4 0030E064  4E 80 00 20 */	blr
.L_80344AA8:
/* 80344AA8 0030E068  38 C6 00 04 */	addi r6, r6, 0x4
/* 80344AAC 0030E06C  38 E7 00 04 */	addi r7, r7, 0x4
/* 80344AB0 0030E070  38 A5 00 01 */	addi r5, r5, 0x1
/* 80344AB4 0030E074  42 00 FF B4 */	bdnz .L_80344A68
/* 80344AB8 0030E078  4E 80 00 20 */	blr
.endfn IPCiProfReply
/* 80344ABC 0030E07C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# 0x805CE500 - 0x805CE600
.section .bss, "wa", @nobits
.balign 8

.obj IpcFdArray, local
	.skip 0x80
.endobj IpcFdArray

.obj IpcReqPtrArray, local
	.skip 0x80
.endobj IpcReqPtrArray

# 0x80667990 - 0x80667998
.section .sbss, "wa", @nobits
.balign 8

.obj IpcNumPendingReqs, local
	.skip 0x4
.endobj IpcNumPendingReqs

.obj IpcNumUnIssuedReqs, local
	.skip 0x4
.endobj IpcNumUnIssuedReqs
