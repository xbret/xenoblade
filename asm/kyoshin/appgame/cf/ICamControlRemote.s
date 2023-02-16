.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80274B28, global
/* 80274B28 0023E0E8  4B E1 26 94 */	b func_800871BC
.endfn func_80274B28

.fn func_80274B2C, global
/* 80274B2C 0023E0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274B30 0023E0F0  7C 08 02 A6 */	mflr r0
/* 80274B34 0023E0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274B38 0023E0F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80274B3C 0023E0FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80274B40 0023E100  7C 9E 23 78 */	mr r30, r4
/* 80274B44 0023E104  81 83 00 00 */	lwz r12, 0(r3)
/* 80274B48 0023E108  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274B4C 0023E10C  7D 89 03 A6 */	mtctr r12
/* 80274B50 0023E110  4E 80 04 21 */	bctrl 
/* 80274B54 0023E114  7C 7F 1B 78 */	mr r31, r3
/* 80274B58 0023E118  7F C3 F3 78 */	mr r3, r30
/* 80274B5C 0023E11C  4B DF 8B A5 */	bl func_8006D700
/* 80274B60 0023E120  2C 03 00 00 */	cmpwi r3, 0
/* 80274B64 0023E124  41 82 00 24 */	beq .L_80274B88
/* 80274B68 0023E128  80 1F 00 00 */	lwz r0, 0(r31)
/* 80274B6C 0023E12C  54 03 E7 FF */	rlwinm. r3, r0, 0x1c, 0x1f, 0x1f
/* 80274B70 0023E130  41 82 00 1C */	beq .L_80274B8C
/* 80274B74 0023E134  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80274B78 0023E138  41 82 00 14 */	beq .L_80274B8C
/* 80274B7C 0023E13C  38 60 00 00 */	li r3, 0
/* 80274B80 0023E140  48 00 00 0C */	b .L_80274B8C
/* 80274B84 0023E144  48 00 00 08 */	b .L_80274B8C
.L_80274B88:
/* 80274B88 0023E148  38 60 00 00 */	li r3, 0
.L_80274B8C:
/* 80274B8C 0023E14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274B90 0023E150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80274B94 0023E154  83 C1 00 08 */	lwz r30, 8(r1)
/* 80274B98 0023E158  7C 08 03 A6 */	mtlr r0
/* 80274B9C 0023E15C  38 21 00 10 */	addi r1, r1, 0x10
/* 80274BA0 0023E160  4E 80 00 20 */	blr 
.endfn func_80274B2C

.fn func_80274BA4, global
/* 80274BA4 0023E164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274BA8 0023E168  7C 08 02 A6 */	mflr r0
/* 80274BAC 0023E16C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274BB0 0023E170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80274BB4 0023E174  93 C1 00 08 */	stw r30, 8(r1)
/* 80274BB8 0023E178  7C 9E 23 78 */	mr r30, r4
/* 80274BBC 0023E17C  81 83 00 00 */	lwz r12, 0(r3)
/* 80274BC0 0023E180  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274BC4 0023E184  7D 89 03 A6 */	mtctr r12
/* 80274BC8 0023E188  4E 80 04 21 */	bctrl 
/* 80274BCC 0023E18C  7C 7F 1B 78 */	mr r31, r3
/* 80274BD0 0023E190  7F C3 F3 78 */	mr r3, r30
/* 80274BD4 0023E194  4B DF 8B 2D */	bl func_8006D700
/* 80274BD8 0023E198  2C 03 00 00 */	cmpwi r3, 0
/* 80274BDC 0023E19C  41 82 00 28 */	beq .L_80274C04
/* 80274BE0 0023E1A0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80274BE4 0023E1A4  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80274BE8 0023E1A8  41 82 00 14 */	beq .L_80274BFC
/* 80274BEC 0023E1AC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80274BF0 0023E1B0  41 82 00 0C */	beq .L_80274BFC
/* 80274BF4 0023E1B4  38 60 00 00 */	li r3, 0
/* 80274BF8 0023E1B8  48 00 00 10 */	b .L_80274C08
.L_80274BFC:
/* 80274BFC 0023E1BC  54 63 DF FE */	rlwinm r3, r3, 0x1b, 0x1f, 0x1f
/* 80274C00 0023E1C0  48 00 00 08 */	b .L_80274C08
.L_80274C04:
/* 80274C04 0023E1C4  38 60 00 00 */	li r3, 0
.L_80274C08:
/* 80274C08 0023E1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274C0C 0023E1CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80274C10 0023E1D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80274C14 0023E1D4  7C 08 03 A6 */	mtlr r0
/* 80274C18 0023E1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80274C1C 0023E1DC  4E 80 00 20 */	blr 
.endfn func_80274BA4

.fn func_80274C20, global
/* 80274C20 0023E1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274C24 0023E1E4  7C 08 02 A6 */	mflr r0
/* 80274C28 0023E1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274C2C 0023E1EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80274C30 0023E1F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274C34 0023E1F4  7D 89 03 A6 */	mtctr r12
/* 80274C38 0023E1F8  4E 80 04 21 */	bctrl 
/* 80274C3C 0023E1FC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80274C40 0023E200  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80274C44 0023E204  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 80274C48 0023E208  7C 63 00 78 */	andc r3, r3, r0
/* 80274C4C 0023E20C  7C 03 00 D0 */	neg r0, r3
/* 80274C50 0023E210  7C 00 1B 78 */	or r0, r0, r3
/* 80274C54 0023E214  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80274C58 0023E218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274C5C 0023E21C  7C 08 03 A6 */	mtlr r0
/* 80274C60 0023E220  38 21 00 10 */	addi r1, r1, 0x10
/* 80274C64 0023E224  4E 80 00 20 */	blr 
.endfn func_80274C20

.fn func_80274C68, global
/* 80274C68 0023E228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274C6C 0023E22C  7C 08 02 A6 */	mflr r0
/* 80274C70 0023E230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274C74 0023E234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80274C78 0023E238  93 C1 00 08 */	stw r30, 8(r1)
/* 80274C7C 0023E23C  7C 9E 23 78 */	mr r30, r4
/* 80274C80 0023E240  81 83 00 00 */	lwz r12, 0(r3)
/* 80274C84 0023E244  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274C88 0023E248  7D 89 03 A6 */	mtctr r12
/* 80274C8C 0023E24C  4E 80 04 21 */	bctrl 
/* 80274C90 0023E250  7C 7F 1B 78 */	mr r31, r3
/* 80274C94 0023E254  7F C3 F3 78 */	mr r3, r30
/* 80274C98 0023E258  4B DF 8A 69 */	bl func_8006D700
/* 80274C9C 0023E25C  2C 03 00 00 */	cmpwi r3, 0
/* 80274CA0 0023E260  41 82 00 18 */	beq .L_80274CB8
/* 80274CA4 0023E264  80 1F 00 04 */	lwz r0, 4(r31)
/* 80274CA8 0023E268  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80274CAC 0023E26C  41 82 00 0C */	beq .L_80274CB8
/* 80274CB0 0023E270  38 60 00 01 */	li r3, 1
/* 80274CB4 0023E274  48 00 00 08 */	b .L_80274CBC
.L_80274CB8:
/* 80274CB8 0023E278  38 60 00 00 */	li r3, 0
.L_80274CBC:
/* 80274CBC 0023E27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274CC0 0023E280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80274CC4 0023E284  83 C1 00 08 */	lwz r30, 8(r1)
/* 80274CC8 0023E288  7C 08 03 A6 */	mtlr r0
/* 80274CCC 0023E28C  38 21 00 10 */	addi r1, r1, 0x10
/* 80274CD0 0023E290  4E 80 00 20 */	blr 
.endfn func_80274C68

.fn func_80274CD4, global
/* 80274CD4 0023E294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274CD8 0023E298  7C 08 02 A6 */	mflr r0
/* 80274CDC 0023E29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274CE0 0023E2A0  81 83 00 00 */	lwz r12, 0(r3)
/* 80274CE4 0023E2A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274CE8 0023E2A8  7D 89 03 A6 */	mtctr r12
/* 80274CEC 0023E2AC  4E 80 04 21 */	bctrl 
/* 80274CF0 0023E2B0  80 03 00 00 */	lwz r0, 0(r3)
/* 80274CF4 0023E2B4  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 80274CF8 0023E2B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274CFC 0023E2BC  7C 08 03 A6 */	mtlr r0
/* 80274D00 0023E2C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80274D04 0023E2C4  4E 80 00 20 */	blr 
.endfn func_80274CD4

.fn func_80274D08, global
/* 80274D08 0023E2C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274D0C 0023E2CC  7C 08 02 A6 */	mflr r0
/* 80274D10 0023E2D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274D14 0023E2D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80274D18 0023E2D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274D1C 0023E2DC  7D 89 03 A6 */	mtctr r12
/* 80274D20 0023E2E0  4E 80 04 21 */	bctrl 
/* 80274D24 0023E2E4  80 03 00 00 */	lwz r0, 0(r3)
/* 80274D28 0023E2E8  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 80274D2C 0023E2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274D30 0023E2F0  7C 08 03 A6 */	mtlr r0
/* 80274D34 0023E2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80274D38 0023E2F8  4E 80 00 20 */	blr 
.endfn func_80274D08

.fn func_80274D3C, global
/* 80274D3C 0023E2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274D40 0023E300  7C 08 02 A6 */	mflr r0
/* 80274D44 0023E304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274D48 0023E308  81 83 00 00 */	lwz r12, 0(r3)
/* 80274D4C 0023E30C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274D50 0023E310  7D 89 03 A6 */	mtctr r12
/* 80274D54 0023E314  4E 80 04 21 */	bctrl 
/* 80274D58 0023E318  80 03 00 00 */	lwz r0, 0(r3)
/* 80274D5C 0023E31C  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 80274D60 0023E320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274D64 0023E324  7C 08 03 A6 */	mtlr r0
/* 80274D68 0023E328  38 21 00 10 */	addi r1, r1, 0x10
/* 80274D6C 0023E32C  4E 80 00 20 */	blr 
.endfn func_80274D3C

.fn func_80274D70, global
/* 80274D70 0023E330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274D74 0023E334  7C 08 02 A6 */	mflr r0
/* 80274D78 0023E338  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274D7C 0023E33C  81 83 00 00 */	lwz r12, 0(r3)
/* 80274D80 0023E340  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274D84 0023E344  7D 89 03 A6 */	mtctr r12
/* 80274D88 0023E348  4E 80 04 21 */	bctrl 
/* 80274D8C 0023E34C  80 03 00 00 */	lwz r0, 0(r3)
/* 80274D90 0023E350  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80274D94 0023E354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274D98 0023E358  7C 08 03 A6 */	mtlr r0
/* 80274D9C 0023E35C  38 21 00 10 */	addi r1, r1, 0x10
/* 80274DA0 0023E360  4E 80 00 20 */	blr 
.endfn func_80274D70

.fn func_80274DA4, global
/* 80274DA4 0023E364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274DA8 0023E368  7C 08 02 A6 */	mflr r0
/* 80274DAC 0023E36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274DB0 0023E370  81 83 00 00 */	lwz r12, 0(r3)
/* 80274DB4 0023E374  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274DB8 0023E378  7D 89 03 A6 */	mtctr r12
/* 80274DBC 0023E37C  4E 80 04 21 */	bctrl 
/* 80274DC0 0023E380  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80274DC4 0023E384  54 03 AF FE */	rlwinm r3, r0, 0x15, 0x1f, 0x1f
/* 80274DC8 0023E388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274DCC 0023E38C  7C 08 03 A6 */	mtlr r0
/* 80274DD0 0023E390  38 21 00 10 */	addi r1, r1, 0x10
/* 80274DD4 0023E394  4E 80 00 20 */	blr 
.endfn func_80274DA4

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800184C0", local
.hidden "@etb_800184C0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800184C0"

.obj "@etb_800184C8", local
.hidden "@etb_800184C8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800184C8"

.obj "@etb_800184D0", local
.hidden "@etb_800184D0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800184D0"

.obj "@etb_800184D8", local
.hidden "@etb_800184D8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800184D8"

.obj "@etb_800184E0", local
.hidden "@etb_800184E0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800184E0"

.obj "@etb_800184E8", local
.hidden "@etb_800184E8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800184E8"

.obj "@etb_800184F0", local
.hidden "@etb_800184F0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800184F0"

.obj "@etb_800184F8", local
.hidden "@etb_800184F8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800184F8"

.obj "@etb_80018500", local
.hidden "@etb_80018500"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018500"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80030ADC", local
.hidden "@eti_80030ADC"
	.4byte func_80274B2C
	.4byte 0x00000078
	.4byte "@etb_800184C0"
.endobj "@eti_80030ADC"

.obj "@eti_80030AE8", local
.hidden "@eti_80030AE8"
	.4byte func_80274BA4
	.4byte 0x0000007C
	.4byte "@etb_800184C8"
.endobj "@eti_80030AE8"

.obj "@eti_80030AF4", local
.hidden "@eti_80030AF4"
	.4byte func_80274C20
	.4byte 0x00000048
	.4byte "@etb_800184D0"
.endobj "@eti_80030AF4"

.obj "@eti_80030B00", local
.hidden "@eti_80030B00"
	.4byte func_80274C68
	.4byte 0x0000006C
	.4byte "@etb_800184D8"
.endobj "@eti_80030B00"

.obj "@eti_80030B0C", local
.hidden "@eti_80030B0C"
	.4byte func_80274CD4
	.4byte 0x00000034
	.4byte "@etb_800184E0"
.endobj "@eti_80030B0C"

.obj "@eti_80030B18", local
.hidden "@eti_80030B18"
	.4byte func_80274D08
	.4byte 0x00000034
	.4byte "@etb_800184E8"
.endobj "@eti_80030B18"

.obj "@eti_80030B24", local
.hidden "@eti_80030B24"
	.4byte func_80274D3C
	.4byte 0x00000034
	.4byte "@etb_800184F0"
.endobj "@eti_80030B24"

.obj "@eti_80030B30", local
.hidden "@eti_80030B30"
	.4byte func_80274D70
	.4byte 0x00000034
	.4byte "@etb_800184F8"
.endobj "@eti_80030B30"

.obj "@eti_80030B3C", local
.hidden "@eti_80030B3C"
	.4byte func_80274DA4
	.4byte 0x00000034
	.4byte "@etb_80018500"
.endobj "@eti_80030B3C"
