.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn ADXB_SetAhxInSj, global
/* 80385D20 0034F2E0  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 80385D24 0034F2E4  2C 03 00 00 */	cmpwi r3, 0
/* 80385D28 0034F2E8  4D 82 00 20 */	beqlr 
/* 80385D2C 0034F2EC  3C A0 80 5F */	lis r5, ahxsetsjifunc@ha
/* 80385D30 0034F2F0  81 85 89 C8 */	lwz r12, ahxsetsjifunc@l(r5)
/* 80385D34 0034F2F4  7D 89 03 A6 */	mtctr r12
/* 80385D38 0034F2F8  4E 80 04 20 */	bctr 
/* 80385D3C 0034F2FC  4E 80 00 20 */	blr
.endfn ADXB_SetAhxInSj

.fn ADXB_SetAhxDecSmpl, global
/* 80385D40 0034F300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80385D44 0034F304  7C 08 02 A6 */	mflr r0
/* 80385D48 0034F308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80385D4C 0034F30C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80385D50 0034F310  7C 9F 23 78 */	mr r31, r4
/* 80385D54 0034F314  93 C1 00 08 */	stw r30, 8(r1)
/* 80385D58 0034F318  7C 7E 1B 78 */	mr r30, r3
/* 80385D5C 0034F31C  80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 80385D60 0034F320  2C 00 00 00 */	cmpwi r0, 0
/* 80385D64 0034F324  41 82 00 18 */	beq .L_80385D7C
/* 80385D68 0034F328  3C A0 80 5F */	lis r5, ahxsetdecsmplfunc@ha
/* 80385D6C 0034F32C  7C 03 03 78 */	mr r3, r0
/* 80385D70 0034F330  81 85 89 CC */	lwz r12, ahxsetdecsmplfunc@l(r5)
/* 80385D74 0034F334  7D 89 03 A6 */	mtctr r12
/* 80385D78 0034F338  4E 80 04 21 */	bctrl 
.L_80385D7C:
/* 80385D7C 0034F33C  3C 60 2A AB */	lis r3, 0x2AAAAAAB@ha
/* 80385D80 0034F340  93 FE 00 BC */	stw r31, 0xbc(r30)
/* 80385D84 0034F344  38 03 AA AB */	addi r0, r3, 0x2AAAAAAB@l
/* 80385D88 0034F348  7C 00 F8 96 */	mulhw r0, r0, r31
/* 80385D8C 0034F34C  7C 00 26 70 */	srawi r0, r0, 4
/* 80385D90 0034F350  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80385D94 0034F354  7C 00 1A 14 */	add r0, r0, r3
/* 80385D98 0034F358  90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 80385D9C 0034F35C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80385DA0 0034F360  83 C1 00 08 */	lwz r30, 8(r1)
/* 80385DA4 0034F364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80385DA8 0034F368  7C 08 03 A6 */	mtlr r0
/* 80385DAC 0034F36C  38 21 00 10 */	addi r1, r1, 0x10
/* 80385DB0 0034F370  4E 80 00 20 */	blr 
.endfn ADXB_SetAhxDecSmpl

.fn ADXB_ExecOneAhx, global
/* 80385DB4 0034F374  3C 80 80 5F */	lis r4, ahxexecfunc@ha
/* 80385DB8 0034F378  81 84 89 D4 */	lwz r12, ahxexecfunc@l(r4)
/* 80385DBC 0034F37C  7D 89 03 A6 */	mtctr r12
/* 80385DC0 0034F380  4E 80 04 20 */	bctr
.endfn ADXB_ExecOneAhx

.fn ADXB_AhxTermSupply, global
/* 80385DC4 0034F384  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 80385DC8 0034F388  2C 03 00 00 */	cmpwi r3, 0
/* 80385DCC 0034F38C  4D 82 00 20 */	beqlr 
/* 80385DD0 0034F390  3C 80 80 5F */	lis r4, ahxtermsupplyfunc@ha
/* 80385DD4 0034F394  81 84 89 D0 */	lwz r12, ahxtermsupplyfunc@l(r4)
/* 80385DD8 0034F398  7D 89 03 A6 */	mtctr r12
/* 80385DDC 0034F39C  4E 80 04 20 */	bctr 
/* 80385DE0 0034F3A0  4E 80 00 20 */	blr 
.endfn ADXB_AhxTermSupply

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 8
.obj ahxsetsjifunc, global
	.skip 0x4
.endobj ahxsetsjifunc

.obj ahxsetdecsmplfunc, global
	.skip 0x4
.endobj ahxsetdecsmplfunc

.obj ahxtermsupplyfunc, global
	.skip 0x4
.endobj ahxtermsupplyfunc

.obj ahxexecfunc, global
	.skip 0x4
.endobj ahxexecfunc
