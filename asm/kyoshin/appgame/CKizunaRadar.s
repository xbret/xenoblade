.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_80257A8C, global
/* 80257A8C 0022104C  C0 02 AD 58 */	lfs f0, float_8066B0D8@sda21(r2)
/* 80257A90 00221050  3C A0 80 54 */	lis r5, __vt__CKizunaRadar@ha
/* 80257A94 00221054  38 00 00 00 */	li r0, 0
/* 80257A98 00221058  90 83 00 04 */	stw r4, 4(r3)
/* 80257A9C 0022105C  38 A5 AD C0 */	addi r5, r5, __vt__CKizunaRadar@l
/* 80257AA0 00221060  90 A3 00 00 */	stw r5, 0(r3)
/* 80257AA4 00221064  90 03 00 08 */	stw r0, 8(r3)
/* 80257AA8 00221068  90 03 00 0C */	stw r0, 0xc(r3)
/* 80257AAC 0022106C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80257AB0 00221070  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80257AB4 00221074  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80257AB8 00221078  4E 80 00 20 */	blr 
.endfn func_80257A8C

.fn func_80257ABC, global
/* 80257ABC 0022107C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257AC0 00221080  7C 08 02 A6 */	mflr r0
/* 80257AC4 00221084  2C 03 00 00 */	cmpwi r3, 0
/* 80257AC8 00221088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257ACC 0022108C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80257AD0 00221090  7C 7F 1B 78 */	mr r31, r3
/* 80257AD4 00221094  41 82 00 10 */	beq .L_80257AE4
/* 80257AD8 00221098  2C 04 00 00 */	cmpwi r4, 0
/* 80257ADC 0022109C  40 81 00 08 */	ble .L_80257AE4
/* 80257AE0 002210A0  48 1D D1 4D */	bl __dl__FPv
.L_80257AE4:
/* 80257AE4 002210A4  7F E3 FB 78 */	mr r3, r31
/* 80257AE8 002210A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80257AEC 002210AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257AF0 002210B0  7C 08 03 A6 */	mtlr r0
/* 80257AF4 002210B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80257AF8 002210B8  4E 80 00 20 */	blr 
.endfn func_80257ABC

.fn func_80257AFC, global
/* 80257AFC 002210BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257B00 002210C0  7C 08 02 A6 */	mflr r0
/* 80257B04 002210C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257B08 002210C8  BF C1 00 08 */	stmw r30, 8(r1)
/* 80257B0C 002210CC  3F E0 80 51 */	lis r31, CKizunagram_strpool@ha
/* 80257B10 002210D0  7C 7E 1B 78 */	mr r30, r3
/* 80257B14 002210D4  38 BF 81 A8 */	addi r5, r31, CKizunagram_strpool@l
/* 80257B18 002210D8  80 83 00 04 */	lwz r4, 4(r3)
/* 80257B1C 002210DC  38 63 00 08 */	addi r3, r3, 8
/* 80257B20 002210E0  4B ED F3 65 */	bl func_80136E84
/* 80257B24 002210E4  80 DE 00 08 */	lwz r6, 8(r30)
/* 80257B28 002210E8  38 7F 81 A8 */	addi r3, r31, CKizunagram_strpool@l
/* 80257B2C 002210EC  38 83 00 13 */	addi r4, r3, 0x13
/* 80257B30 002210F0  38 A0 00 01 */	li r5, 1
/* 80257B34 002210F4  80 66 00 10 */	lwz r3, 0x10(r6)
/* 80257B38 002210F8  81 83 00 00 */	lwz r12, 0(r3)
/* 80257B3C 002210FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80257B40 00221100  7D 89 03 A6 */	mtctr r12
/* 80257B44 00221104  4E 80 04 21 */	bctrl 
/* 80257B48 00221108  7C 64 1B 78 */	mr r4, r3
/* 80257B4C 0022110C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80257B50 00221110  38 84 00 4C */	addi r4, r4, 0x4c
/* 80257B54 00221114  4B EC FA DD */	bl func_80127630
/* 80257B58 00221118  BB C1 00 08 */	lmw r30, 8(r1)
/* 80257B5C 0022111C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257B60 00221120  7C 08 03 A6 */	mtlr r0
/* 80257B64 00221124  38 21 00 10 */	addi r1, r1, 0x10
/* 80257B68 00221128  4E 80 00 20 */	blr 
.endfn func_80257AFC

.fn func_80257B6C, global
/* 80257B6C 0022112C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80257B70 00221130  7C 08 02 A6 */	mflr r0
/* 80257B74 00221134  90 01 00 74 */	stw r0, 0x74(r1)
/* 80257B78 00221138  39 61 00 50 */	addi r11, r1, 0x50
/* 80257B7C 0022113C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80257B80 00221140  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80257B84 00221144  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80257B88 00221148  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80257B8C 0022114C  48 06 25 D1 */	bl _savegpr_29
/* 80257B90 00221150  80 03 00 08 */	lwz r0, 8(r3)
/* 80257B94 00221154  7C 7D 1B 78 */	mr r29, r3
/* 80257B98 00221158  2C 00 00 00 */	cmpwi r0, 0
/* 80257B9C 0022115C  41 82 01 CC */	beq .L_80257D68
/* 80257BA0 00221160  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80257BA4 00221164  2C 04 00 00 */	cmpwi r4, 0
/* 80257BA8 00221168  41 82 00 80 */	beq .L_80257C28
/* 80257BAC 0022116C  80 A4 00 44 */	lwz r5, 0x44(r4)
/* 80257BB0 00221170  38 61 00 20 */	addi r3, r1, 0x20
/* 80257BB4 00221174  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80257BB8 00221178  38 9D 00 14 */	addi r4, r29, 0x14
/* 80257BBC 0022117C  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80257BC0 00221180  C0 42 AD 5C */	lfs f2, float_8066B0DC@sda21(r2)
/* 80257BC4 00221184  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80257BC8 00221188  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80257BCC 0022118C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80257BD0 00221190  EF E2 08 28 */	fsubs f31, f2, f1
/* 80257BD4 00221194  EF C2 00 28 */	fsubs f30, f2, f0
/* 80257BD8 00221198  4B EC FF ED */	bl func_80127BC4
/* 80257BDC 0022119C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80257BE0 002211A0  3C 60 80 51 */	lis r3, CKizunagram_strpool@ha
/* 80257BE4 002211A4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80257BE8 002211A8  38 63 81 A8 */	addi r3, r3, CKizunagram_strpool@l
/* 80257BEC 002211AC  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80257BF0 002211B0  38 83 00 13 */	addi r4, r3, 0x13
/* 80257BF4 002211B4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80257BF8 002211B8  38 A0 00 01 */	li r5, 1
/* 80257BFC 002211BC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80257C00 002211C0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80257C04 002211C4  80 7D 00 08 */	lwz r3, 8(r29)
/* 80257C08 002211C8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80257C0C 002211CC  81 83 00 00 */	lwz r12, 0(r3)
/* 80257C10 002211D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80257C14 002211D4  7D 89 03 A6 */	mtctr r12
/* 80257C18 002211D8  4E 80 04 21 */	bctrl 
/* 80257C1C 002211DC  38 63 00 4C */	addi r3, r3, 0x4c
/* 80257C20 002211E0  38 81 00 20 */	addi r4, r1, 0x20
/* 80257C24 002211E4  4B EC FA 0D */	bl func_80127630
.L_80257C28:
/* 80257C28 002211E8  83 DD 00 0C */	lwz r30, 0xc(r29)
/* 80257C2C 002211EC  2C 1E 00 00 */	cmpwi r30, 0
/* 80257C30 002211F0  41 82 01 20 */	beq .L_80257D50
/* 80257C34 002211F4  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80257C38 002211F8  3F E0 80 51 */	lis r31, CKizunagram_strpool@ha
/* 80257C3C 002211FC  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80257C40 00221200  3B FF 81 A8 */	addi r31, r31, CKizunagram_strpool@l
/* 80257C44 00221204  90 01 00 34 */	stw r0, 0x34(r1)
/* 80257C48 00221208  38 9F 00 13 */	addi r4, r31, 0x13
/* 80257C4C 0022120C  C0 22 AD 60 */	lfs f1, float_8066B0E0@sda21(r2)
/* 80257C50 00221210  38 A0 00 01 */	li r5, 1
/* 80257C54 00221214  90 61 00 30 */	stw r3, 0x30(r1)
/* 80257C58 00221218  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80257C5C 0022121C  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80257C60 00221220  EC 00 00 72 */	fmuls f0, f0, f1
/* 80257C64 00221224  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80257C68 00221228  90 01 00 38 */	stw r0, 0x38(r1)
/* 80257C6C 0022122C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80257C70 00221230  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80257C74 00221234  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80257C78 00221238  80 7D 00 08 */	lwz r3, 8(r29)
/* 80257C7C 0022123C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80257C80 00221240  81 83 00 00 */	lwz r12, 0(r3)
/* 80257C84 00221244  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80257C88 00221248  7D 89 03 A6 */	mtctr r12
/* 80257C8C 0022124C  4E 80 04 21 */	bctrl 
/* 80257C90 00221250  7C 64 1B 78 */	mr r4, r3
/* 80257C94 00221254  38 61 00 18 */	addi r3, r1, 0x18
/* 80257C98 00221258  38 84 00 4C */	addi r4, r4, 0x4c
/* 80257C9C 0022125C  4B EC FF 29 */	bl func_80127BC4
/* 80257CA0 00221260  80 7D 00 08 */	lwz r3, 8(r29)
/* 80257CA4 00221264  38 9F 00 1D */	addi r4, r31, 0x1d
/* 80257CA8 00221268  38 A0 00 01 */	li r5, 1
/* 80257CAC 0022126C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80257CB0 00221270  81 83 00 00 */	lwz r12, 0(r3)
/* 80257CB4 00221274  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80257CB8 00221278  7D 89 03 A6 */	mtctr r12
/* 80257CBC 0022127C  4E 80 04 21 */	bctrl 
/* 80257CC0 00221280  7C 64 1B 78 */	mr r4, r3
/* 80257CC4 00221284  38 61 00 10 */	addi r3, r1, 0x10
/* 80257CC8 00221288  38 84 00 4C */	addi r4, r4, 0x4c
/* 80257CCC 0022128C  4B EC FE F9 */	bl func_80127BC4
/* 80257CD0 00221290  38 61 00 08 */	addi r3, r1, 8
/* 80257CD4 00221294  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80257CD8 00221298  4B EC FE ED */	bl func_80127BC4
/* 80257CDC 0022129C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80257CE0 002212A0  38 9F 00 13 */	addi r4, r31, 0x13
/* 80257CE4 002212A4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80257CE8 002212A8  38 A0 00 01 */	li r5, 1
/* 80257CEC 002212AC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80257CF0 002212B0  EC 83 00 28 */	fsubs f4, f3, f0
/* 80257CF4 002212B4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80257CF8 002212B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80257CFC 002212BC  EC 62 08 28 */	fsubs f3, f2, f1
/* 80257D00 002212C0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80257D04 002212C4  EC A4 00 24 */	fdivs f5, f4, f0
/* 80257D08 002212C8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80257D0C 002212CC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80257D10 002212D0  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80257D14 002212D4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80257D18 002212D8  EC 43 10 24 */	fdivs f2, f3, f2
/* 80257D1C 002212DC  EC 21 01 72 */	fmuls f1, f1, f5
/* 80257D20 002212E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80257D24 002212E4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80257D28 002212E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80257D2C 002212EC  80 7D 00 08 */	lwz r3, 8(r29)
/* 80257D30 002212F0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80257D34 002212F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80257D38 002212F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80257D3C 002212FC  7D 89 03 A6 */	mtctr r12
/* 80257D40 00221300  4E 80 04 21 */	bctrl 
/* 80257D44 00221304  38 63 00 2C */	addi r3, r3, 0x2c
/* 80257D48 00221308  38 81 00 30 */	addi r4, r1, 0x30
/* 80257D4C 0022130C  4B EC FE 8D */	bl func_80127BD8
.L_80257D50:
/* 80257D50 00221310  80 7D 00 08 */	lwz r3, 8(r29)
/* 80257D54 00221314  38 80 00 00 */	li r4, 0
/* 80257D58 00221318  81 83 00 00 */	lwz r12, 0(r3)
/* 80257D5C 0022131C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80257D60 00221320  7D 89 03 A6 */	mtctr r12
/* 80257D64 00221324  4E 80 04 21 */	bctrl 
.L_80257D68:
/* 80257D68 00221328  39 61 00 50 */	addi r11, r1, 0x50
/* 80257D6C 0022132C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80257D70 00221330  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80257D74 00221334  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80257D78 00221338  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80257D7C 0022133C  48 06 24 2D */	bl _restgpr_29
/* 80257D80 00221340  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80257D84 00221344  7C 08 03 A6 */	mtlr r0
/* 80257D88 00221348  38 21 00 70 */	addi r1, r1, 0x70
/* 80257D8C 0022134C  4E 80 00 20 */	blr 
.endfn func_80257B6C

.fn func_80257D90, global
/* 80257D90 00221350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257D94 00221354  7C 08 02 A6 */	mflr r0
/* 80257D98 00221358  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257D9C 0022135C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80257DA0 00221360  7C 7F 1B 78 */	mr r31, r3
/* 80257DA4 00221364  80 03 00 08 */	lwz r0, 8(r3)
/* 80257DA8 00221368  2C 00 00 00 */	cmpwi r0, 0
/* 80257DAC 0022136C  41 82 00 28 */	beq .L_80257DD4
/* 80257DB0 00221370  41 82 00 1C */	beq .L_80257DCC
/* 80257DB4 00221374  7C 03 03 78 */	mr r3, r0
/* 80257DB8 00221378  38 80 00 01 */	li r4, 1
/* 80257DBC 0022137C  81 83 00 00 */	lwz r12, 0(r3)
/* 80257DC0 00221380  81 8C 00 08 */	lwz r12, 8(r12)
/* 80257DC4 00221384  7D 89 03 A6 */	mtctr r12
/* 80257DC8 00221388  4E 80 04 21 */	bctrl 
.L_80257DCC:
/* 80257DCC 0022138C  38 00 00 00 */	li r0, 0
/* 80257DD0 00221390  90 1F 00 08 */	stw r0, 8(r31)
.L_80257DD4:
/* 80257DD4 00221394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257DD8 00221398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80257DDC 0022139C  7C 08 03 A6 */	mtlr r0
/* 80257DE0 002213A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80257DE4 002213A4  4E 80 00 20 */	blr 
.endfn func_80257D90

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001733C", local
.hidden "@etb_8001733C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001733C"

.obj "@etb_80017344", local
.hidden "@etb_80017344"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80017344"

.obj "@etb_8001734C", local
.hidden "@etb_8001734C"
	.4byte 0x188A0000
	.4byte 0x00000000
.endobj "@etb_8001734C"

.obj "@etb_80017354", local
.hidden "@etb_80017354"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80017354"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002FB1C", local
.hidden "@eti_8002FB1C"
	.4byte func_80257ABC
	.4byte 0x00000040
	.4byte "@etb_8001733C"
.endobj "@eti_8002FB1C"

.obj "@eti_8002FB28", local
.hidden "@eti_8002FB28"
	.4byte func_80257AFC
	.4byte 0x00000070
	.4byte "@etb_80017344"
.endobj "@eti_8002FB28"

.obj "@eti_8002FB34", local
.hidden "@eti_8002FB34"
	.4byte func_80257B6C
	.4byte 0x00000224
	.4byte "@etb_8001734C"
.endobj "@eti_8002FB34"

.obj "@eti_8002FB40", local
.hidden "@eti_8002FB40"
	.4byte func_80257D90
	.4byte 0x00000058
	.4byte "@etb_80017354"
.endobj "@eti_8002FB40"
