.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_800BF98C
func_800BF98C:
/* 800BF98C 00088F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF990 00088F50  7C 08 02 A6 */	mflr r0
/* 800BF994 00088F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF998 00088F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BF99C 00088F5C  7C 7F 1B 78 */	mr r31, r3
/* 800BF9A0 00088F60  4B FF C2 AD */	bl func_800BBC4C
/* 800BF9A4 00088F64  3C 60 80 53 */	lis r3, __vt__cf_CfObjectObj@ha
/* 800BF9A8 00088F68  38 00 00 00 */	li r0, 0
/* 800BF9AC 00088F6C  38 63 D3 1C */	addi r3, r3, __vt__cf_CfObjectObj@l
/* 800BF9B0 00088F70  90 7F 00 00 */	stw r3, 0(r31)
/* 800BF9B4 00088F74  7F E3 FB 78 */	mr r3, r31
/* 800BF9B8 00088F78  38 80 00 00 */	li r4, 0
/* 800BF9BC 00088F7C  B0 1F 07 16 */	sth r0, 0x716(r31)
/* 800BF9C0 00088F80  38 AD 84 90 */	addi r5, r13, __RTTI__cf_CfObjectTbox@sda21
/* 800BF9C4 00088F84  38 CD 84 98 */	addi r6, r13, __RTTI__cf_CfObjectObj@sda21
/* 800BF9C8 00088F88  38 E0 00 00 */	li r7, 0
/* 800BF9CC 00088F8C  48 1F A3 B9 */	bl __dynamic_cast
/* 800BF9D0 00088F90  2C 03 00 00 */	cmpwi r3, 0
/* 800BF9D4 00088F94  40 82 00 28 */	bne .L_800BF9FC
/* 800BF9D8 00088F98  4B FA 26 25 */	bl func_80061FFC
/* 800BF9DC 00088F9C  7C 64 1B 78 */	mr r4, r3
/* 800BF9E0 00088FA0  38 60 00 1C */	li r3, 0x1c
/* 800BF9E4 00088FA4  48 37 50 79 */	bl mm_malloc
/* 800BF9E8 00088FA8  2C 03 00 00 */	cmpwi r3, 0
/* 800BF9EC 00088FAC  41 82 00 0C */	beq .L_800BF9F8
/* 800BF9F0 00088FB0  7F E4 FB 78 */	mr r4, r31
/* 800BF9F4 00088FB4  48 0A CD FD */	bl func_8016C7F0
.L_800BF9F8:
/* 800BF9F8 00088FB8  90 7F 00 B0 */	stw r3, 0xb0(r31)
.L_800BF9FC:
/* 800BF9FC 00088FBC  7F E3 FB 78 */	mr r3, r31
/* 800BFA00 00088FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BFA04 00088FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFA08 00088FC8  7C 08 03 A6 */	mtlr r0
/* 800BFA0C 00088FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFA10 00088FD0  4E 80 00 20 */	blr 

.global func_800BFA14
func_800BFA14:
/* 800BFA14 00088FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFA18 00088FD8  7C 08 02 A6 */	mflr r0
/* 800BFA1C 00088FDC  2C 03 00 00 */	cmpwi r3, 0
/* 800BFA20 00088FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BFA24 00088FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BFA28 00088FE8  7C 9F 23 78 */	mr r31, r4
/* 800BFA2C 00088FEC  93 C1 00 08 */	stw r30, 8(r1)
/* 800BFA30 00088FF0  7C 7E 1B 78 */	mr r30, r3
/* 800BFA34 00088FF4  41 82 00 38 */	beq .L_800BFA6C
/* 800BFA38 00088FF8  3D 80 80 53 */	lis r12, __vt__cf_CfObjectObj@ha
/* 800BFA3C 00088FFC  39 8C D3 1C */	addi r12, r12, __vt__cf_CfObjectObj@l
/* 800BFA40 00089000  91 83 00 00 */	stw r12, 0(r3)
/* 800BFA44 00089004  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 800BFA48 00089008  7D 89 03 A6 */	mtctr r12
/* 800BFA4C 0008900C  4E 80 04 21 */	bctrl 
/* 800BFA50 00089010  7F C3 F3 78 */	mr r3, r30
/* 800BFA54 00089014  38 80 00 00 */	li r4, 0
/* 800BFA58 00089018  4B FF C3 15 */	bl func_800BBD6C
/* 800BFA5C 0008901C  2C 1F 00 00 */	cmpwi r31, 0
/* 800BFA60 00089020  40 81 00 0C */	ble .L_800BFA6C
/* 800BFA64 00089024  7F C3 F3 78 */	mr r3, r30
/* 800BFA68 00089028  48 37 51 C5 */	bl __dl__FPv
.L_800BFA6C:
/* 800BFA6C 0008902C  7F C3 F3 78 */	mr r3, r30
/* 800BFA70 00089030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BFA74 00089034  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BFA78 00089038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFA7C 0008903C  7C 08 03 A6 */	mtlr r0
/* 800BFA80 00089040  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFA84 00089044  4E 80 00 20 */	blr 

.global func_800BFA88
func_800BFA88:
/* 800BFA88 00089048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFA8C 0008904C  7C 08 02 A6 */	mflr r0
/* 800BFA90 00089050  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BFA94 00089054  4B FF AE 6D */	bl func_800BA900
/* 800BFA98 00089058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFA9C 0008905C  38 60 00 01 */	li r3, 1
/* 800BFAA0 00089060  7C 08 03 A6 */	mtlr r0
/* 800BFAA4 00089064  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFAA8 00089068  4E 80 00 20 */	blr 

.global func_800BFAAC
func_800BFAAC:
/* 800BFAAC 0008906C  4E 80 00 20 */	blr 

.global func_800BFAB0
func_800BFAB0:
/* 800BFAB0 00089070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BFAB4 00089074  7C 08 02 A6 */	mflr r0
/* 800BFAB8 00089078  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BFABC 0008907C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BFAC0 00089080  7C BF 2B 78 */	mr r31, r5
/* 800BFAC4 00089084  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800BFAC8 00089088  7C 9E 23 78 */	mr r30, r4
/* 800BFACC 0008908C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800BFAD0 00089090  7C 7D 1B 78 */	mr r29, r3
/* 800BFAD4 00089094  81 83 00 00 */	lwz r12, 0(r3)
/* 800BFAD8 00089098  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 800BFADC 0008909C  7D 89 03 A6 */	mtctr r12
/* 800BFAE0 000890A0  4E 80 04 21 */	bctrl 
/* 800BFAE4 000890A4  81 9D 00 00 */	lwz r12, 0(r29)
/* 800BFAE8 000890A8  7F A3 EB 78 */	mr r3, r29
/* 800BFAEC 000890AC  81 8C 01 78 */	lwz r12, 0x178(r12)
/* 800BFAF0 000890B0  7D 89 03 A6 */	mtctr r12
/* 800BFAF4 000890B4  4E 80 04 21 */	bctrl 
/* 800BFAF8 000890B8  38 00 00 00 */	li r0, 0
/* 800BFAFC 000890BC  90 1D 00 90 */	stw r0, 0x90(r29)
/* 800BFB00 000890C0  7F A3 EB 78 */	mr r3, r29
/* 800BFB04 000890C4  7F C5 F3 78 */	mr r5, r30
/* 800BFB08 000890C8  90 1D 00 94 */	stw r0, 0x94(r29)
/* 800BFB0C 000890CC  38 80 00 01 */	li r4, 1
/* 800BFB10 000890D0  81 9D 00 00 */	lwz r12, 0(r29)
/* 800BFB14 000890D4  81 8C 01 44 */	lwz r12, 0x144(r12)
/* 800BFB18 000890D8  7D 89 03 A6 */	mtctr r12
/* 800BFB1C 000890DC  4E 80 04 21 */	bctrl 
/* 800BFB20 000890E0  81 9D 00 00 */	lwz r12, 0(r29)
/* 800BFB24 000890E4  7F A3 EB 78 */	mr r3, r29
/* 800BFB28 000890E8  7F E5 FB 78 */	mr r5, r31
/* 800BFB2C 000890EC  38 80 00 00 */	li r4, 0
/* 800BFB30 000890F0  81 8C 01 44 */	lwz r12, 0x144(r12)
/* 800BFB34 000890F4  7D 89 03 A6 */	mtctr r12
/* 800BFB38 000890F8  4E 80 04 21 */	bctrl 
/* 800BFB3C 000890FC  80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 800BFB40 00089100  38 00 00 01 */	li r0, 1
/* 800BFB44 00089104  2C 1E 00 00 */	cmpwi r30, 0
/* 800BFB48 00089108  B0 03 00 08 */	sth r0, 8(r3)
/* 800BFB4C 0008910C  41 82 00 10 */	beq .L_800BFB5C
/* 800BFB50 00089110  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 800BFB54 00089114  60 00 00 20 */	ori r0, r0, 0x20
/* 800BFB58 00089118  90 1D 00 6C */	stw r0, 0x6c(r29)
.L_800BFB5C:
/* 800BFB5C 0008911C  2C 1F 00 00 */	cmpwi r31, 0
/* 800BFB60 00089120  41 82 00 10 */	beq .L_800BFB70
/* 800BFB64 00089124  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 800BFB68 00089128  60 00 00 10 */	ori r0, r0, 0x10
/* 800BFB6C 0008912C  90 1D 00 6C */	stw r0, 0x6c(r29)
.L_800BFB70:
/* 800BFB70 00089130  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BFB74 00089134  38 60 00 01 */	li r3, 1
/* 800BFB78 00089138  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800BFB7C 0008913C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800BFB80 00089140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BFB84 00089144  7C 08 03 A6 */	mtlr r0
/* 800BFB88 00089148  38 21 00 20 */	addi r1, r1, 0x20
/* 800BFB8C 0008914C  4E 80 00 20 */	blr 

.global func_800BFB90
func_800BFB90:
/* 800BFB90 00089150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFB94 00089154  7C 08 02 A6 */	mflr r0
/* 800BFB98 00089158  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BFB9C 0008915C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BFBA0 00089160  7C 7F 1B 78 */	mr r31, r3
/* 800BFBA4 00089164  4B FF C2 69 */	bl func_800BBE0C
/* 800BFBA8 00089168  81 9F 00 00 */	lwz r12, 0(r31)
/* 800BFBAC 0008916C  7F E3 FB 78 */	mr r3, r31
/* 800BFBB0 00089170  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 800BFBB4 00089174  7D 89 03 A6 */	mtctr r12
/* 800BFBB8 00089178  4E 80 04 21 */	bctrl 
/* 800BFBBC 0008917C  2C 03 00 00 */	cmpwi r3, 0
/* 800BFBC0 00089180  41 82 00 20 */	beq .L_800BFBE0
/* 800BFBC4 00089184  A0 9F 07 16 */	lhz r4, 0x716(r31)
/* 800BFBC8 00089188  2C 04 00 00 */	cmpwi r4, 0
/* 800BFBCC 0008918C  41 82 00 14 */	beq .L_800BFBE0
/* 800BFBD0 00089190  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 800BFBD4 00089194  48 00 A9 AD */	bl func_800CA580
/* 800BFBD8 00089198  38 00 00 00 */	li r0, 0
/* 800BFBDC 0008919C  B0 1F 07 16 */	sth r0, 0x716(r31)
.L_800BFBE0:
/* 800BFBE0 000891A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFBE4 000891A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BFBE8 000891A8  7C 08 03 A6 */	mtlr r0
/* 800BFBEC 000891AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFBF0 000891B0  4E 80 00 20 */	blr 

.global func_800BFBF4
func_800BFBF4:
/* 800BFBF4 000891B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFBF8 000891B8  7C 08 02 A6 */	mflr r0
/* 800BFBFC 000891BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BFC00 000891C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BFC04 000891C4  7C 9F 23 78 */	mr r31, r4
/* 800BFC08 000891C8  93 C1 00 08 */	stw r30, 8(r1)
/* 800BFC0C 000891CC  7C 7E 1B 78 */	mr r30, r3
/* 800BFC10 000891D0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800BFC14 000891D4  2C 00 00 00 */	cmpwi r0, 0
/* 800BFC18 000891D8  41 82 00 38 */	beq .L_800BFC50
/* 800BFC1C 000891DC  81 83 00 00 */	lwz r12, 0(r3)
/* 800BFC20 000891E0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 800BFC24 000891E4  7D 89 03 A6 */	mtctr r12
/* 800BFC28 000891E8  4E 80 04 21 */	bctrl 
/* 800BFC2C 000891EC  2C 03 00 00 */	cmpwi r3, 0
/* 800BFC30 000891F0  41 82 00 1C */	beq .L_800BFC4C
/* 800BFC34 000891F4  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 800BFC38 000891F8  7F E4 FB 78 */	mr r4, r31
/* 800BFC3C 000891FC  48 00 A9 45 */	bl func_800CA580
/* 800BFC40 00089200  38 00 00 00 */	li r0, 0
/* 800BFC44 00089204  B0 1E 07 16 */	sth r0, 0x716(r30)
/* 800BFC48 00089208  48 00 00 08 */	b .L_800BFC50
.L_800BFC4C:
/* 800BFC4C 0008920C  B3 FE 07 16 */	sth r31, 0x716(r30)
.L_800BFC50:
/* 800BFC50 00089210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFC54 00089214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BFC58 00089218  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BFC5C 0008921C  7C 08 03 A6 */	mtlr r0
/* 800BFC60 00089220  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFC64 00089224  4E 80 00 20 */	blr 

.global func_800BFC68
func_800BFC68:
/* 800BFC68 00089228  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 800BFC6C 0008922C  41 86 00 1C */	beq cr1, .L_800BFC88
/* 800BFC70 00089230  80 03 00 64 */	lwz r0, 0x64(r3)
/* 800BFC74 00089234  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BFC78 00089238  41 82 00 10 */	beq .L_800BFC88
/* 800BFC7C 0008923C  4D 86 00 20 */	beqlr cr1
/* 800BFC80 00089240  38 63 C1 64 */	addi r3, r3, -16028
/* 800BFC84 00089244  4E 80 00 20 */	blr
.L_800BFC88:
/* 800BFC88 00089248  38 60 00 00 */	li r3, 0
/* 800BFC8C 0008924C  4E 80 00 20 */	blr 


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CfObjectTbox_typestr
cf_CfObjectTbox_typestr:
	.asciz "cf::CfObjectTbox"
	.balign 4
	.4byte 0

.global cf_CfObjectObj_typestr
cf_CfObjectObj_typestr:
	.asciz "cf::CfObjectObj"

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global cf_CfObjectTbox_hierarchy
cf_CfObjectTbox_hierarchy:
	.4byte __RTTI__cf_CObjectState
	.4byte 0
	.4byte __RTTI__cf_CObjectParam
	.4byte 0
	.4byte __RTTI__cf_CfObject
	.4byte 0
	.4byte __RTTI__cf_CfObjectModel
	.4byte 0
	.4byte __RTTI__cf_CfObjectMove
	.4byte 0
	.4byte __RTTI__cf_CfObjectObj
	.4byte 0
	.4byte 0


.global __vt__cf_CfObjectObj
__vt__cf_CfObjectObj:
	.4byte __RTTI__cf_CfObjectObj
	.4byte 0
	.4byte func_8003DC64
	.4byte func_8003CB58
	.4byte func_8003DD34
	.4byte func_800A34A8
	.4byte func_8009489C
	.4byte func_800A349C
	.4byte func_80086B4C
	.4byte func_8003CB20
	.4byte func_8003D98C
	.4byte func_8003D8C0
	.4byte func_8003D7B0
	.4byte func_800A3494
	.4byte func_800A3488
	.4byte func_8003C7F8
	.4byte func_800BE0F4
	.4byte func_800A34B4
	.4byte func_800BFAAC
	.4byte func_8003E664
	.4byte func_8003DC74
	.4byte func_800BFA14
	.4byte func_800BFA88
	.4byte func_800AC75C
	.4byte func_800BFB90
	.4byte func_800BC758
	.4byte func_800BC040
	.4byte func_800BC020
	.4byte func_800BABBC
	.4byte func_800BE984
	.4byte func_800BE998
	.4byte func_800AC5E4
	.4byte func_800BE9E4
	.4byte func_800BE088
	.4byte func_800BE1C4
	.4byte func_800BE1F8
	.4byte func_800BE214
	.4byte func_800BE248
	.4byte func_8008F9CC
	.4byte func_800BDB6C
	.4byte func_800BB0E8
	.4byte func_800AC5A8
	.4byte func_800BDBC0
	.4byte func_800BDE8C
	.4byte func_800BB168
	.4byte func_800BDC24
	.4byte func_800BDD58
	.4byte func_800BDEC4
	.4byte func_800BB200
	.4byte func_800BDF78
	.4byte func_800BDFE0
	.4byte func_800BB290
	.4byte func_800BE058
	.4byte func_800BE070
	.4byte func_800BB2E4
	.4byte func_800BB318
	.4byte func_800BB338
	.4byte func_800BEC4C
	.4byte func_800BECF8
	.4byte func_800BEE34
	.4byte func_800BEF20
	.4byte func_800AC570
	.4byte func_800BF014
	.4byte func_800BF100
	.4byte func_800AC558
	.4byte func_800BF1F4
	.4byte func_800BD774
	.4byte func_800BD860
	.4byte func_8004ABD8
	.4byte func_800BDA10
	.4byte func_8003BD64
	.4byte func_8003BD70
	.4byte func_800BB3AC
	.4byte func_800BB454
	.4byte func_800BB4FC
	.4byte func_800BB534
	.4byte func_800BB364
	.4byte func_800BE0B8
	.4byte func_8008E064
	.4byte func_800AEAE4
	.4byte func_80087EE4
	.4byte func_800BE9BC
	.4byte func_800BE9D0
	.4byte func_800BACDC
	.4byte func_800BDA9C
	.4byte func_800BDAF4
	.4byte func_800BEB28
	.4byte func_800BB684
	.4byte func_800BB974
	.4byte func_800BB954
	.4byte func_800BB708
	.4byte func_80094FF8
	.4byte func_800BB730
	.4byte func_80094FF0
	.4byte func_800BC0DC
	.4byte func_800BC21C
	.4byte func_800BB5F0
	.4byte func_800B0618
	.4byte func_800B0610
	.4byte func_800BEC30
	.4byte func_800BBABC
	.4byte func_800BBA9C
	.4byte func_800B0608
	.4byte func_800BB738
	.4byte func_800B0600
	.4byte func_800BB740
	.4byte func_800BB748
	.4byte func_800BB7B0
	.4byte func_800BB914
	.4byte func_8003E3C8
	.4byte func_800B05F8
	.4byte func_800BE7AC
	.4byte func_800BEB98
	.4byte func_800B05EC
	.4byte func_800BC364
	.4byte func_800BC2E0
	.4byte func_800BEA40
	.4byte func_800BE0DC
	.4byte func_80092CA8
	.4byte func_80093924
	.4byte func_800BE264
	.4byte func_800BE278
	.4byte func_800BE2A0
	.4byte func_800BE2D8
	.4byte func_800BE2EC
	.4byte func_800BE300
	.4byte func_800BE314
	.4byte func_800BE328
	.4byte func_800B4B04
	.4byte func_800BE474
	.4byte func_800BE504
	.4byte func_800BE57C
	.4byte func_800BE6B4
	.4byte func_800BE734
	.4byte func_800BE5F4
	.4byte func_800BE65C
	.4byte func_800BE858

.global cf_CfObjectObj_hierarchy
cf_CfObjectObj_hierarchy:
	.4byte __RTTI__cf_CObjectState
	.4byte 0
	.4byte __RTTI__cf_CObjectParam
	.4byte 0
	.4byte __RTTI__cf_CfObject
	.4byte 0
	.4byte __RTTI__cf_CfObjectModel
	.4byte 0
	.4byte __RTTI__cf_CfObjectMove
	.4byte 0
	.4byte 0
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__cf_CfObjectTbox
__RTTI__cf_CfObjectTbox:
	.4byte cf_CfObjectTbox_typestr
	.4byte cf_CfObjectTbox_hierarchy


.global __RTTI__cf_CfObjectObj
__RTTI__cf_CfObjectObj:
	.4byte cf_CfObjectObj_typestr
	.4byte cf_CfObjectObj_hierarchy

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80009F18
lbl_80009F18:
	.4byte 0x08080000
	.4byte 0x00000044
	.4byte 0x000A0010
	.4byte 0
	.4byte 0x8680001F
	.4byte 0
	.4byte func_800BBD6C

.global lbl_80009F34
lbl_80009F34:
	.4byte 0x10080000
	.4byte 0x0000003C
	.4byte 0x00000010
	.4byte 0
	.4byte 0x8680001E
	.4byte 0
	.4byte func_800BBD6C

.global lbl_80009F50
lbl_80009F50:
	.4byte 0x00080000
	.4byte 0

.global lbl_80009F58
lbl_80009F58:
	.4byte 0x18080000
	.4byte 0

.global lbl_80009F60
lbl_80009F60:
	.4byte 0x08080000
	.4byte 0

.global lbl_80009F68
lbl_80009F68:
	.4byte 0x10080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_800BF98C
	.4byte 0x00000088
	.4byte lbl_80009F18
	.4byte func_800BFA14
	.4byte 0x00000074
	.4byte lbl_80009F34
	.4byte func_800BFA88
	.4byte 0x00000024
	.4byte lbl_80009F50
	.4byte func_800BFAB0
	.4byte 0x000000E0
	.4byte lbl_80009F58
	.4byte func_800BFB90
	.4byte 0x00000064
	.4byte lbl_80009F60
	.4byte func_800BFBF4
	.4byte 0x00000074
	.4byte lbl_80009F68