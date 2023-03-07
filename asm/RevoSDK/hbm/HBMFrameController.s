.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn init__Q210homebutton15FrameControllerFifff, global
/* 8031F2A0 002E8860  2C 04 00 01 */	cmpwi r4, 1
/* 8031F2A4 002E8864  38 00 00 00 */	li r0, 0
/* 8031F2A8 002E8868  90 83 00 18 */	stw r4, 0x18(r3)
/* 8031F2AC 002E886C  D0 23 00 04 */	stfs f1, 4(r3)
/* 8031F2B0 002E8870  D0 43 00 08 */	stfs f2, 8(r3)
/* 8031F2B4 002E8874  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 8031F2B8 002E8878  90 03 00 14 */	stw r0, 0x14(r3)
/* 8031F2BC 002E887C  98 03 00 1C */	stb r0, 0x1c(r3)
/* 8031F2C0 002E8880  40 82 00 0C */	bne .L_8031F2CC
/* 8031F2C4 002E8884  FC 00 08 18 */	frsp f0, f1
/* 8031F2C8 002E8888  48 00 00 08 */	b .L_8031F2D0
.L_8031F2CC:
/* 8031F2CC 002E888C  FC 00 10 18 */	frsp f0, f2
.L_8031F2D0:
/* 8031F2D0 002E8890  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8031F2D4 002E8894  4E 80 00 20 */	blr 
.endfn init__Q210homebutton15FrameControllerFifff

.balign 16, 0
.fn initFrame__Q210homebutton15FrameControllerFv, global
/* 8031F2E0 002E88A0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8031F2E4 002E88A4  2C 00 00 01 */	cmpwi r0, 1
/* 8031F2E8 002E88A8  40 82 00 0C */	bne .L_8031F2F4
/* 8031F2EC 002E88AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8031F2F0 002E88B0  48 00 00 08 */	b .L_8031F2F8
.L_8031F2F4:
/* 8031F2F4 002E88B4  C0 03 00 08 */	lfs f0, 8(r3)
.L_8031F2F8:
/* 8031F2F8 002E88B8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8031F2FC 002E88BC  4E 80 00 20 */	blr 
.endfn initFrame__Q210homebutton15FrameControllerFv

.balign 16, 0
.fn calc__Q210homebutton15FrameControllerFv, global
/* 8031F300 002E88C0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8031F304 002E88C4  2C 00 00 01 */	cmpwi r0, 1
/* 8031F308 002E88C8  4C 82 00 20 */	bnelr 
/* 8031F30C 002E88CC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8031F310 002E88D0  2C 00 00 00 */	cmpwi r0, 0
/* 8031F314 002E88D4  41 82 00 20 */	beq .L_8031F334
/* 8031F318 002E88D8  2C 00 00 01 */	cmpwi r0, 1
/* 8031F31C 002E88DC  41 82 00 54 */	beq .L_8031F370
/* 8031F320 002E88E0  2C 00 00 02 */	cmpwi r0, 2
/* 8031F324 002E88E4  41 82 00 7C */	beq .L_8031F3A0
/* 8031F328 002E88E8  2C 00 00 03 */	cmpwi r0, 3
/* 8031F32C 002E88EC  41 82 00 A8 */	beq .L_8031F3D4
/* 8031F330 002E88F0  4E 80 00 20 */	blr
.L_8031F334:
/* 8031F334 002E88F4  3C 80 80 52 */	lis r4, lbl_80518668@ha
/* 8031F338 002E88F8  C0 63 00 04 */	lfs f3, 4(r3)
/* 8031F33C 002E88FC  C0 44 86 68 */	lfs f2, lbl_80518668@l(r4)
/* 8031F340 002E8900  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8031F344 002E8904  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8031F348 002E8908  EC 43 10 28 */	fsubs f2, f3, f2
/* 8031F34C 002E890C  EC 01 00 2A */	fadds f0, f1, f0
/* 8031F350 002E8910  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8031F354 002E8914  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8031F358 002E8918  4C 41 13 82 */	cror 2, 1, 2
/* 8031F35C 002E891C  4C 82 00 20 */	bnelr 
/* 8031F360 002E8920  38 00 00 00 */	li r0, 0
/* 8031F364 002E8924  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8031F368 002E8928  90 03 00 14 */	stw r0, 0x14(r3)
/* 8031F36C 002E892C  4E 80 00 20 */	blr
.L_8031F370:
/* 8031F370 002E8930  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8031F374 002E8934  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8031F378 002E8938  C0 03 00 08 */	lfs f0, 8(r3)
/* 8031F37C 002E893C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8031F380 002E8940  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8031F384 002E8944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031F388 002E8948  4C 40 13 82 */	cror 2, 0, 2
/* 8031F38C 002E894C  4C 82 00 20 */	bnelr 
/* 8031F390 002E8950  38 00 00 00 */	li r0, 0
/* 8031F394 002E8954  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8031F398 002E8958  90 03 00 14 */	stw r0, 0x14(r3)
/* 8031F39C 002E895C  4E 80 00 20 */	blr
.L_8031F3A0:
/* 8031F3A0 002E8960  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8031F3A4 002E8964  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8031F3A8 002E8968  C0 23 00 04 */	lfs f1, 4(r3)
/* 8031F3AC 002E896C  EC 42 00 2A */	fadds f2, f2, f0
/* 8031F3B0 002E8970  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8031F3B4 002E8974  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8031F3B8 002E8978  4C 41 13 82 */	cror 2, 1, 2
/* 8031F3BC 002E897C  4C 82 00 20 */	bnelr 
/* 8031F3C0 002E8980  C0 03 00 08 */	lfs f0, 8(r3)
/* 8031F3C4 002E8984  EC 01 00 28 */	fsubs f0, f1, f0
/* 8031F3C8 002E8988  EC 02 00 28 */	fsubs f0, f2, f0
/* 8031F3CC 002E898C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8031F3D0 002E8990  4E 80 00 20 */	blr
.L_8031F3D4:
/* 8031F3D4 002E8994  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8031F3D8 002E8998  2C 00 00 00 */	cmpwi r0, 0
/* 8031F3DC 002E899C  40 82 00 40 */	bne .L_8031F41C
/* 8031F3E0 002E89A0  3C 80 80 52 */	lis r4, lbl_80518668@ha
/* 8031F3E4 002E89A4  C0 63 00 04 */	lfs f3, 4(r3)
/* 8031F3E8 002E89A8  C0 44 86 68 */	lfs f2, lbl_80518668@l(r4)
/* 8031F3EC 002E89AC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8031F3F0 002E89B0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8031F3F4 002E89B4  EC 43 10 28 */	fsubs f2, f3, f2
/* 8031F3F8 002E89B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8031F3FC 002E89BC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8031F400 002E89C0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8031F404 002E89C4  4C 41 13 82 */	cror 2, 1, 2
/* 8031F408 002E89C8  4C 82 00 20 */	bnelr 
/* 8031F40C 002E89CC  38 00 00 01 */	li r0, 1
/* 8031F410 002E89D0  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8031F414 002E89D4  98 03 00 1C */	stb r0, 0x1c(r3)
/* 8031F418 002E89D8  4E 80 00 20 */	blr
.L_8031F41C:
/* 8031F41C 002E89DC  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8031F420 002E89E0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8031F424 002E89E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8031F428 002E89E8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8031F42C 002E89EC  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8031F430 002E89F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031F434 002E89F4  4C 40 13 82 */	cror 2, 0, 2
/* 8031F438 002E89F8  4C 82 00 20 */	bnelr 
/* 8031F43C 002E89FC  38 00 00 00 */	li r0, 0
/* 8031F440 002E8A00  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8031F444 002E8A04  98 03 00 1C */	stb r0, 0x1c(r3)
/* 8031F448 002E8A08  4E 80 00 20 */	blr 
.endfn calc__Q210homebutton15FrameControllerFv

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_80518668, global
	.float 1.0
	.4byte 0
.endobj lbl_80518668

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj homebutton_FrameController_typestr, global
	.asciz "homebutton::FrameController"
	.4byte 0
.endobj homebutton_FrameController_typestr

.obj __RTTI__homebutton_FrameController, global
	.4byte homebutton_FrameController_typestr
	.4byte 0
.endobj __RTTI__homebutton_FrameController