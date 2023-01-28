.include "macros.inc"
.file "kyoshin/appgame/makecrystal/CMCEffStart.o"

# 0x80014F8C - 0x80014FB4
.section extab, "a"
.balign 4

.obj "@etb_80014F8C", local
.hidden "@etb_80014F8C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014F8C"

.obj "@etb_80014F94", local
.hidden "@etb_80014F94"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80014F94"

.obj "@etb_80014F9C", local
.hidden "@etb_80014F9C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014F9C"

.obj "@etb_80014FA4", local
.hidden "@etb_80014FA4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014FA4"

.obj "@etb_80014FAC", local
.hidden "@etb_80014FAC"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80014FAC"

# 0x8002DE00 - 0x8002DE3C
.section extabindex, "a"
.balign 4

.obj "@eti_8002DE00", local
.hidden "@eti_8002DE00"
	.4byte fn_80223D70
	.4byte 0x00000040
	.4byte "@etb_80014F8C"
.endobj "@eti_8002DE00"

.obj "@eti_8002DE0C", local
.hidden "@eti_8002DE0C"
	.4byte fn_80223DB0
	.4byte 0x00000090
	.4byte "@etb_80014F94"
.endobj "@eti_8002DE0C"

.obj "@eti_8002DE18", local
.hidden "@eti_8002DE18"
	.4byte fn_80223E40
	.4byte 0x0000005C
	.4byte "@etb_80014F9C"
.endobj "@eti_8002DE18"

.obj "@eti_8002DE24", local
.hidden "@eti_8002DE24"
	.4byte fn_80223EBC
	.4byte 0x00000060
	.4byte "@etb_80014FA4"
.endobj "@eti_8002DE24"

.obj "@eti_8002DE30", local
.hidden "@eti_8002DE30"
	.4byte fn_80223F44
	.4byte 0x0000004C
	.4byte "@etb_80014FAC"
.endobj "@eti_8002DE30"

# 0x80223D40 - 0x80223F90
.text
.balign 4

.fn fn_80223D40, local
/* 80223D40 001ED300  3C C0 80 54 */	lis r6, __vt__CMCEffStart@ha
/* 80223D44 001ED304  38 A0 00 00 */	li r5, 0x0
/* 80223D48 001ED308  38 C6 98 CC */	addi r6, r6, __vt__CMCEffStart@l
/* 80223D4C 001ED30C  38 00 00 01 */	li r0, 0x1
/* 80223D50 001ED310  90 C3 00 00 */	stw r6, 0x0(r3)
/* 80223D54 001ED314  98 A3 00 04 */	stb r5, 0x4(r3)
/* 80223D58 001ED318  98 03 00 05 */	stb r0, 0x5(r3)
/* 80223D5C 001ED31C  90 83 00 08 */	stw r4, 0x8(r3)
/* 80223D60 001ED320  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80223D64 001ED324  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80223D68 001ED328  98 A3 00 14 */	stb r5, 0x14(r3)
/* 80223D6C 001ED32C  4E 80 00 20 */	blr
.endfn fn_80223D40

.fn fn_80223D70, local
/* 80223D70 001ED330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223D74 001ED334  7C 08 02 A6 */	mflr r0
/* 80223D78 001ED338  2C 03 00 00 */	cmpwi r3, 0x0
/* 80223D7C 001ED33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223D80 001ED340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223D84 001ED344  7C 7F 1B 78 */	mr r31, r3
/* 80223D88 001ED348  41 82 00 10 */	beq .L_80223D98
/* 80223D8C 001ED34C  2C 04 00 00 */	cmpwi r4, 0x0
/* 80223D90 001ED350  40 81 00 08 */	ble .L_80223D98
/* 80223D94 001ED354  48 21 0E 99 */	bl __dl__FPv
.L_80223D98:
/* 80223D98 001ED358  7F E3 FB 78 */	mr r3, r31
/* 80223D9C 001ED35C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223DA0 001ED360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223DA4 001ED364  7C 08 03 A6 */	mtlr r0
/* 80223DA8 001ED368  38 21 00 10 */	addi r1, r1, 0x10
/* 80223DAC 001ED36C  4E 80 00 20 */	blr
.endfn fn_80223D70

.fn fn_80223DB0, local
/* 80223DB0 001ED370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223DB4 001ED374  7C 08 02 A6 */	mflr r0
/* 80223DB8 001ED378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223DBC 001ED37C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 80223DC0 001ED380  3F E0 80 50 */	lis r31, lbl_80504CFC@ha
/* 80223DC4 001ED384  7C 7E 1B 78 */	mr r30, r3
/* 80223DC8 001ED388  38 BF 4C FC */	addi r5, r31, lbl_80504CFC@l
/* 80223DCC 001ED38C  80 83 00 08 */	lwz r4, 0x8(r3)
/* 80223DD0 001ED390  38 63 00 0C */	addi r3, r3, 0xc
/* 80223DD4 001ED394  4B F1 30 B1 */	bl fn_80136E84
/* 80223DD8 001ED398  38 DF 4C FC */	addi r6, r31, lbl_80504CFC@l
/* 80223DDC 001ED39C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80223DE0 001ED3A0  80 BE 00 08 */	lwz r5, 0x8(r30)
/* 80223DE4 001ED3A4  38 9E 00 10 */	addi r4, r30, 0x10
/* 80223DE8 001ED3A8  38 C6 00 17 */	addi r6, r6, 0x17
/* 80223DEC 001ED3AC  4B F1 31 1D */	bl fn_80136F08
/* 80223DF0 001ED3B0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80223DF4 001ED3B4  38 A0 00 01 */	li r5, 0x1
/* 80223DF8 001ED3B8  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80223DFC 001ED3BC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80223E00 001ED3C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80223E04 001ED3C4  7D 89 03 A6 */	mtctr r12
/* 80223E08 001ED3C8  4E 80 04 21 */	bctrl
/* 80223E0C 001ED3CC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80223E10 001ED3D0  38 80 00 00 */	li r4, 0x0
/* 80223E14 001ED3D4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80223E18 001ED3D8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80223E1C 001ED3DC  7D 89 03 A6 */	mtctr r12
/* 80223E20 001ED3E0  4E 80 04 21 */	bctrl
/* 80223E24 001ED3E4  38 00 00 01 */	li r0, 0x1
/* 80223E28 001ED3E8  98 1E 00 14 */	stb r0, 0x14(r30)
/* 80223E2C 001ED3EC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 80223E30 001ED3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223E34 001ED3F4  7C 08 03 A6 */	mtlr r0
/* 80223E38 001ED3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80223E3C 001ED3FC  4E 80 00 20 */	blr
.endfn fn_80223DB0

.fn fn_80223E40, local
/* 80223E40 001ED400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223E44 001ED404  7C 08 02 A6 */	mflr r0
/* 80223E48 001ED408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223E4C 001ED40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223E50 001ED410  7C 7F 1B 78 */	mr r31, r3
/* 80223E54 001ED414  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80223E58 001ED418  2C 00 00 00 */	cmpwi r0, 0x0
/* 80223E5C 001ED41C  41 82 00 2C */	beq .L_80223E88
/* 80223E60 001ED420  88 03 00 04 */	lbz r0, 0x4(r3)
/* 80223E64 001ED424  2C 00 00 01 */	cmpwi r0, 0x1
/* 80223E68 001ED428  40 82 00 08 */	bne .L_80223E70
/* 80223E6C 001ED42C  48 00 00 D9 */	bl fn_80223F44
.L_80223E70:
/* 80223E70 001ED430  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80223E74 001ED434  38 80 00 00 */	li r4, 0x0
/* 80223E78 001ED438  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80223E7C 001ED43C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80223E80 001ED440  7D 89 03 A6 */	mtctr r12
/* 80223E84 001ED444  4E 80 04 21 */	bctrl
.L_80223E88:
/* 80223E88 001ED448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223E8C 001ED44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223E90 001ED450  7C 08 03 A6 */	mtlr r0
/* 80223E94 001ED454  38 21 00 10 */	addi r1, r1, 0x10
/* 80223E98 001ED458  4E 80 00 20 */	blr
.endfn fn_80223E40

.fn fn_80223E9C, local
/* 80223E9C 001ED45C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80223EA0 001ED460  2C 00 00 00 */	cmpwi r0, 0x0
/* 80223EA4 001ED464  4D 82 00 20 */	beqlr
/* 80223EA8 001ED468  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80223EAC 001ED46C  38 A0 00 00 */	li r5, 0x0
/* 80223EB0 001ED470  38 C0 00 01 */	li r6, 0x1
/* 80223EB4 001ED474  4B F1 31 84 */	b fn_80137038
/* 80223EB8 001ED478  4E 80 00 20 */	blr
.endfn fn_80223E9C

.fn fn_80223EBC, local
/* 80223EBC 001ED47C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223EC0 001ED480  7C 08 02 A6 */	mflr r0
/* 80223EC4 001ED484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223EC8 001ED488  38 00 00 00 */	li r0, 0x0
/* 80223ECC 001ED48C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223ED0 001ED490  7C 7F 1B 78 */	mr r31, r3
/* 80223ED4 001ED494  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80223ED8 001ED498  98 03 00 14 */	stb r0, 0x14(r3)
/* 80223EDC 001ED49C  2C 04 00 00 */	cmpwi r4, 0x0
/* 80223EE0 001ED4A0  41 82 00 28 */	beq .L_80223F08
/* 80223EE4 001ED4A4  41 82 00 1C */	beq .L_80223F00
/* 80223EE8 001ED4A8  7C 83 23 78 */	mr r3, r4
/* 80223EEC 001ED4AC  38 80 00 01 */	li r4, 0x1
/* 80223EF0 001ED4B0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80223EF4 001ED4B4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80223EF8 001ED4B8  7D 89 03 A6 */	mtctr r12
/* 80223EFC 001ED4BC  4E 80 04 21 */	bctrl
.L_80223F00:
/* 80223F00 001ED4C0  38 00 00 00 */	li r0, 0x0
/* 80223F04 001ED4C4  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80223F08:
/* 80223F08 001ED4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223F0C 001ED4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223F10 001ED4D0  7C 08 03 A6 */	mtlr r0
/* 80223F14 001ED4D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80223F18 001ED4D8  4E 80 00 20 */	blr
.endfn fn_80223EBC

.fn fn_80223F1C, local
/* 80223F1C 001ED4DC  88 63 00 05 */	lbz r3, 0x5(r3)
/* 80223F20 001ED4E0  4E 80 00 20 */	blr
.endfn fn_80223F1C

.fn fn_80223F24, local
/* 80223F24 001ED4E4  38 00 00 01 */	li r0, 0x1
/* 80223F28 001ED4E8  98 03 00 04 */	stb r0, 0x4(r3)
/* 80223F2C 001ED4EC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80223F30 001ED4F0  38 00 00 00 */	li r0, 0x0
/* 80223F34 001ED4F4  C0 02 AA 90 */	lfs f0, lbl_8066AE10@sda21(r2)
/* 80223F38 001ED4F8  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80223F3C 001ED4FC  98 03 00 05 */	stb r0, 0x5(r3)
/* 80223F40 001ED500  4E 80 00 20 */	blr
.endfn fn_80223F24

.fn fn_80223F44, local
/* 80223F44 001ED504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223F48 001ED508  7C 08 02 A6 */	mflr r0
/* 80223F4C 001ED50C  C0 22 AA 94 */	lfs f1, lbl_8066AE14@sda21(r2)
/* 80223F50 001ED510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223F54 001ED514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223F58 001ED518  7C 7F 1B 78 */	mr r31, r3
/* 80223F5C 001ED51C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80223F60 001ED520  4B F1 34 E5 */	bl fn_80137444
/* 80223F64 001ED524  2C 03 00 00 */	cmpwi r3, 0x0
/* 80223F68 001ED528  41 82 00 14 */	beq .L_80223F7C
/* 80223F6C 001ED52C  38 60 00 00 */	li r3, 0x0
/* 80223F70 001ED530  38 00 00 01 */	li r0, 0x1
/* 80223F74 001ED534  98 7F 00 04 */	stb r3, 0x4(r31)
/* 80223F78 001ED538  98 1F 00 05 */	stb r0, 0x5(r31)
.L_80223F7C:
/* 80223F7C 001ED53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223F80 001ED540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223F84 001ED544  7C 08 03 A6 */	mtlr r0
/* 80223F88 001ED548  38 21 00 10 */	addi r1, r1, 0x10
/* 80223F8C 001ED54C  4E 80 00 20 */	blr
.endfn fn_80223F44

# 0x80504C58 - 0x80505110
.rodata
.balign 8

.obj CMCEffCylinder_typestr, global
	.4byte 0x434D4345
	.4byte 0x66664379
	.4byte 0x6C696E64
	.4byte 0x65720000

.obj CMCEffDivide_typestr, global
	.4byte 0x434D4345
	.4byte 0x66664469
	.4byte 0x76696465
	.4byte 0x00000000

.obj CMCEffUpRank_typestr, global
	.4byte 0x434D4345
	.4byte 0x66665570
	.4byte 0x52616E6B
	.4byte 0x00000000

.obj CMCEffCrystal_typestr, global
	.4byte 0x434D4345
	.4byte 0x66664372
	.4byte 0x79737461
	.4byte 0x6C000000

.obj CMCEffFailure_typestr, global
	.4byte 0x434D4345
	.4byte 0x66664661
	.4byte 0x696C7572
	.4byte 0x65000000

.obj CMCEffSuccess_typestr, global
	.4byte 0x434D4345
	.4byte 0x66665375
	.4byte 0x63636573
	.4byte 0x73000000

.obj CMCEffUpPrm_typestr, global
	.4byte 0x434D4345
	.4byte 0x66665570
	.4byte 0x50726D00

.obj CMCEffUpGreen_typestr, global
	.4byte 0x434D4345
	.4byte 0x66665570
	.4byte 0x47726565
	.4byte 0x6E000000

.obj CMCEffUpBlue_typestr, global
	.4byte 0x434D4345
	.4byte 0x66665570
	.4byte 0x426C7565
	.4byte 0x00000000

.obj CMCEffUpRed_typestr, global
	.4byte 0x434D4345
	.4byte 0x66665570
	.4byte 0x52656400

.obj CMCEffStart_typestr, global
	.4byte 0x434D4345
	.4byte 0x66665374
	.4byte 0x61727400
.sym lbl_80504CFC, local
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30365F73
	.4byte 0x74617274
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x6631305F
	.4byte 0x63727930
	.4byte 0x365F7374
	.4byte 0x6172745F
	.4byte 0x696E2E62
	.4byte 0x726C616E
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930325F
	.4byte 0x70727430
	.4byte 0x302E6272
	.4byte 0x6C797400
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30325F70
	.4byte 0x72743030
	.4byte 0x5F696E2E
	.4byte 0x62726C61
	.4byte 0x6E006D66
	.4byte 0x31305F63
	.4byte 0x72793032
	.4byte 0x5F707274
	.4byte 0x30312E62
	.4byte 0x726C7974
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930325F
	.4byte 0x70727430
	.4byte 0x315F696E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6631305F
	.4byte 0x63727930
	.4byte 0x325F7072
	.4byte 0x7430322E
	.4byte 0x62726C79
	.4byte 0x74006D66
	.4byte 0x31305F63
	.4byte 0x72793032
	.4byte 0x5F707274
	.4byte 0x30325F69
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30325F70
	.4byte 0x72743033
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x6631305F
	.4byte 0x63727930
	.4byte 0x325F7072
	.4byte 0x7430335F
	.4byte 0x696E2E62
	.4byte 0x726C616E
	.4byte 0x00747874
	.4byte 0x5F626E73
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930365F
	.4byte 0x636F6D70
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x6631305F
	.4byte 0x63727930
	.4byte 0x365F636F
	.4byte 0x6D705F69
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30365F63
	.4byte 0x6F6D705F
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D66
	.4byte 0x31305F63
	.4byte 0x72793036
	.4byte 0x5F666169
	.4byte 0x6C2E6272
	.4byte 0x6C797400
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30365F66
	.4byte 0x61696C5F
	.4byte 0x696E2E62
	.4byte 0x726C616E
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930325F
	.4byte 0x7472632E
	.4byte 0x62726C79
	.4byte 0x74006D66
	.4byte 0x31305F63
	.4byte 0x72793032
	.4byte 0x5F747263
	.4byte 0x5F696E2E
	.4byte 0x62726C61
	.4byte 0x6E006D66
	.4byte 0x31305F63
	.4byte 0x72793032
	.4byte 0x5F747263
	.4byte 0x5F6F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6631305F
	.4byte 0x63727930
	.4byte 0x335F6372
	.4byte 0x79732E62
	.4byte 0x726C7974
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930335F
	.4byte 0x63727973
	.4byte 0x5F696E2E
	.4byte 0x62726C61
	.4byte 0x6E006D66
	.4byte 0x31305F63
	.4byte 0x72793033
	.4byte 0x5F637279
	.4byte 0x735F6368
	.4byte 0x616E6765
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6631305F
	.4byte 0x63727930
	.4byte 0x335F6372
	.4byte 0x79735F73
	.4byte 0x706C2E62
	.4byte 0x726C616E
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930335F
	.4byte 0x63727973
	.4byte 0x5F6F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6631305F
	.4byte 0x63727930
	.4byte 0x345F6C73
	.4byte 0x742E6272
	.4byte 0x6C797400
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30345F6C
	.4byte 0x73745F72
	.4byte 0x6F6F702E
	.4byte 0x62726C61
	.4byte 0x6E006E75
	.4byte 0x6C5F7472
	.4byte 0x63303100
	.4byte 0x6E616D65
	.4byte 0x004D4E55
	.4byte 0x5F697465
	.4byte 0x6D002573
	.4byte 0x25730074
	.4byte 0x78745F6C
	.4byte 0x6973746E
	.4byte 0x616D6530
	.4byte 0x31006174
	.4byte 0x725F7479
	.4byte 0x7065006D
	.4byte 0x6630305F
	.4byte 0x636F6D30
	.4byte 0x305F646D
	.4byte 0x792E7470
	.4byte 0x6C006D66
	.4byte 0x31305F63
	.4byte 0x72793030
	.4byte 0x5F637279
	.4byte 0x7330312E
	.4byte 0x74706C00
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30305F63
	.4byte 0x72797330
	.4byte 0x322E7470
	.4byte 0x6C006D66
	.4byte 0x31305F63
	.4byte 0x72793030
	.4byte 0x5F637279
	.4byte 0x7330332E
	.4byte 0x74706C00
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30305F63
	.4byte 0x72797330
	.4byte 0x342E7470
	.4byte 0x6C006D66
	.4byte 0x31305F63
	.4byte 0x72793030
	.4byte 0x5F637279
	.4byte 0x7330352E
	.4byte 0x74706C00
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30305F63
	.4byte 0x72797330
	.4byte 0x362E7470
	.4byte 0x6C007069
	.4byte 0x635F6372
	.4byte 0x73007069
	.4byte 0x635F6372
	.4byte 0x73303100
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30355F72
	.4byte 0x616E6B2E
	.4byte 0x62726C79
	.4byte 0x74006D66
	.4byte 0x31305F63
	.4byte 0x72793035
	.4byte 0x5F72616E
	.4byte 0x6B5F696E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6631305F
	.4byte 0x63727930
	.4byte 0x355F7370
	.4byte 0x6C2E6272
	.4byte 0x6C797400
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30355F73
	.4byte 0x706C5F69
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D663130
	.4byte 0x5F637279
	.4byte 0x30365F63
	.4byte 0x686E2E62
	.4byte 0x726C7974
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930365F
	.4byte 0x63686E5F
	.4byte 0x696E2E62
	.4byte 0x726C616E
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930365F
	.4byte 0x63686E5F
	.4byte 0x6368616E
	.4byte 0x67652E62
	.4byte 0x726C616E
	.4byte 0x006D6631
	.4byte 0x305F6372
	.4byte 0x7930365F
	.4byte 0x63686E5F
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E007478
	.4byte 0x745F6E75
	.4byte 0x6D000000
	.4byte 0x00000000

# 0x805397D0 - 0x805398E0
.data
.balign 8

.obj __vt__CMCEffCylinder, global
	.4byte __RTTI__CMCEffCylinder
	.4byte 0x00000000
	.4byte fn_80225D38
	.4byte fn_80225D78

.obj __vt__CMCEffDivide, global
	.4byte __RTTI__CMCEffDivide
	.4byte 0x00000000
	.4byte fn_80225C08
	.4byte fn_80225C48
	.4byte fn_80225CD8

.obj CMCEffDivide_hierarchy, global
	.4byte __RTTI__CMCEffStart
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CMCEffUpRank, global
	.4byte __RTTI__CMCEffUpRank
	.4byte 0x00000000
	.4byte fn_80225AD4
	.4byte fn_80225B14
	.4byte fn_80225BA4

.obj CMCEffUpRank_hierarchy, global
	.4byte __RTTI__CMCEffStart
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CMCEffCrystal, global
	.4byte __RTTI__CMCEffCrystal
	.4byte 0x00000000
	.4byte fn_80224CA4
	.4byte fn_80224CE4

.obj __vt__CMCEffFailure, global
	.4byte __RTTI__CMCEffFailure
	.4byte 0x00000000
	.4byte fn_80224B7C
	.4byte fn_80224BBC
	.4byte fn_80223F24

.obj CMCEffFailure_hierarchy, global
	.4byte __RTTI__CMCEffStart
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CMCEffSuccess, global
	.4byte __RTTI__CMCEffSuccess
	.4byte 0x00000000
	.4byte fn_80224720
	.4byte fn_80224760

.obj __vt__CMCEffUpPrm, global
	.4byte __RTTI__CMCEffUpPrm
	.4byte 0x00000000
	.4byte fn_80224374

.obj __vt__CMCEffUpGreen, global
	.4byte __RTTI__CMCEffUpGreen
	.4byte 0x00000000
	.4byte fn_80224234
	.4byte fn_80224274
	.4byte fn_80224304

.obj CMCEffUpGreen_hierarchy, global
	.4byte __RTTI__CMCEffStart
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CMCEffUpBlue, global
	.4byte __RTTI__CMCEffUpBlue
	.4byte 0x00000000
	.4byte fn_80224100
	.4byte fn_80224140
	.4byte fn_802241D0

.obj CMCEffUpBlue_hierarchy, global
	.4byte __RTTI__CMCEffStart
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CMCEffUpRed, global
	.4byte __RTTI__CMCEffUpRed
	.4byte 0x00000000
	.4byte fn_80223FCC
	.4byte fn_8022400C
	.4byte fn_8022409C

.obj CMCEffUpRed_hierarchy, global
	.4byte __RTTI__CMCEffStart
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CMCEffStart, global
	.4byte __RTTI__CMCEffStart
	.4byte 0x00000000
	.4byte fn_80223D70
	.4byte fn_80223DB0
	.4byte fn_80223F24

# 0x806650F8 - 0x80665150
.section .sdata, "wa"
.balign 8

.obj __RTTI__CMCEffCylinder, global
	.4byte CMCEffCylinder_typestr
	.4byte 0x00000000

.obj __RTTI__CMCEffDivide, global
	.4byte CMCEffDivide_typestr
	.4byte CMCEffDivide_hierarchy

.obj __RTTI__CMCEffUpRank, global
	.4byte CMCEffUpRank_typestr
	.4byte CMCEffUpRank_hierarchy

.obj __RTTI__CMCEffCrystal, global
	.4byte CMCEffCrystal_typestr
	.4byte 0x00000000

.obj __RTTI__CMCEffFailure, global
	.4byte CMCEffFailure_typestr
	.4byte CMCEffFailure_hierarchy

.obj __RTTI__CMCEffSuccess, global
	.4byte CMCEffSuccess_typestr
	.4byte 0x00000000

.obj __RTTI__CMCEffUpPrm, global
	.4byte CMCEffUpPrm_typestr
	.4byte 0x00000000

.obj __RTTI__CMCEffUpGreen, global
	.4byte CMCEffUpGreen_typestr
	.4byte CMCEffUpGreen_hierarchy

.obj __RTTI__CMCEffUpBlue, global
	.4byte CMCEffUpBlue_typestr
	.4byte CMCEffUpBlue_hierarchy

.obj __RTTI__CMCEffUpRed, global
	.4byte CMCEffUpRed_typestr
	.4byte CMCEffUpRed_hierarchy

.obj __RTTI__CMCEffStart, global
	.4byte CMCEffStart_typestr
	.4byte 0x00000000

# 0x8066AE10 - 0x8066AE28
.section .sdata2, "a"
.balign 8
.sym lbl_8066AE10, local
	.4byte 0x00000000
.sym lbl_8066AE14, local
	.4byte 0x3F800000
.sym lbl_8066AE18, local
	.4byte 0x43300000
	.4byte 0x80000000
.sym lbl_8066AE20, local
	.4byte 0x40A00000
	.4byte 0x00000000
