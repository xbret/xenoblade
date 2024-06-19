.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__cf_CTaskCulling, global
/* 801A29CC 0016BF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A29D0 0016BF90  7C 08 02 A6 */	mflr r0
/* 801A29D4 0016BF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A29D8 0016BF98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A29DC 0016BF9C  7C 9F 23 78 */	mr r31, r4
/* 801A29E0 0016BFA0  93 C1 00 08 */	stw r30, 8(r1)
/* 801A29E4 0016BFA4  7C 7E 1B 78 */	mr r30, r3
/* 801A29E8 0016BFA8  48 2A 20 31 */	bl __ct__8CProcessFv
/* 801A29EC 0016BFAC  3C 60 80 53 */	lis r3, "__vt__27CTTask<Q22cf12CTaskCulling>"@ha
/* 801A29F0 0016BFB0  3C C0 80 53 */	lis r6, __vt__Q22cf12CTaskCulling@ha
/* 801A29F4 0016BFB4  38 63 68 A0 */	addi r3, r3, "__vt__27CTTask<Q22cf12CTaskCulling>"@l
/* 801A29F8 0016BFB8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 801A29FC 0016BFBC  38 C6 67 98 */	addi r6, r6, __vt__Q22cf12CTaskCulling@l
/* 801A2A00 0016BFC0  3D 20 80 51 */	lis r9, __ptmf_null@ha
/* 801A2A04 0016BFC4  84 E9 CE 10 */	lwzu r7, __ptmf_null@l(r9)
/* 801A2A08 0016BFC8  38 A6 00 24 */	addi r5, r6, 0x24
/* 801A2A0C 0016BFCC  38 86 00 AC */	addi r4, r6, 0xac
/* 801A2A10 0016BFD0  38 7E 00 60 */	addi r3, r30, 0x60
/* 801A2A14 0016BFD4  80 09 00 04 */	lwz r0, 4(r9)
/* 801A2A18 0016BFD8  90 1E 00 40 */	stw r0, 0x40(r30)
/* 801A2A1C 0016BFDC  38 06 00 BC */	addi r0, r6, 0xbc
/* 801A2A20 0016BFE0  90 FE 00 3C */	stw r7, 0x3c(r30)
/* 801A2A24 0016BFE4  80 E9 00 08 */	lwz r7, 8(r9)
/* 801A2A28 0016BFE8  90 FE 00 44 */	stw r7, 0x44(r30)
/* 801A2A2C 0016BFEC  81 09 00 00 */	lwz r8, 0(r9)
/* 801A2A30 0016BFF0  80 E9 00 04 */	lwz r7, 4(r9)
/* 801A2A34 0016BFF4  90 FE 00 4C */	stw r7, 0x4c(r30)
/* 801A2A38 0016BFF8  91 1E 00 48 */	stw r8, 0x48(r30)
/* 801A2A3C 0016BFFC  80 E9 00 08 */	lwz r7, 8(r9)
/* 801A2A40 0016C000  90 FE 00 50 */	stw r7, 0x50(r30)
/* 801A2A44 0016C004  90 DE 00 10 */	stw r6, 0x10(r30)
/* 801A2A48 0016C008  90 BE 00 54 */	stw r5, 0x54(r30)
/* 801A2A4C 0016C00C  90 9E 00 58 */	stw r4, 0x58(r30)
/* 801A2A50 0016C010  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 801A2A54 0016C014  4B FF DA 51 */	bl __ct__COccCulling
/* 801A2A58 0016C018  38 00 00 00 */	li r0, 0
/* 801A2A5C 0016C01C  93 FE 00 90 */	stw r31, 0x90(r30)
/* 801A2A60 0016C020  2C 1E 00 00 */	cmpwi r30, 0
/* 801A2A64 0016C024  7F C3 F3 78 */	mr r3, r30
/* 801A2A68 0016C028  90 1E 00 94 */	stw r0, 0x94(r30)
/* 801A2A6C 0016C02C  98 1E 00 98 */	stb r0, 0x98(r30)
/* 801A2A70 0016C030  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 801A2A74 0016C034  98 1E 00 DC */	stb r0, 0xdc(r30)
/* 801A2A78 0016C038  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 801A2A7C 0016C03C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 801A2A80 0016C040  93 CD AA 98 */	stw r30, lbl_80666C18@sda21(r13)
/* 801A2A84 0016C044  41 82 00 08 */	beq .L_801A2A8C
/* 801A2A88 0016C048  38 7E 00 5C */	addi r3, r30, 0x5c
.L_801A2A8C:
/* 801A2A8C 0016C04C  90 7F 00 B4 */	stw r3, 0xb4(r31)
/* 801A2A90 0016C050  48 29 19 11 */	bl Heap_getRegionIndex2
/* 801A2A94 0016C054  38 80 10 00 */	li r4, 0x1000
/* 801A2A98 0016C058  38 A0 00 04 */	li r5, 4
/* 801A2A9C 0016C05C  48 29 19 91 */	bl MemManager_8043442C
/* 801A2AA0 0016C060  90 7E 00 94 */	stw r3, 0x94(r30)
/* 801A2AA4 0016C064  7F C3 F3 78 */	mr r3, r30
/* 801A2AA8 0016C068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A2AAC 0016C06C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A2AB0 0016C070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A2AB4 0016C074  7C 08 03 A6 */	mtlr r0
/* 801A2AB8 0016C078  38 21 00 10 */	addi r1, r1, 0x10
/* 801A2ABC 0016C07C  4E 80 00 20 */	blr 
.endfn __ct__cf_CTaskCulling

.fn __dt__801A2AC0, global
/* 801A2AC0 0016C080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A2AC4 0016C084  7C 08 02 A6 */	mflr r0
/* 801A2AC8 0016C088  2C 03 00 00 */	cmpwi r3, 0
/* 801A2ACC 0016C08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A2AD0 0016C090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A2AD4 0016C094  7C 7F 1B 78 */	mr r31, r3
/* 801A2AD8 0016C098  41 82 00 10 */	beq .L_801A2AE8
/* 801A2ADC 0016C09C  2C 04 00 00 */	cmpwi r4, 0
/* 801A2AE0 0016C0A0  40 81 00 08 */	ble .L_801A2AE8
/* 801A2AE4 0016C0A4  48 29 21 49 */	bl __dl__FPv
.L_801A2AE8:
/* 801A2AE8 0016C0A8  7F E3 FB 78 */	mr r3, r31
/* 801A2AEC 0016C0AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A2AF0 0016C0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A2AF4 0016C0B4  7C 08 03 A6 */	mtlr r0
/* 801A2AF8 0016C0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801A2AFC 0016C0BC  4E 80 00 20 */	blr 
.endfn __dt__801A2AC0

.fn "__dt__27CTTask<Q22cf12CTaskCulling>Fv", global
/* 801A2B00 0016C0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A2B04 0016C0C4  7C 08 02 A6 */	mflr r0
/* 801A2B08 0016C0C8  2C 03 00 00 */	cmpwi r3, 0
/* 801A2B0C 0016C0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A2B10 0016C0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A2B14 0016C0D4  7C 9F 23 78 */	mr r31, r4
/* 801A2B18 0016C0D8  93 C1 00 08 */	stw r30, 8(r1)
/* 801A2B1C 0016C0DC  7C 7E 1B 78 */	mr r30, r3
/* 801A2B20 0016C0E0  41 82 00 1C */	beq .L_801A2B3C
/* 801A2B24 0016C0E4  38 80 00 00 */	li r4, 0
/* 801A2B28 0016C0E8  48 2A 20 11 */	bl __dt__8CProcessFv
/* 801A2B2C 0016C0EC  2C 1F 00 00 */	cmpwi r31, 0
/* 801A2B30 0016C0F0  40 81 00 0C */	ble .L_801A2B3C
/* 801A2B34 0016C0F4  7F C3 F3 78 */	mr r3, r30
/* 801A2B38 0016C0F8  48 29 20 F5 */	bl __dl__FPv
.L_801A2B3C:
/* 801A2B3C 0016C0FC  7F C3 F3 78 */	mr r3, r30
/* 801A2B40 0016C100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A2B44 0016C104  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A2B48 0016C108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A2B4C 0016C10C  7C 08 03 A6 */	mtlr r0
/* 801A2B50 0016C110  38 21 00 10 */	addi r1, r1, 0x10
/* 801A2B54 0016C114  4E 80 00 20 */	blr
.endfn "__dt__27CTTask<Q22cf12CTaskCulling>Fv"

.fn __dt__Q22cf12CTaskCullingFv, global
/* 801A2B58 0016C118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A2B5C 0016C11C  7C 08 02 A6 */	mflr r0
/* 801A2B60 0016C120  2C 03 00 00 */	cmpwi r3, 0
/* 801A2B64 0016C124  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A2B68 0016C128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A2B6C 0016C12C  7C 9F 23 78 */	mr r31, r4
/* 801A2B70 0016C130  93 C1 00 08 */	stw r30, 8(r1)
/* 801A2B74 0016C134  7C 7E 1B 78 */	mr r30, r3
/* 801A2B78 0016C138  41 82 00 3C */	beq .L_801A2BB4
/* 801A2B7C 0016C13C  38 00 00 00 */	li r0, 0
/* 801A2B80 0016C140  90 0D AA 98 */	stw r0, lbl_80666C18@sda21(r13)
/* 801A2B84 0016C144  38 80 FF FF */	li r4, -1
/* 801A2B88 0016C148  38 63 00 60 */	addi r3, r3, 0x60
/* 801A2B8C 0016C14C  4B FF D9 F5 */	bl __dt__11COccCullingFv
/* 801A2B90 0016C150  2C 1E 00 00 */	cmpwi r30, 0
/* 801A2B94 0016C154  41 82 00 10 */	beq .L_801A2BA4
/* 801A2B98 0016C158  7F C3 F3 78 */	mr r3, r30
/* 801A2B9C 0016C15C  38 80 00 00 */	li r4, 0
/* 801A2BA0 0016C160  48 2A 1F 99 */	bl __dt__8CProcessFv
.L_801A2BA4:
/* 801A2BA4 0016C164  2C 1F 00 00 */	cmpwi r31, 0
/* 801A2BA8 0016C168  40 81 00 0C */	ble .L_801A2BB4
/* 801A2BAC 0016C16C  7F C3 F3 78 */	mr r3, r30
/* 801A2BB0 0016C170  48 29 20 7D */	bl __dl__FPv
.L_801A2BB4:
/* 801A2BB4 0016C174  7F C3 F3 78 */	mr r3, r30
/* 801A2BB8 0016C178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A2BBC 0016C17C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A2BC0 0016C180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A2BC4 0016C184  7C 08 03 A6 */	mtlr r0
/* 801A2BC8 0016C188  38 21 00 10 */	addi r1, r1, 0x10
/* 801A2BCC 0016C18C  4E 80 00 20 */	blr 
.endfn __dt__Q22cf12CTaskCullingFv

.fn func_801A2BD0, global
/* 801A2BD0 0016C190  80 8D AA 98 */	lwz r4, lbl_80666C18@sda21(r13)
/* 801A2BD4 0016C194  2C 04 00 00 */	cmpwi r4, 0
/* 801A2BD8 0016C198  4D 82 00 20 */	beqlr 
/* 801A2BDC 0016C19C  2C 03 00 00 */	cmpwi r3, 0
/* 801A2BE0 0016C1A0  41 82 00 14 */	beq .L_801A2BF4
/* 801A2BE4 0016C1A4  80 04 01 20 */	lwz r0, 0x120(r4)
/* 801A2BE8 0016C1A8  60 00 00 08 */	ori r0, r0, 8
/* 801A2BEC 0016C1AC  90 04 01 20 */	stw r0, 0x120(r4)
/* 801A2BF0 0016C1B0  4E 80 00 20 */	blr
.L_801A2BF4:
/* 801A2BF4 0016C1B4  80 04 01 20 */	lwz r0, 0x120(r4)
/* 801A2BF8 0016C1B8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 801A2BFC 0016C1BC  90 04 01 20 */	stw r0, 0x120(r4)
/* 801A2C00 0016C1C0  4E 80 00 20 */	blr 
.endfn func_801A2BD0

.fn func_801A2C04, global
/* 801A2C04 0016C1C4  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2C08 0016C1C8  2C 03 00 00 */	cmpwi r3, 0
/* 801A2C0C 0016C1CC  40 82 00 0C */	bne .L_801A2C18
/* 801A2C10 0016C1D0  38 60 00 00 */	li r3, 0
/* 801A2C14 0016C1D4  4E 80 00 20 */	blr
.L_801A2C18:
/* 801A2C18 0016C1D8  80 63 00 94 */	lwz r3, 0x94(r3)
/* 801A2C1C 0016C1DC  4E 80 00 20 */	blr
.endfn func_801A2C04

.fn func_801A2C20, global
/* 801A2C20 0016C1E0  80 0D AA 98 */	lwz r0, lbl_80666C18@sda21(r13)
/* 801A2C24 0016C1E4  2C 00 00 00 */	cmpwi r0, 0
/* 801A2C28 0016C1E8  40 82 00 0C */	bne .L_801A2C34
/* 801A2C2C 0016C1EC  38 60 00 00 */	li r3, 0
/* 801A2C30 0016C1F0  4E 80 00 20 */	blr
.L_801A2C34:
/* 801A2C34 0016C1F4  38 63 00 60 */	addi r3, r3, 0x60
/* 801A2C38 0016C1F8  4B FF E2 CC */	b func_801A0F04
/* 801A2C3C 0016C1FC  4E 80 00 20 */	blr
.endfn func_801A2C20

.fn func_801A2C40, global
/* 801A2C40 0016C200  80 0D AA 98 */	lwz r0, lbl_80666C18@sda21(r13)
/* 801A2C44 0016C204  2C 00 00 00 */	cmpwi r0, 0
/* 801A2C48 0016C208  40 82 00 0C */	bne .L_801A2C54
/* 801A2C4C 0016C20C  38 60 00 00 */	li r3, 0
/* 801A2C50 0016C210  4E 80 00 20 */	blr
.L_801A2C54:
/* 801A2C54 0016C214  80 03 01 20 */	lwz r0, 0x120(r3)
/* 801A2C58 0016C218  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801A2C5C 0016C21C  41 82 00 0C */	beq .L_801A2C68
/* 801A2C60 0016C220  38 60 00 00 */	li r3, 0
/* 801A2C64 0016C224  4E 80 00 20 */	blr
.L_801A2C68:
/* 801A2C68 0016C228  38 63 00 60 */	addi r3, r3, 0x60
/* 801A2C6C 0016C22C  4B FF E7 D8 */	b func_801A1444
/* 801A2C70 0016C230  4E 80 00 20 */	blr
.endfn func_801A2C40

.fn func_801A2C74, global
/* 801A2C74 0016C234  80 0D AA 98 */	lwz r0, lbl_80666C18@sda21(r13)
/* 801A2C78 0016C238  2C 00 00 00 */	cmpwi r0, 0
/* 801A2C7C 0016C23C  40 82 00 0C */	bne .L_801A2C88
/* 801A2C80 0016C240  38 60 00 00 */	li r3, 0
/* 801A2C84 0016C244  4E 80 00 20 */	blr
.L_801A2C88:
/* 801A2C88 0016C248  38 63 00 60 */	addi r3, r3, 0x60
/* 801A2C8C 0016C24C  4B FF E8 C4 */	b func_801A1550
/* 801A2C90 0016C250  4E 80 00 20 */	blr 
.endfn func_801A2C74

.fn func_801A2C94, global
/* 801A2C94 0016C254  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2C98 0016C258  2C 03 00 00 */	cmpwi r3, 0
/* 801A2C9C 0016C25C  4D 82 00 20 */	beqlr 
/* 801A2CA0 0016C260  38 63 00 60 */	addi r3, r3, 0x60
/* 801A2CA4 0016C264  4B FF DA F0 */	b func_801A0794
/* 801A2CA8 0016C268  4E 80 00 20 */	blr 
.endfn func_801A2C94

.fn func_801A2CAC, global
/* 801A2CAC 0016C26C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A2CB0 0016C270  7C 08 02 A6 */	mflr r0
/* 801A2CB4 0016C274  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A2CB8 0016C278  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801A2CBC 0016C27C  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2CC0 0016C280  2C 03 00 00 */	cmpwi r3, 0
/* 801A2CC4 0016C284  41 82 01 60 */	beq .L_801A2E24
/* 801A2CC8 0016C288  41 82 00 0C */	beq .L_801A2CD4
/* 801A2CCC 0016C28C  38 63 00 60 */	addi r3, r3, 0x60
/* 801A2CD0 0016C290  4B FF DA C5 */	bl func_801A0794
.L_801A2CD4:
/* 801A2CD4 0016C294  4B EE 05 C5 */	bl func_80083298
/* 801A2CD8 0016C298  7C 7F 1B 78 */	mr r31, r3
/* 801A2CDC 0016C29C  80 63 00 70 */	lwz r3, 0x70(r3)
/* 801A2CE0 0016C2A0  38 81 00 14 */	addi r4, r1, 0x14
/* 801A2CE4 0016C2A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 801A2CE8 0016C2A8  38 C1 00 0C */	addi r6, r1, 0xc
/* 801A2CEC 0016C2AC  38 E1 00 08 */	addi r7, r1, 8
/* 801A2CF0 0016C2B0  4B F0 76 29 */	bl func_800AA318
/* 801A2CF4 0016C2B4  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2CF8 0016C2B8  38 A0 00 00 */	li r5, 0
/* 801A2CFC 0016C2BC  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 801A2D00 0016C2C0  38 C0 00 00 */	li r6, 0
/* 801A2D04 0016C2C4  38 63 00 98 */	addi r3, r3, 0x98
/* 801A2D08 0016C2C8  4B F0 76 35 */	bl func_800AA33C
/* 801A2D0C 0016C2CC  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2D10 0016C2D0  38 A0 00 01 */	li r5, 1
/* 801A2D14 0016C2D4  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 801A2D18 0016C2D8  38 C0 00 00 */	li r6, 0
/* 801A2D1C 0016C2DC  38 63 00 DC */	addi r3, r3, 0xdc
/* 801A2D20 0016C2E0  4B F0 76 1D */	bl func_800AA33C
/* 801A2D24 0016C2E4  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2D28 0016C2E8  3F E0 80 50 */	lis r31, lbl_804FF780@ha
/* 801A2D2C 0016C2EC  3B FF F7 80 */	addi r31, r31, lbl_804FF780@l
/* 801A2D30 0016C2F0  83 A3 01 1C */	lwz r29, 0x11c(r3)
/* 801A2D34 0016C2F4  3B 83 00 DC */	addi r28, r3, 0xdc
/* 801A2D38 0016C2F8  2C 1D 00 00 */	cmpwi r29, 0
/* 801A2D3C 0016C2FC  40 82 00 0C */	bne .L_801A2D48
/* 801A2D40 0016C300  38 60 FF FF */	li r3, -1
/* 801A2D44 0016C304  48 00 00 50 */	b .L_801A2D94
.L_801A2D48:
/* 801A2D48 0016C308  7F E3 FB 78 */	mr r3, r31
/* 801A2D4C 0016C30C  48 11 68 6D */	bl strlen
/* 801A2D50 0016C310  3B 7C FF FF */	addi r27, r28, -1
/* 801A2D54 0016C314  7C 7E 1B 78 */	mr r30, r3
/* 801A2D58 0016C318  7F 7B EA 14 */	add r27, r27, r29
/* 801A2D5C 0016C31C  3B BC FF FF */	addi r29, r28, -1
/* 801A2D60 0016C320  48 00 00 28 */	b .L_801A2D88
.L_801A2D64:
/* 801A2D64 0016C324  7F 63 DB 78 */	mr r3, r27
/* 801A2D68 0016C328  7F E4 FB 78 */	mr r4, r31
/* 801A2D6C 0016C32C  7F C5 F3 78 */	mr r5, r30
/* 801A2D70 0016C330  48 11 FB E1 */	bl strncmp
/* 801A2D74 0016C334  2C 03 00 00 */	cmpwi r3, 0
/* 801A2D78 0016C338  40 82 00 0C */	bne .L_801A2D84
/* 801A2D7C 0016C33C  7C 7C D8 50 */	subf r3, r28, r27
/* 801A2D80 0016C340  48 00 00 14 */	b .L_801A2D94
.L_801A2D84:
/* 801A2D84 0016C344  3B 7B FF FF */	addi r27, r27, -1
.L_801A2D88:
/* 801A2D88 0016C348  7C 1B E8 40 */	cmplw r27, r29
/* 801A2D8C 0016C34C  40 82 FF D8 */	bne .L_801A2D64
/* 801A2D90 0016C350  38 60 FF FF */	li r3, -1
.L_801A2D94:
/* 801A2D94 0016C354  2C 03 FF FF */	cmpwi r3, -1
/* 801A2D98 0016C358  41 82 00 24 */	beq .L_801A2DBC
/* 801A2D9C 0016C35C  80 1C 00 40 */	lwz r0, 0x40(r28)
/* 801A2DA0 0016C360  38 83 00 01 */	addi r4, r3, 1
/* 801A2DA4 0016C364  7C 04 00 00 */	cmpw r4, r0
/* 801A2DA8 0016C368  40 80 00 14 */	bge .L_801A2DBC
/* 801A2DAC 0016C36C  7C 63 E2 14 */	add r3, r3, r28
/* 801A2DB0 0016C370  38 00 00 00 */	li r0, 0
/* 801A2DB4 0016C374  98 03 00 01 */	stb r0, 1(r3)
/* 801A2DB8 0016C378  90 9C 00 40 */	stw r4, 0x40(r28)
.L_801A2DBC:
/* 801A2DBC 0016C37C  80 8D AA 98 */	lwz r4, lbl_80666C18@sda21(r13)
/* 801A2DC0 0016C380  3C 60 80 50 */	lis r3, lbl_804FF780@ha
/* 801A2DC4 0016C384  38 63 F7 80 */	addi r3, r3, lbl_804FF780@l
/* 801A2DC8 0016C388  83 64 00 94 */	lwz r27, 0x94(r4)
/* 801A2DCC 0016C38C  38 83 00 02 */	addi r4, r3, 2
/* 801A2DD0 0016C390  7F 63 DB 78 */	mr r3, r27
/* 801A2DD4 0016C394  48 11 FA 61 */	bl strcmp
/* 801A2DD8 0016C398  2C 03 00 00 */	cmpwi r3, 0
/* 801A2DDC 0016C39C  40 82 00 48 */	bne .L_801A2E24
/* 801A2DE0 0016C3A0  3B 9B 00 10 */	addi r28, r27, 0x10
/* 801A2DE4 0016C3A4  3B A0 00 00 */	li r29, 0
/* 801A2DE8 0016C3A8  48 00 00 30 */	b .L_801A2E18
.L_801A2DEC:
/* 801A2DEC 0016C3AC  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2DF0 0016C3B0  80 FC 00 24 */	lwz r7, 0x24(r28)
/* 801A2DF4 0016C3B4  2C 03 00 00 */	cmpwi r3, 0
/* 801A2DF8 0016C3B8  41 82 00 18 */	beq .L_801A2E10
/* 801A2DFC 0016C3BC  7F 84 E3 78 */	mr r4, r28
/* 801A2E00 0016C3C0  38 63 00 60 */	addi r3, r3, 0x60
/* 801A2E04 0016C3C4  38 BC 00 0C */	addi r5, r28, 0xc
/* 801A2E08 0016C3C8  38 DC 00 18 */	addi r6, r28, 0x18
/* 801A2E0C 0016C3CC  4B FF DA 45 */	bl func_801A0850
.L_801A2E10:
/* 801A2E10 0016C3D0  3B BD 00 01 */	addi r29, r29, 1
/* 801A2E14 0016C3D4  3B 9C 00 34 */	addi r28, r28, 0x34
.L_801A2E18:
/* 801A2E18 0016C3D8  A0 1B 00 06 */	lhz r0, 6(r27)
/* 801A2E1C 0016C3DC  7C 1D 00 00 */	cmpw r29, r0
/* 801A2E20 0016C3E0  41 80 FF CC */	blt .L_801A2DEC
.L_801A2E24:
/* 801A2E24 0016C3E4  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801A2E28 0016C3E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A2E2C 0016C3EC  7C 08 03 A6 */	mtlr r0
/* 801A2E30 0016C3F0  38 21 00 30 */	addi r1, r1, 0x30
/* 801A2E34 0016C3F4  4E 80 00 20 */	blr 
.endfn func_801A2CAC

.fn func_801A2E38, global
/* 801A2E38 0016C3F8  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2E3C 0016C3FC  4E 80 00 20 */	blr 
.endfn func_801A2E38

.fn func_801A2E40, global
/* 801A2E40 0016C400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A2E44 0016C404  7C 08 02 A6 */	mflr r0
/* 801A2E48 0016C408  2C 03 00 00 */	cmpwi r3, 0
/* 801A2E4C 0016C40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A2E50 0016C410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A2E54 0016C414  7C 7F 1B 78 */	mr r31, r3
/* 801A2E58 0016C418  7F E4 FB 78 */	mr r4, r31
/* 801A2E5C 0016C41C  41 82 00 08 */	beq .L_801A2E64
/* 801A2E60 0016C420  38 83 00 58 */	addi r4, r3, 0x58
.L_801A2E64:
/* 801A2E64 0016C424  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 801A2E68 0016C428  38 A0 00 01 */	li r5, 1
/* 801A2E6C 0016C42C  38 C0 00 00 */	li r6, 0
/* 801A2E70 0016C430  48 2F 30 45 */	bl func_80495EB4
/* 801A2E74 0016C434  48 29 15 2D */	bl Heap_getRegionIndex2
/* 801A2E78 0016C438  3C A0 00 01 */	lis r5, 1
/* 801A2E7C 0016C43C  7C 64 1B 78 */	mr r4, r3
/* 801A2E80 0016C440  38 7F 00 60 */	addi r3, r31, 0x60
/* 801A2E84 0016C444  38 A5 80 00 */	addi r5, r5, -0x8000
/* 801A2E88 0016C448  4B FF D8 71 */	bl func_801A06F8
/* 801A2E8C 0016C44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A2E90 0016C450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A2E94 0016C454  7C 08 03 A6 */	mtlr r0
/* 801A2E98 0016C458  38 21 00 10 */	addi r1, r1, 0x10
/* 801A2E9C 0016C45C  4E 80 00 20 */	blr 
.endfn func_801A2E40

.fn func_801A2EA0, global
/* 801A2EA0 0016C460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A2EA4 0016C464  7C 08 02 A6 */	mflr r0
/* 801A2EA8 0016C468  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A2EAC 0016C46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A2EB0 0016C470  7C 7F 1B 78 */	mr r31, r3
/* 801A2EB4 0016C474  80 0D A5 94 */	lwz r0, lbl_80666714@sda21(r13)
/* 801A2EB8 0016C478  2C 00 00 00 */	cmpwi r0, 0
/* 801A2EBC 0016C47C  41 82 00 1C */	beq .L_801A2ED8
/* 801A2EC0 0016C480  2C 03 00 00 */	cmpwi r3, 0
/* 801A2EC4 0016C484  7F E4 FB 78 */	mr r4, r31
/* 801A2EC8 0016C488  41 82 00 08 */	beq .L_801A2ED0
/* 801A2ECC 0016C48C  38 83 00 58 */	addi r4, r3, 0x58
.L_801A2ED0:
/* 801A2ED0 0016C490  7C 03 03 78 */	mr r3, r0
/* 801A2ED4 0016C494  48 2F 30 7D */	bl func_80495F50
.L_801A2ED8:
/* 801A2ED8 0016C498  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801A2EDC 0016C49C  38 00 00 00 */	li r0, 0
/* 801A2EE0 0016C4A0  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 801A2EE4 0016C4A4  80 6D AA 98 */	lwz r3, lbl_80666C18@sda21(r13)
/* 801A2EE8 0016C4A8  2C 03 00 00 */	cmpwi r3, 0
/* 801A2EEC 0016C4AC  41 82 00 0C */	beq .L_801A2EF8
/* 801A2EF0 0016C4B0  38 63 00 60 */	addi r3, r3, 0x60
/* 801A2EF4 0016C4B4  4B FF D8 A1 */	bl func_801A0794
.L_801A2EF8:
/* 801A2EF8 0016C4B8  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801A2EFC 0016C4BC  2C 03 00 00 */	cmpwi r3, 0
/* 801A2F00 0016C4C0  41 82 00 10 */	beq .L_801A2F10
/* 801A2F04 0016C4C4  48 29 15 D5 */	bl MemManager_804344D8
/* 801A2F08 0016C4C8  38 00 00 00 */	li r0, 0
/* 801A2F0C 0016C4CC  90 1F 00 94 */	stw r0, 0x94(r31)
.L_801A2F10:
/* 801A2F10 0016C4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A2F14 0016C4D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A2F18 0016C4D8  7C 08 03 A6 */	mtlr r0
/* 801A2F1C 0016C4DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A2F20 0016C4E0  4E 80 00 20 */	blr 
.endfn func_801A2EA0

.fn func_801A2F24, global
/* 801A2F24 0016C4E4  4E 80 00 20 */	blr 
.endfn func_801A2F24

.fn func_801A2F28, global
/* 801A2F28 0016C4E8  4E 80 00 20 */	blr
.endfn func_801A2F28

.fn func_801A2F2C, global
/* 801A2F2C 0016C4EC  4E 80 00 20 */	blr 
.endfn func_801A2F2C

.fn func_801A2F30, global
/* 801A2F30 0016C4F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A2F34 0016C4F4  7C 08 02 A6 */	mflr r0
/* 801A2F38 0016C4F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A2F3C 0016C4FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A2F40 0016C500  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A2F44 0016C504  7C 9E 23 78 */	mr r30, r4
/* 801A2F48 0016C508  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A2F4C 0016C50C  7C 7D 1B 78 */	mr r29, r3
/* 801A2F50 0016C510  48 29 46 65 */	bl getHeapIndex__3mtlFv
/* 801A2F54 0016C514  7C 64 1B 78 */	mr r4, r3
/* 801A2F58 0016C518  38 60 01 24 */	li r3, 0x124
/* 801A2F5C 0016C51C  48 29 1B 01 */	bl heap_malloc__3mtlFUli
/* 801A2F60 0016C520  2C 03 00 00 */	cmpwi r3, 0
/* 801A2F64 0016C524  7C 7F 1B 78 */	mr r31, r3
/* 801A2F68 0016C528  41 82 00 10 */	beq .L_801A2F78
/* 801A2F6C 0016C52C  7F C4 F3 78 */	mr r4, r30
/* 801A2F70 0016C530  4B FF FA 5D */	bl __ct__cf_CTaskCulling
/* 801A2F74 0016C534  7C 7F 1B 78 */	mr r31, r3
.L_801A2F78:
/* 801A2F78 0016C538  7F E3 FB 78 */	mr r3, r31
/* 801A2F7C 0016C53C  7F A4 EB 78 */	mr r4, r29
/* 801A2F80 0016C540  38 A0 00 00 */	li r5, 0
/* 801A2F84 0016C544  48 2A 1C F1 */	bl func_80444C74
/* 801A2F88 0016C548  7F E3 FB 78 */	mr r3, r31
/* 801A2F8C 0016C54C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A2F90 0016C550  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A2F94 0016C554  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A2F98 0016C558  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A2F9C 0016C55C  7C 08 03 A6 */	mtlr r0
/* 801A2FA0 0016C560  38 21 00 20 */	addi r1, r1, 0x20
/* 801A2FA4 0016C564  4E 80 00 20 */	blr 
.endfn func_801A2F30

.fn "func_801A2FA8__27CTTask<Q22cf12CTaskCulling>Fv", global
/* 801A2FA8 0016C568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A2FAC 0016C56C  7C 08 02 A6 */	mflr r0
/* 801A2FB0 0016C570  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A2FB4 0016C574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A2FB8 0016C578  7C 7F 1B 78 */	mr r31, r3
/* 801A2FBC 0016C57C  38 63 00 3C */	addi r3, r3, 0x3c
/* 801A2FC0 0016C580  48 11 6D 31 */	bl __ptmf_test
/* 801A2FC4 0016C584  2C 03 00 00 */	cmpwi r3, 0
/* 801A2FC8 0016C588  41 82 00 14 */	beq .L_801A2FDC
/* 801A2FCC 0016C58C  7F E3 FB 78 */	mr r3, r31
/* 801A2FD0 0016C590  39 9F 00 3C */	addi r12, r31, 0x3c
/* 801A2FD4 0016C594  48 11 6D 89 */	bl __ptmf_scall
/* 801A2FD8 0016C598  60 00 00 00 */	nop 
.L_801A2FDC:
/* 801A2FDC 0016C59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A2FE0 0016C5A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A2FE4 0016C5A4  7C 08 03 A6 */	mtlr r0
/* 801A2FE8 0016C5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 801A2FEC 0016C5AC  4E 80 00 20 */	blr 
.endfn "func_801A2FA8__27CTTask<Q22cf12CTaskCulling>Fv"

.fn "func_801A2FF0__27CTTask<Q22cf12CTaskCulling>Fv", global
/* 801A2FF0 0016C5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A2FF4 0016C5B4  7C 08 02 A6 */	mflr r0
/* 801A2FF8 0016C5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A2FFC 0016C5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A3000 0016C5C0  7C 7F 1B 78 */	mr r31, r3
/* 801A3004 0016C5C4  38 63 00 48 */	addi r3, r3, 0x48
/* 801A3008 0016C5C8  48 11 6C E9 */	bl __ptmf_test
/* 801A300C 0016C5CC  2C 03 00 00 */	cmpwi r3, 0
/* 801A3010 0016C5D0  41 82 00 14 */	beq .L_801A3024
/* 801A3014 0016C5D4  7F E3 FB 78 */	mr r3, r31
/* 801A3018 0016C5D8  39 9F 00 48 */	addi r12, r31, 0x48
/* 801A301C 0016C5DC  48 11 6D 41 */	bl __ptmf_scall
/* 801A3020 0016C5E0  60 00 00 00 */	nop 
.L_801A3024:
/* 801A3024 0016C5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A3028 0016C5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A302C 0016C5EC  7C 08 03 A6 */	mtlr r0
/* 801A3030 0016C5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A3034 0016C5F4  4E 80 00 20 */	blr
.endfn "func_801A2FF0__27CTTask<Q22cf12CTaskCulling>Fv"

.fn sinit_801A3038, local
/* 801A3038 0016C5F8  3C E0 80 58 */	lis r7, lbl_80579018@ha
/* 801A303C 0016C5FC  C0 A2 A1 F8 */	lfs f5, float_8066A578@sda21(r2)
/* 801A3040 0016C600  38 E7 90 18 */	addi r7, r7, lbl_80579018@l
/* 801A3044 0016C604  C0 42 A2 04 */	lfs f2, float_8066A584@sda21(r2)
/* 801A3048 0016C608  38 87 00 18 */	addi r4, r7, 0x18
/* 801A304C 0016C60C  C0 82 A1 FC */	lfs f4, float_8066A57C@sda21(r2)
/* 801A3050 0016C610  38 C7 00 00 */	addi r6, r7, 0
/* 801A3054 0016C614  38 A7 00 0C */	addi r5, r7, 0xc
/* 801A3058 0016C618  C0 62 A2 00 */	lfs f3, float_8066A580@sda21(r2)
/* 801A305C 0016C61C  38 67 00 28 */	addi r3, r7, 0x28
/* 801A3060 0016C620  C0 22 A2 08 */	lfs f1, float_8066A588@sda21(r2)
/* 801A3064 0016C624  C0 02 A2 0C */	lfs f0, float_8066A58C@sda21(r2)
/* 801A3068 0016C628  D0 A7 00 00 */	stfs f5, 0(r7)
/* 801A306C 0016C62C  D0 86 00 04 */	stfs f4, 4(r6)
/* 801A3070 0016C630  D0 66 00 08 */	stfs f3, 8(r6)
/* 801A3074 0016C634  D0 A7 00 0C */	stfs f5, 0xc(r7)
/* 801A3078 0016C638  D0 85 00 04 */	stfs f4, 4(r5)
/* 801A307C 0016C63C  D0 65 00 08 */	stfs f3, 8(r5)
/* 801A3080 0016C640  D0 A7 00 18 */	stfs f5, 0x18(r7)
/* 801A3084 0016C644  D0 84 00 04 */	stfs f4, 4(r4)
/* 801A3088 0016C648  D0 44 00 08 */	stfs f2, 8(r4)
/* 801A308C 0016C64C  D0 47 00 28 */	stfs f2, 0x28(r7)
/* 801A3090 0016C650  D0 23 00 04 */	stfs f1, 4(r3)
/* 801A3094 0016C654  D0 43 00 08 */	stfs f2, 8(r3)
/* 801A3098 0016C658  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801A309C 0016C65C  4E 80 00 20 */	blr 
.endfn sinit_801A3038

.fn func_801A30A0, global
/* 801A30A0 0016C660  38 63 FF AC */	addi r3, r3, -84
/* 801A30A4 0016C664  4B FF FA B4 */	b __dt__Q22cf12CTaskCullingFv
.endfn func_801A30A0

.fn func_801A30A8, global
/* 801A30A8 0016C668  38 63 FF A8 */	addi r3, r3, -88
/* 801A30AC 0016C66C  4B FF FE 80 */	b func_801A2F2C
.endfn func_801A30A8

.fn func_801A30B0, global
/* 801A30B0 0016C670  38 63 FF A8 */	addi r3, r3, -88
/* 801A30B4 0016C674  4B FF FA A4 */	b __dt__Q22cf12CTaskCullingFv
.endfn func_801A30B0

.fn func_801A30B8, global
/* 801A30B8 0016C678  38 63 FF A4 */	addi r3, r3, -92
/* 801A30BC 0016C67C  4B FF FB B8 */	b func_801A2C74
.endfn func_801A30B8

.fn func_801A30C0, global
/* 801A30C0 0016C680  38 63 FF A4 */	addi r3, r3, -92
/* 801A30C4 0016C684  4B FF FB 7C */	b func_801A2C40
.endfn func_801A30C0

.fn func_801A30C8, global
/* 801A30C8 0016C688  38 63 FF A4 */	addi r3, r3, -92
/* 801A30CC 0016C68C  4B FF FB 54 */	b func_801A2C20
.endfn func_801A30C8

.fn func_801A30D0, global
/* 801A30D0 0016C690  38 63 FF A4 */	addi r3, r3, -92
/* 801A30D4 0016C694  4B FF FA 84 */	b __dt__Q22cf12CTaskCullingFv
.endfn func_801A30D0

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_801A3038


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CTaskCulling_typestr, global
	.asciz "cf::CTaskCulling"
	.balign 4
.endobj cf_CTaskCulling_typestr

.obj CTTask_cf_CTaskCulling_typestr, global
	.asciz "CTTask<cf::CTaskCulling>"
	.balign 4
.endobj CTTask_cf_CTaskCulling_typestr


.obj lbl_804FF780, global
	.4byte 0x2F006F63
	.4byte 0x63000000
.endobj lbl_804FF780

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf12CTaskCulling, global
	.4byte __RTTI__Q22cf12CTaskCulling
	.4byte 0
	.4byte __dt__Q22cf12CTaskCullingFv
	.4byte Reset__14CChildListNodeFv
	.4byte func_801A2E40
	.4byte func_801A2EA0
	.4byte func_801A2F24
	.4byte func_801A2F28
	.4byte func_80043F20__8CProcessFv
	.4byte __RTTI__Q22cf12CTaskCulling
	.4byte 0xFFFFFFAC
	.4byte func_801A30A0
	.4byte WorkEvent1__10IWorkEventFv
	.4byte OnFileEvent__10IWorkEventFP10CEventFile
	.4byte WorkEvent3__10IWorkEventFv
	.4byte WorkEvent4__10IWorkEventFv
	.4byte WorkEvent5__10IWorkEventFPv
	.4byte WorkEvent6__10IWorkEventFv
	.4byte WorkEvent7__10IWorkEventFv
	.4byte WorkEvent8__10IWorkEventFv
	.4byte WorkEvent9__10IWorkEventFv
	.4byte WorkEvent10__10IWorkEventFv
	.4byte WorkEvent11__10IWorkEventFv
	.4byte WorkEvent12__10IWorkEventFv
	.4byte WorkEvent13__10IWorkEventFv
	.4byte WorkEvent14__10IWorkEventFv
	.4byte WorkEvent15__10IWorkEventFv
	.4byte WorkEvent16__10IWorkEventFv
	.4byte WorkEvent17__10IWorkEventFv
	.4byte WorkEvent18__10IWorkEventFv
	.4byte WorkEvent19__10IWorkEventFv
	.4byte WorkEvent20__10IWorkEventFv
	.4byte WorkEvent21__10IWorkEventFv
	.4byte WorkEvent22__10IWorkEventFv
	.4byte WorkEvent23__10IWorkEventFv
	.4byte WorkEvent24__10IWorkEventFv
	.4byte WorkEvent25__10IWorkEventFv
	.4byte WorkEvent26__10IWorkEventFv
	.4byte WorkEvent27__10IWorkEventFv
	.4byte WorkEvent28__10IWorkEventFv
	.4byte WorkEvent29__10IWorkEventFv
	.4byte WorkEvent30__10IWorkEventFv
	.4byte WorkEvent31__10IWorkEventFv
	.4byte __RTTI__Q22cf12CTaskCulling
	.4byte 0xFFFFFFA8
	.4byte func_801A30B0
	.4byte func_801A30A8
	.4byte __RTTI__Q22cf12CTaskCulling
	.4byte 0xFFFFFFA4
	.4byte func_801A30D0
	.4byte func_801A30C8
	.4byte func_801A30C0
	.4byte func_801A30B8
	.4byte func_801A2C20
	.4byte func_801A2C40
	.4byte func_801A2C74
	.4byte func_801A2F2C
.endobj __vt__Q22cf12CTaskCulling

.obj cf_CTaskCulling_hierarchy, global
	.4byte __RTTI__15CDoubleListNode
	.4byte 0
	.4byte __RTTI__14CChildListNode
	.4byte 0
	.4byte __RTTI__8CProcess
	.4byte 0
	.4byte "__RTTI__27CTTask<Q22cf12CTaskCulling>"
	.4byte 0
	.4byte 0
.endobj cf_CTaskCulling_hierarchy


.obj "__vt__27CTTask<Q22cf12CTaskCulling>", global
	.4byte "__RTTI__27CTTask<Q22cf12CTaskCulling>"
	.4byte 0
	.4byte "__dt__27CTTask<Q22cf12CTaskCulling>Fv"
	.4byte Reset__14CChildListNodeFv
	.4byte 0
	.4byte 0
	.4byte "func_801A2FA8__27CTTask<Q22cf12CTaskCulling>Fv"
	.4byte "func_801A2FF0__27CTTask<Q22cf12CTaskCulling>Fv"
	.4byte func_80043F20__8CProcessFv
.endobj "__vt__27CTTask<Q22cf12CTaskCulling>"

.obj CTTask_cf_CTaskCulling_hierarchy, global
	.4byte __RTTI__15CDoubleListNode
	.4byte 0
	.4byte __RTTI__14CChildListNode
	.4byte 0
	.4byte __RTTI__8CProcess
	.4byte 0
	.4byte 0
.endobj CTTask_cf_CTaskCulling_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__Q22cf12CTaskCulling, global
	.4byte cf_CTaskCulling_typestr
	.4byte cf_CTaskCulling_hierarchy
.endobj __RTTI__Q22cf12CTaskCulling

.obj "__RTTI__27CTTask<Q22cf12CTaskCulling>", global
	.4byte CTTask_cf_CTaskCulling_typestr
	.4byte CTTask_cf_CTaskCulling_hierarchy
.endobj "__RTTI__27CTTask<Q22cf12CTaskCulling>"

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066A578, global
	.float 5
.endobj float_8066A578


.obj float_8066A57C, global
	.float 30
.endobj float_8066A57C


.obj float_8066A580, global
	.float 50
.endobj float_8066A580


.obj float_8066A584, global
	.float 0
.endobj float_8066A584


.obj float_8066A588, global
	.float 1.0
.endobj float_8066A588


.obj float_8066A58C, global
	.float 0.2
.endobj float_8066A58C

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



.obj lbl_80579018, global
	.skip 0x38
.endobj lbl_80579018

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80666C18, global
	.skip 0x8
.endobj lbl_80666C18

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000F790", local
.hidden "@etb_8000F790"
	.4byte 0x10080000
	.4byte 0x0000008C
	.4byte 0x00000024
	.4byte 0x000000C8
	.4byte 0x00030018
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x00000060
	.4byte __dt__11COccCullingFv
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte __dt__801A2AC0
	.4byte 0x0680001E
	.4byte 0x00000058
	.4byte __dt__10IScnRenderFv
	.4byte 0x0680001E
	.4byte 0x00000054
	.4byte __dt__10IWorkEventFv
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte "__dt__27CTTask<Q22cf12CTaskCulling>Fv"
.endobj "@etb_8000F790"

.obj "@etb_8000F7E4", local
.hidden "@etb_8000F7E4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000F7E4"

.obj "@etb_8000F7EC", local
.hidden "@etb_8000F7EC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000F7EC"

.obj "@etb_8000F7F4", local
.hidden "@etb_8000F7F4"
	.4byte 0x10080000
	.4byte 0x0000004C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x00000060
	.4byte __dt__11COccCullingFv
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte __dt__801A2AC0
	.4byte 0x0680001E
	.4byte 0x00000058
	.4byte __dt__10IScnRenderFv
	.4byte 0x8680001E
	.4byte 0x00000054
	.4byte __dt__10IWorkEventFv
.endobj "@etb_8000F7F4"

.obj "@etb_8000F834", local
.hidden "@etb_8000F834"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_8000F834"

.obj "@etb_8000F83C", local
.hidden "@etb_8000F83C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000F83C"

.obj "@etb_8000F844", local
.hidden "@etb_8000F844"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000F844"

.obj "@etb_8000F84C", local
.hidden "@etb_8000F84C"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8000F84C"

.obj "@etb_8000F854", local
.hidden "@etb_8000F854"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000F854"

.obj "@etb_8000F85C", local
.hidden "@etb_8000F85C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000F85C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002A590", local
.hidden "@eti_8002A590"
	.4byte __ct__cf_CTaskCulling
	.4byte 0x000000F4
	.4byte "@etb_8000F790"
.endobj "@eti_8002A590"

.obj "@eti_8002A59C", local
.hidden "@eti_8002A59C"
	.4byte __dt__801A2AC0
	.4byte 0x00000040
	.4byte "@etb_8000F7E4"
.endobj "@eti_8002A59C"

.obj "@eti_8002A5A8", local
.hidden "@eti_8002A5A8"
	.4byte "__dt__27CTTask<Q22cf12CTaskCulling>Fv"
	.4byte 0x00000058
	.4byte "@etb_8000F7EC"
.endobj "@eti_8002A5A8"

.obj "@eti_8002A5B4", local
.hidden "@eti_8002A5B4"
	.4byte __dt__Q22cf12CTaskCullingFv
	.4byte 0x00000078
	.4byte "@etb_8000F7F4"
.endobj "@eti_8002A5B4"

.obj "@eti_8002A5C0", local
.hidden "@eti_8002A5C0"
	.4byte func_801A2CAC
	.4byte 0x0000018C
	.4byte "@etb_8000F834"
.endobj "@eti_8002A5C0"

.obj "@eti_8002A5CC", local
.hidden "@eti_8002A5CC"
	.4byte func_801A2E40
	.4byte 0x00000060
	.4byte "@etb_8000F83C"
.endobj "@eti_8002A5CC"

.obj "@eti_8002A5D8", local
.hidden "@eti_8002A5D8"
	.4byte func_801A2EA0
	.4byte 0x00000084
	.4byte "@etb_8000F844"
.endobj "@eti_8002A5D8"

.obj "@eti_8002A5E4", local
.hidden "@eti_8002A5E4"
	.4byte func_801A2F30
	.4byte 0x00000078
	.4byte "@etb_8000F84C"
.endobj "@eti_8002A5E4"

.obj "@eti_8002A5F0", local
.hidden "@eti_8002A5F0"
	.4byte "func_801A2FA8__27CTTask<Q22cf12CTaskCulling>Fv"
	.4byte 0x00000048
	.4byte "@etb_8000F854"
.endobj "@eti_8002A5F0"

.obj "@eti_8002A5FC", local
.hidden "@eti_8002A5FC"
	.4byte "func_801A2FF0__27CTTask<Q22cf12CTaskCulling>Fv"
	.4byte 0x00000048
	.4byte "@etb_8000F85C"
.endobj "@eti_8002A5FC"
