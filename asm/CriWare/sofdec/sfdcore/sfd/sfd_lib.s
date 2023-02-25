.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SFD_IsVersionCompatible, global
/* 803C0A60 0038A020  38 04 C6 78 */	addi r0, r4, -14728
/* 803C0A64 0038A024  7C 00 00 34 */	cntlzw r0, r0
/* 803C0A68 0038A028  54 03 D9 7E */	srwi r3, r0, 5
/* 803C0A6C 0038A02C  4E 80 00 20 */	blr 
.endfn SFD_IsVersionCompatible

.fn SFD_Init, global
/* 803C0A70 0038A030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C0A74 0038A034  7C 08 02 A6 */	mflr r0
/* 803C0A78 0038A038  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C0A7C 0038A03C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C0A80 0038A040  3F E0 80 61 */	lis r31, lbl_8060A2D8@ha
/* 803C0A84 0038A044  3B FF A2 D8 */	addi r31, r31, lbl_8060A2D8@l
/* 803C0A88 0038A048  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C0A8C 0038A04C  7C 7E 1B 78 */	mr r30, r3
/* 803C0A90 0038A050  80 BF 00 00 */	lwz r5, 0(r31)
/* 803C0A94 0038A054  2C 05 00 00 */	cmpwi r5, 0
/* 803C0A98 0038A058  41 82 00 2C */	beq .L_803C0AC4
/* 803C0A9C 0038A05C  3C 80 80 57 */	lis r4, lbl_8056B5B8@ha
/* 803C0AA0 0038A060  38 03 00 04 */	addi r0, r3, 4
/* 803C0AA4 0038A064  38 84 B5 B8 */	addi r4, r4, lbl_8056B5B8@l
/* 803C0AA8 0038A068  7C A3 2B 78 */	mr r3, r5
/* 803C0AAC 0038A06C  90 04 00 0C */	stw r0, 0xc(r4)
/* 803C0AB0 0038A070  38 84 00 04 */	addi r4, r4, 4
/* 803C0AB4 0038A074  80 A5 00 00 */	lwz r5, 0(r5)
/* 803C0AB8 0038A078  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803C0ABC 0038A07C  7D 89 03 A6 */	mtctr r12
/* 803C0AC0 0038A080  4E 80 04 21 */	bctrl 
.L_803C0AC4:
/* 803C0AC4 0038A084  3C 80 80 52 */	lis r4, SFLIB_version_str@ha
/* 803C0AC8 0038A088  38 00 39 88 */	li r0, 0x3988
/* 803C0ACC 0038A08C  38 84 FF 80 */	addi r4, r4, SFLIB_version_str@l
/* 803C0AD0 0038A090  90 1F 00 04 */	stw r0, 4(r31)
/* 803C0AD4 0038A094  38 60 00 01 */	li r3, 1
/* 803C0AD8 0038A098  90 9F 00 08 */	stw r4, 8(r31)
/* 803C0ADC 0038A09C  48 01 3C 1D */	bl UTY_InitTmr
/* 803C0AE0 0038A0A0  4B FD 38 1D */	bl SJRBF_Init
/* 803C0AE4 0038A0A4  7F C3 F3 78 */	mr r3, r30
/* 803C0AE8 0038A0A8  48 00 00 69 */	bl sflib_InitLibWork
/* 803C0AEC 0038A0AC  2C 03 00 00 */	cmpwi r3, 0
/* 803C0AF0 0038A0B0  90 61 00 08 */	stw r3, 8(r1)
/* 803C0AF4 0038A0B4  40 82 00 10 */	bne .L_803C0B04
/* 803C0AF8 0038A0B8  48 00 85 25 */	bl SFPLY_Init
/* 803C0AFC 0038A0BC  4B FF F5 61 */	bl SFHDS_Finish
/* 803C0B00 0038A0C0  4B FF F2 21 */	bl func_803BFD20
.L_803C0B04:
/* 803C0B04 0038A0C4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803C0B08 0038A0C8  2C 03 00 00 */	cmpwi r3, 0
/* 803C0B0C 0038A0CC  41 82 00 28 */	beq .L_803C0B34
/* 803C0B10 0038A0D0  3C 80 80 57 */	lis r4, lbl_8056B5B8@ha
/* 803C0B14 0038A0D4  38 01 00 08 */	addi r0, r1, 8
/* 803C0B18 0038A0D8  38 84 B5 B8 */	addi r4, r4, lbl_8056B5B8@l
/* 803C0B1C 0038A0DC  90 04 00 74 */	stw r0, 0x74(r4)
/* 803C0B20 0038A0E0  38 84 00 6C */	addi r4, r4, 0x6c
/* 803C0B24 0038A0E4  80 A3 00 00 */	lwz r5, 0(r3)
/* 803C0B28 0038A0E8  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803C0B2C 0038A0EC  7D 89 03 A6 */	mtctr r12
/* 803C0B30 0038A0F0  4E 80 04 21 */	bctrl 
.L_803C0B34:
/* 803C0B34 0038A0F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C0B38 0038A0F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C0B3C 0038A0FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C0B40 0038A100  80 61 00 08 */	lwz r3, 8(r1)
/* 803C0B44 0038A104  7C 08 03 A6 */	mtlr r0
/* 803C0B48 0038A108  38 21 00 20 */	addi r1, r1, 0x20
/* 803C0B4C 0038A10C  4E 80 00 20 */	blr 
.endfn SFD_Init

.fn sflib_InitLibWork, global
/* 803C0B50 0038A110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C0B54 0038A114  7C 08 02 A6 */	mflr r0
/* 803C0B58 0038A118  38 80 00 00 */	li r4, 0
/* 803C0B5C 0038A11C  38 A0 00 8B */	li r5, 0x8b
/* 803C0B60 0038A120  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C0B64 0038A124  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C0B68 0038A128  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C0B6C 0038A12C  3F C0 80 61 */	lis r30, SFLIB_libwork@ha
/* 803C0B70 0038A130  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803C0B74 0038A134  7C 7D 1B 78 */	mr r29, r3
/* 803C0B78 0038A138  38 7E A2 E4 */	addi r3, r30, SFLIB_libwork@l
/* 803C0B7C 0038A13C  48 01 39 55 */	bl UTY_MemsetDword
/* 803C0B80 0038A140  3C 80 80 52 */	lis r4, SFPLY_cond_dfl@ha
/* 803C0B84 0038A144  38 7E A2 E4 */	addi r3, r30, SFLIB_libwork@l
/* 803C0B88 0038A148  38 84 03 F0 */	addi r4, r4, SFPLY_cond_dfl@l
/* 803C0B8C 0038A14C  38 A0 01 90 */	li r5, 0x190
/* 803C0B90 0038A150  4B FF AB 9D */	bl MEM_Copy
/* 803C0B94 0038A154  80 9D 00 00 */	lwz r4, 0(r29)
/* 803C0B98 0038A158  3B DE A2 E4 */	addi r30, r30, SFLIB_libwork@l
/* 803C0B9C 0038A15C  80 1D 00 04 */	lwz r0, 4(r29)
/* 803C0BA0 0038A160  3B E0 00 00 */	li r31, 0
/* 803C0BA4 0038A164  38 7E 01 B0 */	addi r3, r30, 0x1b0
/* 803C0BA8 0038A168  90 9E 01 90 */	stw r4, 0x190(r30)
/* 803C0BAC 0038A16C  90 1E 01 94 */	stw r0, 0x194(r30)
/* 803C0BB0 0038A170  93 FE 01 98 */	stw r31, 0x198(r30)
/* 803C0BB4 0038A174  93 FE 01 9C */	stw r31, 0x19c(r30)
/* 803C0BB8 0038A178  93 FE 01 A0 */	stw r31, 0x1a0(r30)
/* 803C0BBC 0038A17C  93 FE 01 A4 */	stw r31, 0x1a4(r30)
/* 803C0BC0 0038A180  93 FE 01 A8 */	stw r31, 0x1a8(r30)
/* 803C0BC4 0038A184  93 FE 01 AC */	stw r31, 0x1ac(r30)
/* 803C0BC8 0038A188  80 9D 00 04 */	lwz r4, 4(r29)
/* 803C0BCC 0038A18C  48 00 BB 51 */	bl SFTIM_Init
/* 803C0BD0 0038A190  38 7E 01 C4 */	addi r3, r30, 0x1c4
/* 803C0BD4 0038A194  4B FF E1 2D */	bl SFBUF_Init
/* 803C0BD8 0038A198  93 FE 02 04 */	stw r31, 0x204(r30)
/* 803C0BDC 0038A19C  38 7E 01 C8 */	addi r3, r30, 0x1c8
/* 803C0BE0 0038A1A0  93 FE 02 08 */	stw r31, 0x208(r30)
/* 803C0BE4 0038A1A4  93 FE 02 0C */	stw r31, 0x20c(r30)
/* 803C0BE8 0038A1A8  93 FE 02 10 */	stw r31, 0x210(r30)
/* 803C0BEC 0038A1AC  93 FE 02 14 */	stw r31, 0x214(r30)
/* 803C0BF0 0038A1B0  93 FE 02 18 */	stw r31, 0x218(r30)
/* 803C0BF4 0038A1B4  93 FE 02 1C */	stw r31, 0x21c(r30)
/* 803C0BF8 0038A1B8  93 FE 02 20 */	stw r31, 0x220(r30)
/* 803C0BFC 0038A1BC  93 FE 02 24 */	stw r31, 0x224(r30)
/* 803C0C00 0038A1C0  93 FE 02 28 */	stw r31, 0x228(r30)
/* 803C0C04 0038A1C4  80 9D 00 00 */	lwz r4, 0(r29)
/* 803C0C08 0038A1C8  48 00 D7 E9 */	bl SFTRN_Init
/* 803C0C0C 0038A1CC  2C 03 00 00 */	cmpwi r3, 0
/* 803C0C10 0038A1D0  41 82 00 08 */	beq .L_803C0C18
/* 803C0C14 0038A1D4  7C 7F 1B 78 */	mr r31, r3
.L_803C0C18:
/* 803C0C18 0038A1D8  7F E3 FB 78 */	mr r3, r31
/* 803C0C1C 0038A1DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C0C20 0038A1E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C0C24 0038A1E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803C0C28 0038A1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C0C2C 0038A1EC  7C 08 03 A6 */	mtlr r0
/* 803C0C30 0038A1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803C0C34 0038A1F4  4E 80 00 20 */	blr 
.endfn sflib_InitLibWork

.fn SFLIB_InitErrInf, global
/* 803C0C38 0038A1F8  38 00 00 00 */	li r0, 0
/* 803C0C3C 0038A1FC  90 03 00 00 */	stw r0, 0(r3)
/* 803C0C40 0038A200  90 03 00 04 */	stw r0, 4(r3)
/* 803C0C44 0038A204  90 03 00 08 */	stw r0, 8(r3)
/* 803C0C48 0038A208  90 03 00 0C */	stw r0, 0xc(r3)
/* 803C0C4C 0038A20C  90 03 00 10 */	stw r0, 0x10(r3)
/* 803C0C50 0038A210  4E 80 00 20 */	blr 
.endfn SFLIB_InitErrInf

.fn SFLIB_SetErr, global
/* 803C0C54 0038A214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C0C58 0038A218  7C 08 02 A6 */	mflr r0
/* 803C0C5C 0038A21C  2C 04 00 00 */	cmpwi r4, 0
/* 803C0C60 0038A220  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C0C64 0038A224  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C0C68 0038A228  7C 7F 1B 78 */	mr r31, r3
/* 803C0C6C 0038A22C  90 81 00 08 */	stw r4, 8(r1)
/* 803C0C70 0038A230  40 82 00 0C */	bne .L_803C0C7C
/* 803C0C74 0038A234  38 60 00 00 */	li r3, 0
/* 803C0C78 0038A238  48 00 01 08 */	b .L_803C0D80
.L_803C0C7C:
/* 803C0C7C 0038A23C  3C 80 80 61 */	lis r4, lbl_8060A2D8@ha
/* 803C0C80 0038A240  80 C4 A2 D8 */	lwz r6, lbl_8060A2D8@l(r4)
/* 803C0C84 0038A244  2C 06 00 00 */	cmpwi r6, 0
/* 803C0C88 0038A248  41 82 00 30 */	beq .L_803C0CB8
/* 803C0C8C 0038A24C  3C A0 80 57 */	lis r5, lbl_8056BE00@ha
/* 803C0C90 0038A250  38 01 00 08 */	addi r0, r1, 8
/* 803C0C94 0038A254  38 A5 BE 00 */	addi r5, r5, lbl_8056BE00@l
/* 803C0C98 0038A258  90 65 00 0C */	stw r3, 0xc(r5)
/* 803C0C9C 0038A25C  38 85 00 04 */	addi r4, r5, 4
/* 803C0CA0 0038A260  7C C3 33 78 */	mr r3, r6
/* 803C0CA4 0038A264  90 05 00 18 */	stw r0, 0x18(r5)
/* 803C0CA8 0038A268  80 A6 00 00 */	lwz r5, 0(r6)
/* 803C0CAC 0038A26C  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803C0CB0 0038A270  7D 89 03 A6 */	mtctr r12
/* 803C0CB4 0038A274  4E 80 04 21 */	bctrl 
.L_803C0CB8:
/* 803C0CB8 0038A278  2C 1F 00 00 */	cmpwi r31, 0
/* 803C0CBC 0038A27C  40 82 00 4C */	bne .L_803C0D08
/* 803C0CC0 0038A280  3C 60 80 61 */	lis r3, SFLIB_libwork@ha
/* 803C0CC4 0038A284  80 81 00 08 */	lwz r4, 8(r1)
/* 803C0CC8 0038A288  38 63 A2 E4 */	addi r3, r3, SFLIB_libwork@l
/* 803C0CCC 0038A28C  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 803C0CD0 0038A290  2C 00 00 00 */	cmpwi r0, 0
/* 803C0CD4 0038A294  40 82 00 08 */	bne .L_803C0CDC
/* 803C0CD8 0038A298  90 83 01 A4 */	stw r4, 0x1a4(r3)
.L_803C0CDC:
/* 803C0CDC 0038A29C  2C 04 00 00 */	cmpwi r4, 0
/* 803C0CE0 0038A2A0  41 82 00 70 */	beq .L_803C0D50
/* 803C0CE4 0038A2A4  3C 60 80 61 */	lis r3, SFLIB_libwork@ha
/* 803C0CE8 0038A2A8  38 63 A2 E4 */	addi r3, r3, SFLIB_libwork@l
/* 803C0CEC 0038A2AC  81 83 01 9C */	lwz r12, 0x19c(r3)
/* 803C0CF0 0038A2B0  2C 0C 00 00 */	cmpwi r12, 0
/* 803C0CF4 0038A2B4  41 82 00 5C */	beq .L_803C0D50
/* 803C0CF8 0038A2B8  80 63 01 A0 */	lwz r3, 0x1a0(r3)
/* 803C0CFC 0038A2BC  7D 89 03 A6 */	mtctr r12
/* 803C0D00 0038A2C0  4E 80 04 21 */	bctrl 
/* 803C0D04 0038A2C4  48 00 00 4C */	b .L_803C0D50
.L_803C0D08:
/* 803C0D08 0038A2C8  80 1F 0A 08 */	lwz r0, 0xa08(r31)
/* 803C0D0C 0038A2CC  80 81 00 08 */	lwz r4, 8(r1)
/* 803C0D10 0038A2D0  2C 00 00 00 */	cmpwi r0, 0
/* 803C0D14 0038A2D4  40 82 00 08 */	bne .L_803C0D1C
/* 803C0D18 0038A2D8  90 9F 0A 08 */	stw r4, 0xa08(r31)
.L_803C0D1C:
/* 803C0D1C 0038A2DC  2C 04 00 00 */	cmpwi r4, 0
/* 803C0D20 0038A2E0  41 82 00 1C */	beq .L_803C0D3C
/* 803C0D24 0038A2E4  81 9F 0A 00 */	lwz r12, 0xa00(r31)
/* 803C0D28 0038A2E8  2C 0C 00 00 */	cmpwi r12, 0
/* 803C0D2C 0038A2EC  41 82 00 10 */	beq .L_803C0D3C
/* 803C0D30 0038A2F0  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 803C0D34 0038A2F4  7D 89 03 A6 */	mtctr r12
/* 803C0D38 0038A2F8  4E 80 04 21 */	bctrl 
.L_803C0D3C:
/* 803C0D3C 0038A2FC  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 803C0D40 0038A300  2C 00 00 00 */	cmpwi r0, 0
/* 803C0D44 0038A304  40 81 00 0C */	ble .L_803C0D50
/* 803C0D48 0038A308  7C 00 00 D0 */	neg r0, r0
/* 803C0D4C 0038A30C  90 1F 00 50 */	stw r0, 0x50(r31)
.L_803C0D50:
/* 803C0D50 0038A310  3C 60 80 61 */	lis r3, lbl_8060A2D8@ha
/* 803C0D54 0038A314  80 63 A2 D8 */	lwz r3, lbl_8060A2D8@l(r3)
/* 803C0D58 0038A318  2C 03 00 00 */	cmpwi r3, 0
/* 803C0D5C 0038A31C  41 82 00 20 */	beq .L_803C0D7C
/* 803C0D60 0038A320  80 83 00 00 */	lwz r4, 0(r3)
/* 803C0D64 0038A324  3C A0 80 57 */	lis r5, lbl_8056BE00@ha
/* 803C0D68 0038A328  38 A5 BE 00 */	addi r5, r5, lbl_8056BE00@l
/* 803C0D6C 0038A32C  81 84 00 24 */	lwz r12, 0x24(r4)
/* 803C0D70 0038A330  38 85 00 6C */	addi r4, r5, 0x6c
/* 803C0D74 0038A334  7D 89 03 A6 */	mtctr r12
/* 803C0D78 0038A338  4E 80 04 21 */	bctrl 
.L_803C0D7C:
/* 803C0D7C 0038A33C  80 61 00 08 */	lwz r3, 8(r1)
.L_803C0D80:
/* 803C0D80 0038A340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C0D84 0038A344  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C0D88 0038A348  7C 08 03 A6 */	mtlr r0
/* 803C0D8C 0038A34C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C0D90 0038A350  4E 80 00 20 */	blr 
.endfn SFLIB_SetErr

.fn func_803C0D94, global
/* 803C0D94 0038A354  2C 03 00 00 */	cmpwi r3, 0
/* 803C0D98 0038A358  40 82 00 18 */	bne .L_803C0DB0
/* 803C0D9C 0038A35C  3C 60 80 61 */	lis r3, SFLIB_libwork@ha
/* 803C0DA0 0038A360  38 63 A2 E4 */	addi r3, r3, SFLIB_libwork@l
/* 803C0DA4 0038A364  90 83 01 9C */	stw r4, 0x19c(r3)
/* 803C0DA8 0038A368  90 A3 01 A0 */	stw r5, 0x1a0(r3)
/* 803C0DAC 0038A36C  48 00 00 50 */	b .L_803C0DFC
.L_803C0DB0:
/* 803C0DB0 0038A370  40 82 00 0C */	bne .L_803C0DBC
/* 803C0DB4 0038A374  38 00 FF FF */	li r0, -1
/* 803C0DB8 0038A378  48 00 00 24 */	b .L_803C0DDC
.L_803C0DBC:
/* 803C0DBC 0038A37C  80 03 00 50 */	lwz r0, 0x50(r3)
/* 803C0DC0 0038A380  2C 00 00 00 */	cmpwi r0, 0
/* 803C0DC4 0038A384  40 82 00 0C */	bne .L_803C0DD0
/* 803C0DC8 0038A388  38 00 FF FF */	li r0, -1
/* 803C0DCC 0038A38C  48 00 00 10 */	b .L_803C0DDC
.L_803C0DD0:
/* 803C0DD0 0038A390  3C C0 80 61 */	lis r6, lbl_8060A510@ha
/* 803C0DD4 0038A394  38 00 00 00 */	li r0, 0
/* 803C0DD8 0038A398  90 66 A5 10 */	stw r3, lbl_8060A510@l(r6)
.L_803C0DDC:
/* 803C0DDC 0038A39C  2C 00 00 00 */	cmpwi r0, 0
/* 803C0DE0 0038A3A0  41 82 00 14 */	beq .L_803C0DF4
/* 803C0DE4 0038A3A4  3C 80 FF 00 */	lis r4, 0xFF000101@ha
/* 803C0DE8 0038A3A8  38 60 00 00 */	li r3, 0
/* 803C0DEC 0038A3AC  38 84 01 01 */	addi r4, r4, 0xFF000101@l
/* 803C0DF0 0038A3B0  4B FF FE 64 */	b SFLIB_SetErr
.L_803C0DF4:
/* 803C0DF4 0038A3B4  90 83 0A 00 */	stw r4, 0xa00(r3)
/* 803C0DF8 0038A3B8  90 A3 0A 04 */	stw r5, 0xa04(r3)
.L_803C0DFC:
/* 803C0DFC 0038A3BC  38 60 00 00 */	li r3, 0
/* 803C0E00 0038A3C0  4E 80 00 20 */	blr 
.endfn func_803C0D94

.fn SFLIB_CheckHn, global
/* 803C0E04 0038A3C4  2C 03 00 00 */	cmpwi r3, 0
/* 803C0E08 0038A3C8  40 82 00 0C */	bne .L_803C0E14
/* 803C0E0C 0038A3CC  38 60 FF FF */	li r3, -1
/* 803C0E10 0038A3D0  4E 80 00 20 */	blr
.L_803C0E14:
/* 803C0E14 0038A3D4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 803C0E18 0038A3D8  2C 00 00 00 */	cmpwi r0, 0
/* 803C0E1C 0038A3DC  40 82 00 0C */	bne .L_803C0E28
/* 803C0E20 0038A3E0  38 60 FF FF */	li r3, -1
/* 803C0E24 0038A3E4  4E 80 00 20 */	blr
.L_803C0E28:
/* 803C0E28 0038A3E8  3C 80 80 61 */	lis r4, lbl_8060A510@ha
/* 803C0E2C 0038A3EC  90 64 A5 10 */	stw r3, lbl_8060A510@l(r4)
/* 803C0E30 0038A3F0  38 60 00 00 */	li r3, 0
/* 803C0E34 0038A3F4  4E 80 00 20 */	blr 
.endfn SFLIB_CheckHn

.fn SFLIB_LockCs, global
/* 803C0E38 0038A3F8  4B FD 5B 64 */	b SVM_Lock
.endfn SFLIB_LockCs

.fn SFLIB_UnlockCs, global
/* 803C0E3C 0038A3FC  4B FD 5B C8 */	b SVM_Unlock
.endfn SFLIB_UnlockCs


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global SFLIB_version_str
SFLIB_version_str:
	.asciz "\nCRI SFD/WII Ver.2.080 Build:Nov 13 2008 18:21:32\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4

.global lbl_8051FFD8
lbl_8051FFD8:
	.asciz "SFD_Init"
	.balign 4

.global lbl_8051FFE4
lbl_8051FFE4:
	.asciz "vsync_mhz"
	.balign 4

.global lbl_8051FFF0
lbl_8051FFF0:
	.asciz "sfd_errcode"

.global lbl_8051FFFC
lbl_8051FFFC:
	.asciz "SFD_Create"
	.balign 4

.global lbl_80520008
lbl_80520008:
	.asciz "cpara_members"
	.balign 4

.global lbl_80520018
lbl_80520018:
	.asciz "sfdhn"
	.balign 4

.global lbl_80520020
lbl_80520020:
	.asciz "SFD_Destroy"

.global lbl_8052002C
lbl_8052002C:
	.asciz "SFD_Start"
	.balign 4

.global lbl_80520038
lbl_80520038:
	.asciz "SFD_Stop"
	.balign 4
	.4byte 0

.global lbl_80520048
lbl_80520048:
	.asciz "SFD_RequestStop"

.global lbl_80520058
lbl_80520058:
	.asciz "SFD_TermSupply"
	.balign 4

.global lbl_80520068
lbl_80520068:
	.asciz "SFD_GetFrm"
	.balign 4

.global lbl_80520074
lbl_80520074:
	.asciz "frminf"
	.balign 4

.global lbl_8052007C
lbl_8052007C:
	.asciz "time"
	.balign 4

.global lbl_80520084
lbl_80520084:
	.asciz "ptype"
	.balign 4

.global lbl_8052008C
lbl_8052008C:
	.asciz "SFD_RelFrm"
	.balign 4

.global lbl_80520098
lbl_80520098:
	.asciz "SFD_ExecOne"

.global lbl_805200A4
lbl_805200A4:
	.asciz "SFLIB_SetErr"
	.balign 4

.global lbl_805200B4
lbl_805200B4:
	.asciz "SFMPS_ExecServer"
	.balign 4

.global lbl_805200C8
lbl_805200C8:
	.asciz "supplied"
	.balign 4

.global lbl_805200D4
lbl_805200D4:
	.asciz "consumed"
	.balign 4

.global lbl_805200E0
lbl_805200E0:
	.asciz "discarded"
	.balign 4

.global lbl_805200EC
lbl_805200EC:
	.asciz "SFMPV_ExecServer"
	.balign 4

.global lbl_80520100
lbl_80520100:
	.asciz "SFADXT_ExecServer"
	.balign 4

.global lbl_80520114
lbl_80520114:
	.asciz "sfmpv_DecodePicAtr"
	.balign 4

.global lbl_80520128
lbl_80520128:
	.asciz "mpvhn"
	.balign 4

.global lbl_80520130
lbl_80520130:
	.asciz "flowcnt"

.global lbl_80520138
lbl_80520138:
	.asciz "rsiz"
	.balign 4

.global lbl_80520140
lbl_80520140:
	.asciz "mpverr"
	.balign 4

.global lbl_80520148
lbl_80520148:
	.asciz "sfderr"
	.balign 4

.global lbl_80520150
lbl_80520150:
	.asciz "sfmpv_DecodeFrm"

.global lbl_80520160
lbl_80520160:
	.asciz "goporder"
	.balign 4

.global lbl_8052016C
lbl_8052016C:
	.asciz "disp_order_in_gop"
	.balign 4

.global lbl_80520180
lbl_80520180:
	.asciz "errcnt"
	.balign 4

.global lbl_80520188
lbl_80520188:
	.asciz "rcvcnt"
	.balign 4

.global lbl_80520190
lbl_80520190:
	.asciz "num_slices"
	.balign 4

.global lbl_8052019C
lbl_8052019C:
	.asciz "sfmpv_DecodePicAtr_ret"
	.balign 4

.global lbl_805201B4
lbl_805201B4:
	.asciz "dec_ttu.time"
	.balign 4

.global lbl_805201C4
lbl_805201C4:
	.asciz "sfply_AdjustPrepEnd"

.global lbl_805201D8
lbl_805201D8:
	.asciz "vplay"
	.balign 4

.global lbl_805201E0
lbl_805201E0:
	.asciz "aplay"
	.balign 4

.global lbl_805201E8
lbl_805201E8:
	.asciz "sync_mode"
	.balign 4

.global lbl_805201F4
lbl_805201F4:
	.asciz "etrg"
	.balign 4

.global lbl_805201FC
lbl_805201FC:
	.asciz "sfd_isSkip"
	.balign 4

.global lbl_80520208
lbl_80520208:
	.asciz "reason"
	.balign 4

.global lbl_80520210
lbl_80520210:
	.asciz "sfd_waitSupply"
	.balign 4

.global lbl_80520220
lbl_80520220:
	.asciz "sfd_waitRelFrm"
	.balign 4

.global lbl_80520230
lbl_80520230:
	.asciz "sfmpv_ConcatSub"

.global lbl_80520240
lbl_80520240:
	.asciz "concat_cnt"
	.balign 4

.global lbl_8052024C
lbl_8052024C:
	.asciz "add_time"
	.balign 4

.global lbl_80520258
lbl_80520258:
	.asciz "concat_time"

.global lbl_80520264
lbl_80520264:
	.asciz "concat_framecount"
	.balign 4

.global lbl_80520278
lbl_80520278:
	.asciz "sftim_UpdateTime"
	.balign 4

.global lbl_8052028C
lbl_8052028C:
	.asciz "vtime"
	.balign 4

.global lbl_80520294
lbl_80520294:
	.asciz "vtunit"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056B5B8
lbl_8056B5B8:
	.4byte lbl_8051FFD8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8051FFE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000005
	.4byte lbl_8051FFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B68C
lbl_8056B68C:
	.4byte lbl_8051FFFC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_80520008
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B760
lbl_8056B760:
	.4byte lbl_80520020
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B834
lbl_8056B834:
	.4byte lbl_8052002C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B908
lbl_8056B908:
	.4byte lbl_80520038
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B9DC
lbl_8056B9DC:
	.4byte lbl_80520048
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BAB0
lbl_8056BAB0:
	.4byte lbl_80520058
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BB84
lbl_8056BB84:
	.4byte lbl_80520068
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520074
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052007C
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520084
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BC58
lbl_8056BC58:
	.4byte lbl_8052008C
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520074
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BD2C
lbl_8056BD2C:
	.4byte lbl_80520098
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BE00
lbl_8056BE00:
	.4byte lbl_805200A4
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x00000005
	.4byte lbl_8051FFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BED4
lbl_8056BED4:
	.4byte lbl_805200B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200C8
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200D4
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BFA8
lbl_8056BFA8:
	.4byte lbl_805200EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200C8
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200D4
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C07C
lbl_8056C07C:
	.4byte lbl_80520100
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200C8
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200D4
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C150
lbl_8056C150:
	.4byte lbl_80520114
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520128
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520130
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520138
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520140
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520148
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C224
lbl_8056C224:
	.4byte lbl_80520150
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520128
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520084
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520160
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052016C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520138
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520180
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520188
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520190
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C2F8
lbl_8056C2F8:
	.4byte lbl_8052019C
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520084
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520160
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052016C
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C364
lbl_8056C364:
	.4byte lbl_805201C4
	.4byte 0
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201D8
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201E0
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201E8
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C3D0
lbl_8056C3D0:
	.4byte lbl_805201FC
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_80520208
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C43C
lbl_8056C43C:
	.4byte lbl_80520210
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C4A8
lbl_8056C4A8:
	.4byte lbl_80520220
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C514
lbl_8056C514:
	.4byte lbl_80520230
	.4byte 0
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520240
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052024C
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520258
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520264
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C580
lbl_8056C580:
	.4byte lbl_80520278
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052028C
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520294
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_8060A2D8
lbl_8060A2D8:
	.skip 0xC
.global SFLIB_libwork
SFLIB_libwork:
	.skip 0x22C
.global lbl_8060A510
lbl_8060A510:
	.skip 0x8