.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__Q34nw4r3snd12FxChorusDpl2Fv, global
/* 80415A0C 003DEFCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80415A10 003DEFD0  7C 08 02 A6 */	mflr r0
/* 80415A14 003DEFD4  3C A0 80 57 */	lis r5, lbl_8056E078@ha
/* 80415A18 003DEFD8  C0 22 C3 E8 */	lfs f1, float_8066C768@sda21(r2)
/* 80415A1C 003DEFDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80415A20 003DEFE0  38 00 00 00 */	li r0, 0
/* 80415A24 003DEFE4  C0 62 C3 E0 */	lfs f3, float_8066C760@sda21(r2)
/* 80415A28 003DEFE8  38 A5 E0 78 */	addi r5, r5, lbl_8056E078@l
/* 80415A2C 003DEFEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80415A30 003DEFF0  7C 7F 1B 78 */	mr r31, r3
/* 80415A34 003DEFF4  C0 42 C3 E4 */	lfs f2, float_8066C764@sda21(r2)
/* 80415A38 003DEFF8  38 81 00 08 */	addi r4, r1, 8
/* 80415A3C 003DEFFC  C0 02 C3 EC */	lfs f0, float_8066C76C@sda21(r2)
/* 80415A40 003DF000  90 03 00 04 */	stw r0, 4(r3)
/* 80415A44 003DF004  90 03 00 08 */	stw r0, 8(r3)
/* 80415A48 003DF008  90 A3 00 00 */	stw r5, 0(r3)
/* 80415A4C 003DF00C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80415A50 003DF010  90 03 00 14 */	stw r0, 0x14(r3)
/* 80415A54 003DF014  90 03 00 18 */	stw r0, 0x18(r3)
/* 80415A58 003DF018  D0 63 00 1C */	stfs f3, 0x1c(r3)
/* 80415A5C 003DF01C  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80415A60 003DF020  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80415A64 003DF024  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80415A68 003DF028  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80415A6C 003DF02C  D0 61 00 08 */	stfs f3, 8(r1)
/* 80415A70 003DF030  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80415A74 003DF034  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80415A78 003DF038  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80415A7C 003DF03C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80415A80 003DF040  48 00 02 25 */	bl SetParam__Q34nw4r3snd12FxChorusDpl2FRCQ44nw4r3snd6detail13FxChorusParam
/* 80415A84 003DF044  7F E3 FB 78 */	mr r3, r31
/* 80415A88 003DF048  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80415A8C 003DF04C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80415A90 003DF050  7C 08 03 A6 */	mtlr r0
/* 80415A94 003DF054  38 21 00 30 */	addi r1, r1, 0x30
/* 80415A98 003DF058  4E 80 00 20 */	blr 
.endfn __ct__Q34nw4r3snd12FxChorusDpl2Fv

.fn GetRequiredMemSize__Q34nw4r3snd12FxChorusDpl2Fv, global
/* 80415A9C 003DF05C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415AA0 003DF060  7C 08 02 A6 */	mflr r0
/* 80415AA4 003DF064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415AA8 003DF068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415AAC 003DF06C  7C 7F 1B 78 */	mr r31, r3
/* 80415AB0 003DF070  38 63 00 30 */	addi r3, r3, 0x30
/* 80415AB4 003DF074  4B EC 39 7D */	bl AXFXChorusExpGetMemSize
/* 80415AB8 003DF078  38 03 00 87 */	addi r0, r3, 0x87
/* 80415ABC 003DF07C  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 80415AC0 003DF080  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80415AC4 003DF084  4B EC 44 8D */	bl AXFXChorusExpGetMemSizeDpl2
/* 80415AC8 003DF088  38 03 00 87 */	addi r0, r3, 0x87
/* 80415ACC 003DF08C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80415AD0 003DF090  7C 03 F8 40 */	cmplw r3, r31
/* 80415AD4 003DF094  40 80 00 08 */	bge .L_80415ADC
/* 80415AD8 003DF098  7F E3 FB 78 */	mr r3, r31
.L_80415ADC:
/* 80415ADC 003DF09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415AE0 003DF0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415AE4 003DF0A4  7C 08 03 A6 */	mtlr r0
/* 80415AE8 003DF0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80415AEC 003DF0AC  4E 80 00 20 */	blr 
.endfn GetRequiredMemSize__Q34nw4r3snd12FxChorusDpl2Fv

.fn AssignWorkBuffer__Q34nw4r3snd12FxChorusDpl2FPvUl, global
/* 80415AF0 003DF0B0  38 63 00 14 */	addi r3, r3, 0x14
/* 80415AF4 003DF0B4  4B FF BA C0 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
.endfn AssignWorkBuffer__Q34nw4r3snd12FxChorusDpl2FPvUl

.fn ReleaseWorkBuffer__Q34nw4r3snd12FxChorusDpl2Fv, global
/* 80415AF8 003DF0B8  38 63 00 14 */	addi r3, r3, 0x14
/* 80415AFC 003DF0BC  4B FF BB 20 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
.endfn ReleaseWorkBuffer__Q34nw4r3snd12FxChorusDpl2Fv

.fn StartUp__Q34nw4r3snd12FxChorusDpl2Fv, global
/* 80415B00 003DF0C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80415B04 003DF0C4  7C 08 02 A6 */	mflr r0
/* 80415B08 003DF0C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80415B0C 003DF0CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80415B10 003DF0D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80415B14 003DF0D4  7C 7E 1B 78 */	mr r30, r3
/* 80415B18 003DF0D8  38 63 00 30 */	addi r3, r3, 0x30
/* 80415B1C 003DF0DC  4B EC 39 15 */	bl AXFXChorusExpGetMemSize
/* 80415B20 003DF0E0  38 03 00 87 */	addi r0, r3, 0x87
/* 80415B24 003DF0E4  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 80415B28 003DF0E8  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80415B2C 003DF0EC  4B EC 44 25 */	bl AXFXChorusExpGetMemSizeDpl2
/* 80415B30 003DF0F0  38 03 00 87 */	addi r0, r3, 0x87
/* 80415B34 003DF0F4  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80415B38 003DF0F8  7C 03 F8 40 */	cmplw r3, r31
/* 80415B3C 003DF0FC  40 80 00 08 */	bge .L_80415B44
/* 80415B40 003DF100  7F E3 FB 78 */	mr r3, r31
.L_80415B44:
/* 80415B44 003DF104  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80415B48 003DF108  2C 04 00 00 */	cmpwi r4, 0
/* 80415B4C 003DF10C  40 82 00 0C */	bne .L_80415B58
/* 80415B50 003DF110  38 00 00 00 */	li r0, 0
/* 80415B54 003DF114  48 00 00 0C */	b .L_80415B60
.L_80415B58:
/* 80415B58 003DF118  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80415B5C 003DF11C  7C 04 00 50 */	subf r0, r4, r0
.L_80415B60:
/* 80415B60 003DF120  7C 03 00 40 */	cmplw r3, r0
/* 80415B64 003DF124  40 81 00 0C */	ble .L_80415B70
/* 80415B68 003DF128  38 60 00 00 */	li r3, 0
/* 80415B6C 003DF12C  48 00 00 A4 */	b .L_80415C10
.L_80415B70:
/* 80415B70 003DF130  4B FF 6E 15 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80415B74 003DF134  4B FF 76 C5 */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 80415B78 003DF138  2C 03 00 02 */	cmpwi r3, 2
/* 80415B7C 003DF13C  40 82 00 44 */	bne .L_80415BC0
/* 80415B80 003DF140  38 00 00 01 */	li r0, 1
/* 80415B84 003DF144  38 7E 00 14 */	addi r3, r30, 0x14
/* 80415B88 003DF148  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80415B8C 003DF14C  38 81 00 0C */	addi r4, r1, 0xc
/* 80415B90 003DF150  38 A1 00 08 */	addi r5, r1, 8
/* 80415B94 003DF154  4B FF BA CD */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80415B98 003DF158  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 80415B9C 003DF15C  4B EC 43 C5 */	bl AXFXChorusExpInitDpl2
/* 80415BA0 003DF160  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80415BA4 003DF164  7C 7F 1B 78 */	mr r31, r3
/* 80415BA8 003DF168  80 A1 00 08 */	lwz r5, 8(r1)
/* 80415BAC 003DF16C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80415BB0 003DF170  4B FF BB 05 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80415BB4 003DF174  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 80415BB8 003DF178  4B EC 43 99 */	bl AXFXChorusExpGetMemSizeDpl2
/* 80415BBC 003DF17C  48 00 00 40 */	b .L_80415BFC
.L_80415BC0:
/* 80415BC0 003DF180  38 00 00 00 */	li r0, 0
/* 80415BC4 003DF184  38 7E 00 14 */	addi r3, r30, 0x14
/* 80415BC8 003DF188  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80415BCC 003DF18C  38 81 00 0C */	addi r4, r1, 0xc
/* 80415BD0 003DF190  38 A1 00 08 */	addi r5, r1, 8
/* 80415BD4 003DF194  4B FF BA 8D */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80415BD8 003DF198  38 7E 00 30 */	addi r3, r30, 0x30
/* 80415BDC 003DF19C  4B EC 38 65 */	bl AXFXChorusExpInit
/* 80415BE0 003DF1A0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80415BE4 003DF1A4  7C 7F 1B 78 */	mr r31, r3
/* 80415BE8 003DF1A8  80 A1 00 08 */	lwz r5, 8(r1)
/* 80415BEC 003DF1AC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80415BF0 003DF1B0  4B FF BA C5 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80415BF4 003DF1B4  38 7E 00 30 */	addi r3, r30, 0x30
/* 80415BF8 003DF1B8  4B EC 38 39 */	bl AXFXChorusExpGetMemSize
.L_80415BFC:
/* 80415BFC 003DF1BC  7C 1F 00 D0 */	neg r0, r31
/* 80415C00 003DF1C0  38 60 00 01 */	li r3, 1
/* 80415C04 003DF1C4  7C 00 FB 78 */	or r0, r0, r31
/* 80415C08 003DF1C8  98 7E 00 0C */	stb r3, 0xc(r30)
/* 80415C0C 003DF1CC  54 03 0F FE */	srwi r3, r0, 0x1f
.L_80415C10:
/* 80415C10 003DF1D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80415C14 003DF1D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80415C18 003DF1D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80415C1C 003DF1DC  7C 08 03 A6 */	mtlr r0
/* 80415C20 003DF1E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80415C24 003DF1E4  4E 80 00 20 */	blr 
.endfn StartUp__Q34nw4r3snd12FxChorusDpl2Fv

.fn Shutdown__Q34nw4r3snd12FxChorusDpl2Fv, global
/* 80415C28 003DF1E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80415C2C 003DF1EC  7C 08 02 A6 */	mflr r0
/* 80415C30 003DF1F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80415C34 003DF1F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80415C38 003DF1F8  7C 7F 1B 78 */	mr r31, r3
/* 80415C3C 003DF1FC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80415C40 003DF200  2C 00 00 00 */	cmpwi r0, 0
/* 80415C44 003DF204  41 82 00 4C */	beq .L_80415C90
/* 80415C48 003DF208  38 00 00 00 */	li r0, 0
/* 80415C4C 003DF20C  38 81 00 0C */	addi r4, r1, 0xc
/* 80415C50 003DF210  98 03 00 0C */	stb r0, 0xc(r3)
/* 80415C54 003DF214  38 63 00 14 */	addi r3, r3, 0x14
/* 80415C58 003DF218  38 A1 00 08 */	addi r5, r1, 8
/* 80415C5C 003DF21C  4B FF BA 05 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80415C60 003DF220  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80415C64 003DF224  2C 00 00 01 */	cmpwi r0, 1
/* 80415C68 003DF228  40 82 00 10 */	bne .L_80415C78
/* 80415C6C 003DF22C  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 80415C70 003DF230  4B EC 47 21 */	bl AXFXChorusExpShutdownDpl2
/* 80415C74 003DF234  48 00 00 0C */	b .L_80415C80
.L_80415C78:
/* 80415C78 003DF238  38 7F 00 30 */	addi r3, r31, 0x30
/* 80415C7C 003DF23C  4B EC 3B D5 */	bl AXFXChorusExpShutdown
.L_80415C80:
/* 80415C80 003DF240  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80415C84 003DF244  38 7F 00 14 */	addi r3, r31, 0x14
/* 80415C88 003DF248  80 A1 00 08 */	lwz r5, 8(r1)
/* 80415C8C 003DF24C  4B FF BA 29 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
.L_80415C90:
/* 80415C90 003DF250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80415C94 003DF254  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80415C98 003DF258  7C 08 03 A6 */	mtlr r0
/* 80415C9C 003DF25C  38 21 00 20 */	addi r1, r1, 0x20
/* 80415CA0 003DF260  4E 80 00 20 */	blr 
.endfn Shutdown__Q34nw4r3snd12FxChorusDpl2Fv

.fn SetParam__Q34nw4r3snd12FxChorusDpl2FRCQ44nw4r3snd6detail13FxChorusParam, global
/* 80415CA4 003DF264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415CA8 003DF268  7C 08 02 A6 */	mflr r0
/* 80415CAC 003DF26C  C0 84 00 00 */	lfs f4, 0(r4)
/* 80415CB0 003DF270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415CB4 003DF274  C0 A2 C3 F0 */	lfs f5, float_8066C770@sda21(r2)
/* 80415CB8 003DF278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415CBC 003DF27C  C0 64 00 04 */	lfs f3, 4(r4)
/* 80415CC0 003DF280  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 80415CC4 003DF284  93 C1 00 08 */	stw r30, 8(r1)
/* 80415CC8 003DF288  7C 7E 1B 78 */	mr r30, r3
/* 80415CCC 003DF28C  C0 44 00 08 */	lfs f2, 8(r4)
/* 80415CD0 003DF290  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80415CD4 003DF294  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80415CD8 003DF298  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 80415CDC 003DF29C  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80415CE0 003DF2A0  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80415CE4 003DF2A4  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80415CE8 003DF2A8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80415CEC 003DF2AC  40 81 00 08 */	ble .L_80415CF4
/* 80415CF0 003DF2B0  48 00 00 18 */	b .L_80415D08
.L_80415CF4:
/* 80415CF4 003DF2B4  C0 A2 C3 F4 */	lfs f5, float_8066C774@sda21(r2)
/* 80415CF8 003DF2B8  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 80415CFC 003DF2BC  40 80 00 08 */	bge .L_80415D04
/* 80415D00 003DF2C0  48 00 00 08 */	b .L_80415D08
.L_80415D04:
/* 80415D04 003DF2C4  FC A0 20 90 */	fmr f5, f4
.L_80415D08:
/* 80415D08 003DF2C8  C0 04 00 04 */	lfs f0, 4(r4)
/* 80415D0C 003DF2CC  C0 22 C3 E8 */	lfs f1, float_8066C768@sda21(r2)
/* 80415D10 003DF2D0  D0 A3 01 64 */	stfs f5, 0x164(r3)
/* 80415D14 003DF2D4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80415D18 003DF2D8  D0 A3 00 B0 */	stfs f5, 0xb0(r3)
/* 80415D1C 003DF2DC  40 81 00 08 */	ble .L_80415D24
/* 80415D20 003DF2E0  48 00 00 18 */	b .L_80415D38
.L_80415D24:
/* 80415D24 003DF2E4  C0 22 C3 EC */	lfs f1, float_8066C76C@sda21(r2)
/* 80415D28 003DF2E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80415D2C 003DF2EC  40 80 00 08 */	bge .L_80415D34
/* 80415D30 003DF2F0  48 00 00 08 */	b .L_80415D38
.L_80415D34:
/* 80415D34 003DF2F4  FC 20 00 90 */	fmr f1, f0
.L_80415D38:
/* 80415D38 003DF2F8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80415D3C 003DF2FC  C0 42 C3 F8 */	lfs f2, float_8066C778@sda21(r2)
/* 80415D40 003DF300  D0 23 01 68 */	stfs f1, 0x168(r3)
/* 80415D44 003DF304  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80415D48 003DF308  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80415D4C 003DF30C  40 81 00 08 */	ble .L_80415D54
/* 80415D50 003DF310  48 00 00 18 */	b .L_80415D68
.L_80415D54:
/* 80415D54 003DF314  C0 42 C3 F4 */	lfs f2, float_8066C774@sda21(r2)
/* 80415D58 003DF318  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80415D5C 003DF31C  40 80 00 08 */	bge .L_80415D64
/* 80415D60 003DF320  48 00 00 08 */	b .L_80415D68
.L_80415D64:
/* 80415D64 003DF324  FC 40 00 90 */	fmr f2, f0
.L_80415D68:
/* 80415D68 003DF328  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80415D6C 003DF32C  C0 22 C3 FC */	lfs f1, float_8066C77C@sda21(r2)
/* 80415D70 003DF330  D0 43 01 6C */	stfs f2, 0x16c(r3)
/* 80415D74 003DF334  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80415D78 003DF338  D0 43 00 B8 */	stfs f2, 0xb8(r3)
/* 80415D7C 003DF33C  40 81 00 08 */	ble .L_80415D84
/* 80415D80 003DF340  48 00 00 18 */	b .L_80415D98
.L_80415D84:
/* 80415D84 003DF344  C0 22 C3 EC */	lfs f1, float_8066C76C@sda21(r2)
/* 80415D88 003DF348  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80415D8C 003DF34C  40 80 00 08 */	bge .L_80415D94
/* 80415D90 003DF350  48 00 00 08 */	b .L_80415D98
.L_80415D94:
/* 80415D94 003DF354  FC 20 00 90 */	fmr f1, f0
.L_80415D98:
/* 80415D98 003DF358  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80415D9C 003DF35C  C0 42 C3 E8 */	lfs f2, float_8066C768@sda21(r2)
/* 80415DA0 003DF360  D0 23 01 70 */	stfs f1, 0x170(r3)
/* 80415DA4 003DF364  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80415DA8 003DF368  D0 23 00 BC */	stfs f1, 0xbc(r3)
/* 80415DAC 003DF36C  40 81 00 08 */	ble .L_80415DB4
/* 80415DB0 003DF370  48 00 00 18 */	b .L_80415DC8
.L_80415DB4:
/* 80415DB4 003DF374  C0 42 C3 EC */	lfs f2, float_8066C76C@sda21(r2)
/* 80415DB8 003DF378  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80415DBC 003DF37C  40 80 00 08 */	bge .L_80415DC4
/* 80415DC0 003DF380  48 00 00 08 */	b .L_80415DC8
.L_80415DC4:
/* 80415DC4 003DF384  FC 40 00 90 */	fmr f2, f0
.L_80415DC8:
/* 80415DC8 003DF388  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80415DCC 003DF38C  38 80 00 00 */	li r4, 0
/* 80415DD0 003DF390  C0 02 C3 EC */	lfs f0, float_8066C76C@sda21(r2)
/* 80415DD4 003DF394  2C 00 00 00 */	cmpwi r0, 0
/* 80415DD8 003DF398  D0 43 01 7C */	stfs f2, 0x17c(r3)
/* 80415DDC 003DF39C  D0 43 00 C8 */	stfs f2, 0xc8(r3)
/* 80415DE0 003DF3A0  90 83 00 C0 */	stw r4, 0xc0(r3)
/* 80415DE4 003DF3A4  90 83 00 C4 */	stw r4, 0xc4(r3)
/* 80415DE8 003DF3A8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80415DEC 003DF3AC  90 83 01 74 */	stw r4, 0x174(r3)
/* 80415DF0 003DF3B0  90 83 01 78 */	stw r4, 0x178(r3)
/* 80415DF4 003DF3B4  D0 03 01 80 */	stfs f0, 0x180(r3)
/* 80415DF8 003DF3B8  40 82 00 0C */	bne .L_80415E04
/* 80415DFC 003DF3BC  38 60 00 01 */	li r3, 1
/* 80415E00 003DF3C0  48 00 00 88 */	b .L_80415E88
.L_80415E04:
/* 80415E04 003DF3C4  38 63 00 30 */	addi r3, r3, 0x30
/* 80415E08 003DF3C8  4B EC 36 29 */	bl AXFXChorusExpGetMemSize
/* 80415E0C 003DF3CC  38 03 00 87 */	addi r0, r3, 0x87
/* 80415E10 003DF3D0  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 80415E14 003DF3D4  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80415E18 003DF3D8  4B EC 41 39 */	bl AXFXChorusExpGetMemSizeDpl2
/* 80415E1C 003DF3DC  38 03 00 87 */	addi r0, r3, 0x87
/* 80415E20 003DF3E0  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80415E24 003DF3E4  7C 03 F8 40 */	cmplw r3, r31
/* 80415E28 003DF3E8  40 80 00 08 */	bge .L_80415E30
/* 80415E2C 003DF3EC  7F E3 FB 78 */	mr r3, r31
.L_80415E30:
/* 80415E30 003DF3F0  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80415E34 003DF3F4  2C 04 00 00 */	cmpwi r4, 0
/* 80415E38 003DF3F8  40 82 00 0C */	bne .L_80415E44
/* 80415E3C 003DF3FC  38 00 00 00 */	li r0, 0
/* 80415E40 003DF400  48 00 00 0C */	b .L_80415E4C
.L_80415E44:
/* 80415E44 003DF404  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80415E48 003DF408  7C 04 00 50 */	subf r0, r4, r0
.L_80415E4C:
/* 80415E4C 003DF40C  7C 03 00 40 */	cmplw r3, r0
/* 80415E50 003DF410  40 81 00 0C */	ble .L_80415E5C
/* 80415E54 003DF414  38 60 00 00 */	li r3, 0
/* 80415E58 003DF418  48 00 00 30 */	b .L_80415E88
.L_80415E5C:
/* 80415E5C 003DF41C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80415E60 003DF420  2C 00 00 01 */	cmpwi r0, 1
/* 80415E64 003DF424  40 82 00 10 */	bne .L_80415E74
/* 80415E68 003DF428  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 80415E6C 003DF42C  4B EC 43 75 */	bl AXFXChorusExpSettingsUpdateDpl2
/* 80415E70 003DF430  48 00 00 0C */	b .L_80415E7C
.L_80415E74:
/* 80415E74 003DF434  38 7E 00 30 */	addi r3, r30, 0x30
/* 80415E78 003DF438  4B EC 38 29 */	bl AXFXChorusExpSettingsUpdate
.L_80415E7C:
/* 80415E7C 003DF43C  7C 03 00 D0 */	neg r0, r3
/* 80415E80 003DF440  7C 00 1B 78 */	or r0, r0, r3
/* 80415E84 003DF444  54 03 0F FE */	srwi r3, r0, 0x1f
.L_80415E88:
/* 80415E88 003DF448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415E8C 003DF44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415E90 003DF450  83 C1 00 08 */	lwz r30, 8(r1)
/* 80415E94 003DF454  7C 08 03 A6 */	mtlr r0
/* 80415E98 003DF458  38 21 00 10 */	addi r1, r1, 0x10
/* 80415E9C 003DF45C  4E 80 00 20 */	blr 
.endfn SetParam__Q34nw4r3snd12FxChorusDpl2FRCQ44nw4r3snd6detail13FxChorusParam

.fn UpdateBuffer__Q34nw4r3snd12FxChorusDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode, global
/* 80415EA0 003DF460  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80415EA4 003DF464  7C 08 02 A6 */	mflr r0
/* 80415EA8 003DF468  7C 64 1B 78 */	mr r4, r3
/* 80415EAC 003DF46C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80415EB0 003DF470  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80415EB4 003DF474  2C 00 00 00 */	cmpwi r0, 0
/* 80415EB8 003DF478  41 82 00 78 */	beq .L_80415F30
/* 80415EBC 003DF47C  38 08 FF FE */	addi r0, r8, -2
/* 80415EC0 003DF480  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80415EC4 003DF484  7C 00 00 34 */	cntlzw r0, r0
/* 80415EC8 003DF488  54 00 D9 7E */	srwi r0, r0, 5
/* 80415ECC 003DF48C  7C 00 18 00 */	cmpw r0, r3
/* 80415ED0 003DF490  40 82 00 60 */	bne .L_80415F30
/* 80415ED4 003DF494  2C 03 00 01 */	cmpwi r3, 1
/* 80415ED8 003DF498  40 82 00 34 */	bne .L_80415F0C
/* 80415EDC 003DF49C  80 05 00 00 */	lwz r0, 0(r5)
/* 80415EE0 003DF4A0  38 61 00 18 */	addi r3, r1, 0x18
/* 80415EE4 003DF4A4  38 84 00 D0 */	addi r4, r4, 0xd0
/* 80415EE8 003DF4A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80415EEC 003DF4AC  80 05 00 04 */	lwz r0, 4(r5)
/* 80415EF0 003DF4B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80415EF4 003DF4B4  80 05 00 08 */	lwz r0, 8(r5)
/* 80415EF8 003DF4B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80415EFC 003DF4BC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80415F00 003DF4C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80415F04 003DF4C4  4B EC 45 1D */	bl AXFXChorusExpCallbackDpl2
/* 80415F08 003DF4C8  48 00 00 28 */	b .L_80415F30
.L_80415F0C:
/* 80415F0C 003DF4CC  80 05 00 00 */	lwz r0, 0(r5)
/* 80415F10 003DF4D0  38 61 00 08 */	addi r3, r1, 8
/* 80415F14 003DF4D4  38 84 00 30 */	addi r4, r4, 0x30
/* 80415F18 003DF4D8  90 01 00 08 */	stw r0, 8(r1)
/* 80415F1C 003DF4DC  80 05 00 04 */	lwz r0, 4(r5)
/* 80415F20 003DF4E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80415F24 003DF4E4  80 05 00 08 */	lwz r0, 8(r5)
/* 80415F28 003DF4E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80415F2C 003DF4EC  4B EC 39 B5 */	bl AXFXChorusExpCallback
.L_80415F30:
/* 80415F30 003DF4F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80415F34 003DF4F4  7C 08 03 A6 */	mtlr r0
/* 80415F38 003DF4F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80415F3C 003DF4FC  4E 80 00 20 */	blr 
.endfn UpdateBuffer__Q34nw4r3snd12FxChorusDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode

.fn OnChangeOutputMode__Q34nw4r3snd12FxChorusDpl2Fv, global
/* 80415F40 003DF500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415F44 003DF504  7C 08 02 A6 */	mflr r0
/* 80415F48 003DF508  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415F4C 003DF50C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415F50 003DF510  7C 7F 1B 78 */	mr r31, r3
/* 80415F54 003DF514  4B FF 6A 31 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80415F58 003DF518  4B FF 72 E1 */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 80415F5C 003DF51C  38 63 FF FE */	addi r3, r3, -2
/* 80415F60 003DF520  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80415F64 003DF524  7C 63 00 34 */	cntlzw r3, r3
/* 80415F68 003DF528  54 63 D9 7E */	srwi r3, r3, 5
/* 80415F6C 003DF52C  7C 00 18 00 */	cmpw r0, r3
/* 80415F70 003DF530  41 82 00 2C */	beq .L_80415F9C
/* 80415F74 003DF534  81 9F 00 00 */	lwz r12, 0(r31)
/* 80415F78 003DF538  7F E3 FB 78 */	mr r3, r31
/* 80415F7C 003DF53C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80415F80 003DF540  7D 89 03 A6 */	mtctr r12
/* 80415F84 003DF544  4E 80 04 21 */	bctrl 
/* 80415F88 003DF548  81 9F 00 00 */	lwz r12, 0(r31)
/* 80415F8C 003DF54C  7F E3 FB 78 */	mr r3, r31
/* 80415F90 003DF550  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80415F94 003DF554  7D 89 03 A6 */	mtctr r12
/* 80415F98 003DF558  4E 80 04 21 */	bctrl 
.L_80415F9C:
/* 80415F9C 003DF55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415FA0 003DF560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415FA4 003DF564  7C 08 03 A6 */	mtlr r0
/* 80415FA8 003DF568  38 21 00 10 */	addi r1, r1, 0x10
/* 80415FAC 003DF56C  4E 80 00 20 */	blr 
.endfn OnChangeOutputMode__Q34nw4r3snd12FxChorusDpl2Fv

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8056E078, global
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte StartUp__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte Shutdown__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte UpdateBuffer__Q34nw4r3snd12FxChorusDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte OnChangeOutputMode__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte AssignWorkBuffer__Q34nw4r3snd12FxChorusDpl2FPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte 0
.endobj lbl_8056E078

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066C760, global
	.float 10.0
.endobj float_8066C760


.obj float_8066C764, global
	.float 0.5
.endobj float_8066C764


.obj float_8066C768, global
	.float 1.0
.endobj float_8066C768


.obj float_8066C76C, global
	.float 0
.endobj float_8066C76C


.obj float_8066C770, global
	.float 50 #0x42480000
.endobj float_8066C770


.obj float_8066C774, global
	.float 0.1 #0x3DCCCCCD
.endobj float_8066C774


.obj float_8066C778, global
	.float 2 #0x40000000
.endobj float_8066C778


.obj float_8066C77C, global
	.4byte 0x3F7D70A4
.endobj float_8066C77C
