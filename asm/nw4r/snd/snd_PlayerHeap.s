.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__Q44nw4r3snd6detail10PlayerHeapFv, global
/* 80418968 003E1F28  3C 80 80 57 */	lis r4, lbl_8056E3C8@ha
/* 8041896C 003E1F2C  38 00 00 00 */	li r0, 0
/* 80418970 003E1F30  38 84 E3 C8 */	addi r4, r4, lbl_8056E3C8@l
/* 80418974 003E1F34  90 03 00 04 */	stw r0, 4(r3)
/* 80418978 003E1F38  90 83 00 00 */	stw r4, 0(r3)
/* 8041897C 003E1F3C  90 03 00 08 */	stw r0, 8(r3)
/* 80418980 003E1F40  90 03 00 0C */	stw r0, 0xc(r3)
/* 80418984 003E1F44  90 03 00 10 */	stw r0, 0x10(r3)
/* 80418988 003E1F48  90 03 00 14 */	stw r0, 0x14(r3)
/* 8041898C 003E1F4C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80418990 003E1F50  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80418994 003E1F54  4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail10PlayerHeapFv


.fn __dt__Q44nw4r3snd6detail10PlayerHeapFv, global
/* 80418998 003E1F58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041899C 003E1F5C  7C 08 02 A6 */	mflr r0
/* 804189A0 003E1F60  2C 03 00 00 */	cmpwi r3, 0
/* 804189A4 003E1F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 804189A8 003E1F68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804189AC 003E1F6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804189B0 003E1F70  7C 9E 23 78 */	mr r30, r4
/* 804189B4 003E1F74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804189B8 003E1F78  7C 7D 1B 78 */	mr r29, r3
/* 804189BC 003E1F7C  41 82 00 80 */	beq .L_80418A3C
/* 804189C0 003E1F80  3C 80 80 57 */	lis r4, lbl_8056E3C8@ha
/* 804189C4 003E1F84  38 84 E3 C8 */	addi r4, r4, lbl_8056E3C8@l
/* 804189C8 003E1F88  90 83 00 00 */	stw r4, 0(r3)
/* 804189CC 003E1F8C  48 00 89 19 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 804189D0 003E1F90  38 63 03 54 */	addi r3, r3, 0x354
/* 804189D4 003E1F94  4B F4 12 8D */	bl OSLockMutex
/* 804189D8 003E1F98  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 804189DC 003E1F9C  4B FF C6 59 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 804189E0 003E1FA0  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 804189E4 003E1FA4  7F E4 FB 78 */	mr r4, r31
/* 804189E8 003E1FA8  38 C0 00 00 */	li r6, 0
/* 804189EC 003E1FAC  7C BF 00 50 */	subf r5, r31, r0
/* 804189F0 003E1FB0  4B FF C7 5D */	bl Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
/* 804189F4 003E1FB4  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 804189F8 003E1FB8  4B FF C6 3D */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 804189FC 003E1FBC  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80418A00 003E1FC0  7F E4 FB 78 */	mr r4, r31
/* 80418A04 003E1FC4  38 C0 00 00 */	li r6, 0
/* 80418A08 003E1FC8  7C BF 00 50 */	subf r5, r31, r0
/* 80418A0C 003E1FCC  4B FF C8 7D */	bl DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
/* 80418A10 003E1FD0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80418A14 003E1FD4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80418A18 003E1FD8  48 00 88 CD */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 80418A1C 003E1FDC  38 63 03 54 */	addi r3, r3, 0x354
/* 80418A20 003E1FE0  4B F4 13 21 */	bl OSUnlockMutex
/* 80418A24 003E1FE4  38 00 00 00 */	li r0, 0
/* 80418A28 003E1FE8  2C 1E 00 00 */	cmpwi r30, 0
/* 80418A2C 003E1FEC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80418A30 003E1FF0  40 81 00 0C */	ble .L_80418A3C
/* 80418A34 003E1FF4  7F A3 EB 78 */	mr r3, r29
/* 80418A38 003E1FF8  48 01 C1 F5 */	bl __dl__FPv
.L_80418A3C:
/* 80418A3C 003E1FFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80418A40 003E2000  7F A3 EB 78 */	mr r3, r29
/* 80418A44 003E2004  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80418A48 003E2008  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80418A4C 003E200C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80418A50 003E2010  7C 08 03 A6 */	mtlr r0
/* 80418A54 003E2014  38 21 00 20 */	addi r1, r1, 0x20
/* 80418A58 003E2018  4E 80 00 20 */	blr 
.endfn __dt__Q44nw4r3snd6detail10PlayerHeapFv

.fn Create__Q44nw4r3snd6detail10PlayerHeapFPvUl, global
/* 80418A5C 003E201C  38 04 00 1F */	addi r0, r4, 0x1f
/* 80418A60 003E2020  7C 85 22 14 */	add r4, r5, r4
/* 80418A64 003E2024  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80418A68 003E2028  7C 00 20 40 */	cmplw r0, r4
/* 80418A6C 003E202C  40 81 00 0C */	ble .L_80418A78
/* 80418A70 003E2030  38 60 00 00 */	li r3, 0
/* 80418A74 003E2034  4E 80 00 20 */	blr
.L_80418A78:
/* 80418A78 003E2038  90 03 00 0C */	stw r0, 0xc(r3)
/* 80418A7C 003E203C  90 83 00 10 */	stw r4, 0x10(r3)
/* 80418A80 003E2040  90 03 00 14 */	stw r0, 0x14(r3)
/* 80418A84 003E2044  38 60 00 01 */	li r3, 1
/* 80418A88 003E2048  4E 80 00 20 */	blr 
.endfn Create__Q44nw4r3snd6detail10PlayerHeapFPvUl

.fn Alloc__Q44nw4r3snd6detail10PlayerHeapFUl, global
/* 80418A8C 003E204C  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 80418A90 003E2050  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80418A94 003E2054  7C 84 2A 14 */	add r4, r4, r5
/* 80418A98 003E2058  7C 04 00 40 */	cmplw r4, r0
/* 80418A9C 003E205C  40 81 00 0C */	ble .L_80418AA8
/* 80418AA0 003E2060  38 60 00 00 */	li r3, 0
/* 80418AA4 003E2064  4E 80 00 20 */	blr
.L_80418AA8:
/* 80418AA8 003E2068  38 04 00 1F */	addi r0, r4, 0x1f
/* 80418AAC 003E206C  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80418AB0 003E2070  90 03 00 14 */	stw r0, 0x14(r3)
/* 80418AB4 003E2074  7C A3 2B 78 */	mr r3, r5
/* 80418AB8 003E2078  4E 80 00 20 */	blr 
.endfn Alloc__Q44nw4r3snd6detail10PlayerHeapFUl

.fn Clear__Q44nw4r3snd6detail10PlayerHeapFv, global
/* 80418ABC 003E207C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80418AC0 003E2080  7C 08 02 A6 */	mflr r0
/* 80418AC4 003E2084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80418AC8 003E2088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80418ACC 003E208C  93 C1 00 08 */	stw r30, 8(r1)
/* 80418AD0 003E2090  7C 7E 1B 78 */	mr r30, r3
/* 80418AD4 003E2094  48 00 88 11 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 80418AD8 003E2098  38 63 03 54 */	addi r3, r3, 0x354
/* 80418ADC 003E209C  4B F4 11 85 */	bl OSLockMutex
/* 80418AE0 003E20A0  83 FE 00 0C */	lwz r31, 0xc(r30)
/* 80418AE4 003E20A4  4B FF C5 51 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 80418AE8 003E20A8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80418AEC 003E20AC  7F E4 FB 78 */	mr r4, r31
/* 80418AF0 003E20B0  38 C0 00 00 */	li r6, 0
/* 80418AF4 003E20B4  7C BF 00 50 */	subf r5, r31, r0
/* 80418AF8 003E20B8  4B FF C6 55 */	bl Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
/* 80418AFC 003E20BC  83 FE 00 0C */	lwz r31, 0xc(r30)
/* 80418B00 003E20C0  4B FF C5 35 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 80418B04 003E20C4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80418B08 003E20C8  7F E4 FB 78 */	mr r4, r31
/* 80418B0C 003E20CC  38 C0 00 00 */	li r6, 0
/* 80418B10 003E20D0  7C BF 00 50 */	subf r5, r31, r0
/* 80418B14 003E20D4  4B FF C7 75 */	bl DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
/* 80418B18 003E20D8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80418B1C 003E20DC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80418B20 003E20E0  48 00 87 C5 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 80418B24 003E20E4  38 63 03 54 */	addi r3, r3, 0x354
/* 80418B28 003E20E8  4B F4 12 19 */	bl OSUnlockMutex
/* 80418B2C 003E20EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80418B30 003E20F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80418B34 003E20F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80418B38 003E20F8  7C 08 03 A6 */	mtlr r0
/* 80418B3C 003E20FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80418B40 003E2100  4E 80 00 20 */	blr 
.endfn Clear__Q44nw4r3snd6detail10PlayerHeapFv

.fn GetFreeSize__Q44nw4r3snd6detail10PlayerHeapCFv, global
/* 80418B44 003E2104  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80418B48 003E2108  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80418B4C 003E210C  7C 64 00 50 */	subf r3, r4, r0
/* 80418B50 003E2110  4E 80 00 20 */	blr 
.endfn GetFreeSize__Q44nw4r3snd6detail10PlayerHeapCFv

.fn AttachSound__Q44nw4r3snd6detail10PlayerHeapFPQ44nw4r3snd6detail10BasicSound, global
/* 80418B54 003E2114  90 83 00 04 */	stw r4, 4(r3)
/* 80418B58 003E2118  4E 80 00 20 */	blr 
.endfn AttachSound__Q44nw4r3snd6detail10PlayerHeapFPQ44nw4r3snd6detail10BasicSound

.fn DetachSound__Q44nw4r3snd6detail10PlayerHeapFPQ44nw4r3snd6detail10BasicSound, global
/* 80418B5C 003E211C  38 00 00 00 */	li r0, 0
/* 80418B60 003E2120  90 03 00 04 */	stw r0, 4(r3)
/* 80418B64 003E2124  4E 80 00 20 */	blr 
.endfn DetachSound__Q44nw4r3snd6detail10PlayerHeapFPQ44nw4r3snd6detail10BasicSound

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8056E3C8, global
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail10PlayerHeapFv
	.4byte Alloc__Q44nw4r3snd6detail10PlayerHeapFUl
.endobj lbl_8056E3C8