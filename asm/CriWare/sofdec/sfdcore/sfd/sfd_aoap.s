.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SFD_SetOutVol, global
/* 803BE8C8 00387E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BE8CC 00387E8C  7C 08 02 A6 */	mflr r0
/* 803BE8D0 00387E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BE8D4 00387E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BE8D8 00387E98  7C 9F 23 78 */	mr r31, r4
/* 803BE8DC 00387E9C  93 C1 00 08 */	stw r30, 8(r1)
/* 803BE8E0 00387EA0  7C 7E 1B 78 */	mr r30, r3
/* 803BE8E4 00387EA4  48 00 25 21 */	bl SFLIB_CheckHn
/* 803BE8E8 00387EA8  2C 03 00 00 */	cmpwi r3, 0
/* 803BE8EC 00387EAC  41 82 00 18 */	beq .L_803BE904
/* 803BE8F0 00387EB0  3C 80 FF 00 */	lis r4, 0xFF0001A3@ha
/* 803BE8F4 00387EB4  38 60 00 00 */	li r3, 0
/* 803BE8F8 00387EB8  38 84 01 A3 */	addi r4, r4, 0xFF0001A3@l
/* 803BE8FC 00387EBC  48 00 23 59 */	bl SFLIB_SetErr
/* 803BE900 00387EC0  48 00 00 30 */	b .L_803BE930
.L_803BE904:
/* 803BE904 00387EC4  7F C3 F3 78 */	mr r3, r30
/* 803BE908 00387EC8  38 80 00 06 */	li r4, 6
/* 803BE90C 00387ECC  48 00 DD 69 */	bl SFSET_GetCond
/* 803BE910 00387ED0  2C 03 00 00 */	cmpwi r3, 0
/* 803BE914 00387ED4  41 82 00 1C */	beq .L_803BE930
/* 803BE918 00387ED8  80 BE 21 B4 */	lwz r5, 0x21b4(r30)
/* 803BE91C 00387EDC  7F C3 F3 78 */	mr r3, r30
/* 803BE920 00387EE0  7F E4 FB 78 */	mr r4, r31
/* 803BE924 00387EE4  81 85 00 0C */	lwz r12, 0xc(r5)
/* 803BE928 00387EE8  7D 89 03 A6 */	mtctr r12
/* 803BE92C 00387EEC  4E 80 04 21 */	bctrl 
.L_803BE930:
/* 803BE930 00387EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BE934 00387EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BE938 00387EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BE93C 00387EFC  7C 08 03 A6 */	mtlr r0
/* 803BE940 00387F00  38 21 00 10 */	addi r1, r1, 0x10
/* 803BE944 00387F04  4E 80 00 20 */	blr
.endfn SFD_SetOutVol

.fn SFD_GetOutVol, global
/* 803BE948 00387F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BE94C 00387F0C  7C 08 02 A6 */	mflr r0
/* 803BE950 00387F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BE954 00387F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BE958 00387F18  7C 7F 1B 78 */	mr r31, r3
/* 803BE95C 00387F1C  48 00 24 A9 */	bl SFLIB_CheckHn
/* 803BE960 00387F20  2C 03 00 00 */	cmpwi r3, 0
/* 803BE964 00387F24  41 82 00 1C */	beq .L_803BE980
/* 803BE968 00387F28  3C 80 FF 00 */	lis r4, 0xFF0001A4@ha
/* 803BE96C 00387F2C  38 60 00 00 */	li r3, 0
/* 803BE970 00387F30  38 84 01 A4 */	addi r4, r4, 0xFF0001A4@l
/* 803BE974 00387F34  48 00 22 E1 */	bl SFLIB_SetErr
/* 803BE978 00387F38  38 60 00 00 */	li r3, 0
/* 803BE97C 00387F3C  48 00 00 34 */	b .L_803BE9B0
.L_803BE980:
/* 803BE980 00387F40  7F E3 FB 78 */	mr r3, r31
/* 803BE984 00387F44  38 80 00 06 */	li r4, 6
/* 803BE988 00387F48  48 00 DC ED */	bl SFSET_GetCond
/* 803BE98C 00387F4C  2C 03 00 00 */	cmpwi r3, 0
/* 803BE990 00387F50  40 82 00 0C */	bne .L_803BE99C
/* 803BE994 00387F54  38 60 00 00 */	li r3, 0
/* 803BE998 00387F58  48 00 00 18 */	b .L_803BE9B0
.L_803BE99C:
/* 803BE99C 00387F5C  80 9F 21 B4 */	lwz r4, 0x21b4(r31)
/* 803BE9A0 00387F60  7F E3 FB 78 */	mr r3, r31
/* 803BE9A4 00387F64  81 84 00 10 */	lwz r12, 0x10(r4)
/* 803BE9A8 00387F68  7D 89 03 A6 */	mtctr r12
/* 803BE9AC 00387F6C  4E 80 04 21 */	bctrl 
.L_803BE9B0:
/* 803BE9B0 00387F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BE9B4 00387F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BE9B8 00387F78  7C 08 03 A6 */	mtlr r0
/* 803BE9BC 00387F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BE9C0 00387F80  4E 80 00 20 */	blr 
.endfn SFD_GetOutVol

.fn SFAOAP_SetSpeed, global
/* 803BE9C4 00387F84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BE9C8 00387F88  7C 08 02 A6 */	mflr r0
/* 803BE9CC 00387F8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BE9D0 00387F90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BE9D4 00387F94  7C BF 2B 78 */	mr r31, r5
/* 803BE9D8 00387F98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BE9DC 00387F9C  7C 9E 23 78 */	mr r30, r4
/* 803BE9E0 00387FA0  38 80 00 06 */	li r4, 6
/* 803BE9E4 00387FA4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BE9E8 00387FA8  7C 7D 1B 78 */	mr r29, r3
/* 803BE9EC 00387FAC  48 00 DC 89 */	bl SFSET_GetCond
/* 803BE9F0 00387FB0  2C 03 00 00 */	cmpwi r3, 0
/* 803BE9F4 00387FB4  41 82 00 28 */	beq .L_803BEA1C
/* 803BE9F8 00387FB8  80 7D 21 B4 */	lwz r3, 0x21b4(r29)
/* 803BE9FC 00387FBC  81 83 00 14 */	lwz r12, 0x14(r3)
/* 803BEA00 00387FC0  2C 0C 00 00 */	cmpwi r12, 0
/* 803BEA04 00387FC4  41 82 00 18 */	beq .L_803BEA1C
/* 803BEA08 00387FC8  7F A3 EB 78 */	mr r3, r29
/* 803BEA0C 00387FCC  7F C4 F3 78 */	mr r4, r30
/* 803BEA10 00387FD0  7F E5 FB 78 */	mr r5, r31
/* 803BEA14 00387FD4  7D 89 03 A6 */	mtctr r12
/* 803BEA18 00387FD8  4E 80 04 21 */	bctrl 
.L_803BEA1C:
/* 803BEA1C 00387FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BEA20 00387FE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BEA24 00387FE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BEA28 00387FE8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803BEA2C 00387FEC  7C 08 03 A6 */	mtlr r0
/* 803BEA30 00387FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803BEA34 00387FF4  4E 80 00 20 */	blr 
.endfn SFAOAP_SetSpeed

.fn SFAOAP_Init, global
/* 803BEA38 00387FF8  38 60 00 00 */	li r3, 0
/* 803BEA3C 00387FFC  4E 80 00 20 */	blr 
.endfn SFAOAP_Init

.fn SFAOAP_Finish, global
/* 803BEA40 00388000  38 60 00 00 */	li r3, 0
/* 803BEA44 00388004  4E 80 00 20 */	blr 
.endfn SFAOAP_Finish

.fn SFAOAP_ExecServer, global
/* 803BEA48 00388008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BEA4C 0038800C  7C 08 02 A6 */	mflr r0
/* 803BEA50 00388010  38 80 00 06 */	li r4, 6
/* 803BEA54 00388014  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BEA58 00388018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BEA5C 0038801C  7C 7F 1B 78 */	mr r31, r3
/* 803BEA60 00388020  48 00 DC 15 */	bl SFSET_GetCond
/* 803BEA64 00388024  2C 03 00 00 */	cmpwi r3, 0
/* 803BEA68 00388028  40 82 00 0C */	bne .L_803BEA74
/* 803BEA6C 0038802C  38 60 00 00 */	li r3, 0
/* 803BEA70 00388030  48 00 00 78 */	b .L_803BEAE8
.L_803BEA74:
/* 803BEA74 00388034  7F E3 FB 78 */	mr r3, r31
/* 803BEA78 00388038  38 80 00 07 */	li r4, 7
/* 803BEA7C 0038803C  48 00 FF 8D */	bl SFTRN_GetPrepFlg
/* 803BEA80 00388040  2C 03 00 01 */	cmpwi r3, 1
/* 803BEA84 00388044  41 82 00 28 */	beq .L_803BEAAC
/* 803BEA88 00388048  80 9F 21 BC */	lwz r4, 0x21bc(r31)
/* 803BEA8C 0038804C  7F E3 FB 78 */	mr r3, r31
/* 803BEA90 00388050  48 00 10 E1 */	bl SFBUF_GetPrepFlg
/* 803BEA94 00388054  2C 03 00 01 */	cmpwi r3, 1
/* 803BEA98 00388058  40 82 00 14 */	bne .L_803BEAAC
/* 803BEA9C 0038805C  7F E3 FB 78 */	mr r3, r31
/* 803BEAA0 00388060  38 80 00 07 */	li r4, 7
/* 803BEAA4 00388064  38 A0 00 01 */	li r5, 1
/* 803BEAA8 00388068  48 00 FF 51 */	bl SFTRN_SetPrepFlg
.L_803BEAAC:
/* 803BEAAC 0038806C  7F E3 FB 78 */	mr r3, r31
/* 803BEAB0 00388070  38 80 00 07 */	li r4, 7
/* 803BEAB4 00388074  48 00 FF 75 */	bl SFTRN_GetTermFlg
/* 803BEAB8 00388078  2C 03 00 01 */	cmpwi r3, 1
/* 803BEABC 0038807C  41 82 00 28 */	beq .L_803BEAE4
/* 803BEAC0 00388080  80 9F 21 BC */	lwz r4, 0x21bc(r31)
/* 803BEAC4 00388084  7F E3 FB 78 */	mr r3, r31
/* 803BEAC8 00388088  48 00 10 E1 */	bl SFBUF_GetTermFlg
/* 803BEACC 0038808C  2C 03 00 01 */	cmpwi r3, 1
/* 803BEAD0 00388090  40 82 00 14 */	bne .L_803BEAE4
/* 803BEAD4 00388094  7F E3 FB 78 */	mr r3, r31
/* 803BEAD8 00388098  38 80 00 07 */	li r4, 7
/* 803BEADC 0038809C  38 A0 00 01 */	li r5, 1
/* 803BEAE0 003880A0  48 00 FF 39 */	bl SFTRN_SetTermFlg
.L_803BEAE4:
/* 803BEAE4 003880A4  38 60 00 00 */	li r3, 0
.L_803BEAE8:
/* 803BEAE8 003880A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BEAEC 003880AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BEAF0 003880B0  7C 08 03 A6 */	mtlr r0
/* 803BEAF4 003880B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BEAF8 003880B8  4E 80 00 20 */	blr 
.endfn SFAOAP_ExecServer

.fn SFAOAP_Create, global
/* 803BEAFC 003880BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BEB00 003880C0  7C 08 02 A6 */	mflr r0
/* 803BEB04 003880C4  38 80 00 06 */	li r4, 6
/* 803BEB08 003880C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BEB0C 003880CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BEB10 003880D0  7C 7F 1B 78 */	mr r31, r3
/* 803BEB14 003880D4  48 00 DB 61 */	bl SFSET_GetCond
/* 803BEB18 003880D8  2C 03 00 00 */	cmpwi r3, 0
/* 803BEB1C 003880DC  40 82 00 0C */	bne .L_803BEB28
/* 803BEB20 003880E0  38 60 00 00 */	li r3, 0
/* 803BEB24 003880E4  48 00 00 10 */	b .L_803BEB34
.L_803BEB28:
/* 803BEB28 003880E8  38 1F 26 74 */	addi r0, r31, 0x2674
/* 803BEB2C 003880EC  38 60 00 00 */	li r3, 0
/* 803BEB30 003880F0  90 1F 21 B4 */	stw r0, 0x21b4(r31)
.L_803BEB34:
/* 803BEB34 003880F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BEB38 003880F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BEB3C 003880FC  7C 08 03 A6 */	mtlr r0
/* 803BEB40 00388100  38 21 00 10 */	addi r1, r1, 0x10
/* 803BEB44 00388104  4E 80 00 20 */	blr 
.endfn SFAOAP_Create

.fn SFAOAP_Destroy, global
/* 803BEB48 00388108  38 60 00 00 */	li r3, 0
/* 803BEB4C 0038810C  4E 80 00 20 */	blr 
.endfn SFAOAP_Destroy

.fn SFAOAP_RequestStop, global
/* 803BEB50 00388110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BEB54 00388114  7C 08 02 A6 */	mflr r0
/* 803BEB58 00388118  38 80 00 06 */	li r4, 6
/* 803BEB5C 0038811C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BEB60 00388120  48 00 DB 15 */	bl SFSET_GetCond
/* 803BEB64 00388124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BEB68 00388128  38 60 00 00 */	li r3, 0
/* 803BEB6C 0038812C  7C 08 03 A6 */	mtlr r0
/* 803BEB70 00388130  38 21 00 10 */	addi r1, r1, 0x10
/* 803BEB74 00388134  4E 80 00 20 */	blr 
.endfn SFAOAP_RequestStop

.fn SFAOAP_Start, global
/* 803BEB78 00388138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BEB7C 0038813C  7C 08 02 A6 */	mflr r0
/* 803BEB80 00388140  38 80 00 06 */	li r4, 6
/* 803BEB84 00388144  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BEB88 00388148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BEB8C 0038814C  7C 7F 1B 78 */	mr r31, r3
/* 803BEB90 00388150  48 00 DA E5 */	bl SFSET_GetCond
/* 803BEB94 00388154  2C 03 00 00 */	cmpwi r3, 0
/* 803BEB98 00388158  40 82 00 0C */	bne .L_803BEBA4
/* 803BEB9C 0038815C  38 60 00 00 */	li r3, 0
/* 803BEBA0 00388160  48 00 00 30 */	b .L_803BEBD0
.L_803BEBA4:
/* 803BEBA4 00388164  7F E3 FB 78 */	mr r3, r31
/* 803BEBA8 00388168  38 80 00 03 */	li r4, 3
/* 803BEBAC 0038816C  38 A0 00 06 */	li r5, 6
/* 803BEBB0 00388170  38 C0 00 00 */	li r6, 0
/* 803BEBB4 00388174  38 E0 00 00 */	li r7, 0
/* 803BEBB8 00388178  48 00 FE 05 */	bl SFTRN_CallTrtTrif
/* 803BEBBC 0038817C  2C 03 00 00 */	cmpwi r3, 0
/* 803BEBC0 00388180  38 00 00 00 */	li r0, 0
/* 803BEBC4 00388184  41 82 00 08 */	beq .L_803BEBCC
/* 803BEBC8 00388188  7C 60 1B 78 */	mr r0, r3
.L_803BEBCC:
/* 803BEBCC 0038818C  7C 03 03 78 */	mr r3, r0
.L_803BEBD0:
/* 803BEBD0 00388190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BEBD4 00388194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BEBD8 00388198  7C 08 03 A6 */	mtlr r0
/* 803BEBDC 0038819C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BEBE0 003881A0  4E 80 00 20 */	blr 
.endfn SFAOAP_Start

.fn SFAOAP_Stop, global
/* 803BEBE4 003881A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BEBE8 003881A8  7C 08 02 A6 */	mflr r0
/* 803BEBEC 003881AC  38 80 00 06 */	li r4, 6
/* 803BEBF0 003881B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BEBF4 003881B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BEBF8 003881B8  7C 7F 1B 78 */	mr r31, r3
/* 803BEBFC 003881BC  48 00 DA 79 */	bl SFSET_GetCond
/* 803BEC00 003881C0  2C 03 00 00 */	cmpwi r3, 0
/* 803BEC04 003881C4  40 82 00 0C */	bne .L_803BEC10
/* 803BEC08 003881C8  38 60 00 00 */	li r3, 0
/* 803BEC0C 003881CC  48 00 00 30 */	b .L_803BEC3C
.L_803BEC10:
/* 803BEC10 003881D0  7F E3 FB 78 */	mr r3, r31
/* 803BEC14 003881D4  38 80 00 03 */	li r4, 3
/* 803BEC18 003881D8  38 A0 00 07 */	li r5, 7
/* 803BEC1C 003881DC  38 C0 00 00 */	li r6, 0
/* 803BEC20 003881E0  38 E0 00 00 */	li r7, 0
/* 803BEC24 003881E4  48 00 FD 99 */	bl SFTRN_CallTrtTrif
/* 803BEC28 003881E8  2C 03 00 00 */	cmpwi r3, 0
/* 803BEC2C 003881EC  38 00 00 00 */	li r0, 0
/* 803BEC30 003881F0  41 82 00 08 */	beq .L_803BEC38
/* 803BEC34 003881F4  7C 60 1B 78 */	mr r0, r3
.L_803BEC38:
/* 803BEC38 003881F8  7C 03 03 78 */	mr r3, r0
.L_803BEC3C:
/* 803BEC3C 003881FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BEC40 00388200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BEC44 00388204  7C 08 03 A6 */	mtlr r0
/* 803BEC48 00388208  38 21 00 10 */	addi r1, r1, 0x10
/* 803BEC4C 0038820C  4E 80 00 20 */	blr 
.endfn SFAOAP_Stop

.fn SFAOAP_Pause, global
/* 803BEC50 00388210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BEC54 00388214  7C 08 02 A6 */	mflr r0
/* 803BEC58 00388218  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BEC5C 0038821C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BEC60 00388220  7C 9F 23 78 */	mr r31, r4
/* 803BEC64 00388224  38 80 00 06 */	li r4, 6
/* 803BEC68 00388228  93 C1 00 08 */	stw r30, 8(r1)
/* 803BEC6C 0038822C  7C 7E 1B 78 */	mr r30, r3
/* 803BEC70 00388230  48 00 DA 05 */	bl SFSET_GetCond
/* 803BEC74 00388234  2C 03 00 00 */	cmpwi r3, 0
/* 803BEC78 00388238  40 82 00 0C */	bne .L_803BEC84
/* 803BEC7C 0038823C  38 60 00 00 */	li r3, 0
/* 803BEC80 00388240  48 00 00 30 */	b .L_803BECB0
.L_803BEC84:
/* 803BEC84 00388244  7F C3 F3 78 */	mr r3, r30
/* 803BEC88 00388248  7F E6 FB 78 */	mr r6, r31
/* 803BEC8C 0038824C  38 80 00 03 */	li r4, 3
/* 803BEC90 00388250  38 A0 00 08 */	li r5, 8
/* 803BEC94 00388254  38 E0 00 00 */	li r7, 0
/* 803BEC98 00388258  48 00 FD 25 */	bl SFTRN_CallTrtTrif
/* 803BEC9C 0038825C  2C 03 00 00 */	cmpwi r3, 0
/* 803BECA0 00388260  38 00 00 00 */	li r0, 0
/* 803BECA4 00388264  41 82 00 08 */	beq .L_803BECAC
/* 803BECA8 00388268  7C 60 1B 78 */	mr r0, r3
.L_803BECAC:
/* 803BECAC 0038826C  7C 03 03 78 */	mr r3, r0
.L_803BECB0:
/* 803BECB0 00388270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BECB4 00388274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BECB8 00388278  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BECBC 0038827C  7C 08 03 A6 */	mtlr r0
/* 803BECC0 00388280  38 21 00 10 */	addi r1, r1, 0x10
/* 803BECC4 00388284  4E 80 00 20 */	blr 
.endfn SFAOAP_Pause

.fn SFAOAP_GetWrite, global
/* 803BECC8 00388288  3C 80 FF 00 */	lis r4, 0xFF000A01@ha
/* 803BECCC 0038828C  38 84 0A 01 */	addi r4, r4, 0xFF000A01@l
/* 803BECD0 00388290  48 00 1F 84 */	b SFLIB_SetErr
.endfn SFAOAP_GetWrite

.fn SFAOAP_AddWrite, global
/* 803BECD4 00388294  3C 80 FF 00 */	lis r4, 0xFF000A01@ha
/* 803BECD8 00388298  38 84 0A 01 */	addi r4, r4, 0xFF000A01@l
/* 803BECDC 0038829C  48 00 1F 78 */	b SFLIB_SetErr
.endfn SFAOAP_AddWrite

.fn SFAOAP_GetRead, global
/* 803BECE0 003882A0  3C 80 FF 00 */	lis r4, 0xFF000A01@ha
/* 803BECE4 003882A4  38 84 0A 01 */	addi r4, r4, 0xFF000A01@l
/* 803BECE8 003882A8  48 00 1F 6C */	b SFLIB_SetErr
.endfn SFAOAP_GetRead

.fn SFAOAP_AddRead, global
/* 803BECEC 003882AC  3C 80 FF 00 */	lis r4, 0xFF000A01@ha
/* 803BECF0 003882B0  38 84 0A 01 */	addi r4, r4, 0xFF000A01@l
/* 803BECF4 003882B4  48 00 1F 60 */	b SFLIB_SetErr
.endfn SFAOAP_AddRead

.fn SFAOAP_Seek, global
/* 803BECF8 003882B8  38 60 00 00 */	li r3, 0
/* 803BECFC 003882BC  4E 80 00 20 */	blr 
.endfn SFAOAP_Seek

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj SFD_tr_ao_auto_p, global
	.4byte SFAOAP_Init
	.4byte SFAOAP_Finish
	.4byte SFAOAP_ExecServer
	.4byte SFAOAP_Create
	.4byte SFAOAP_Destroy
	.4byte SFAOAP_RequestStop
	.4byte SFAOAP_Start
	.4byte SFAOAP_Stop
	.4byte SFAOAP_Pause
	.4byte SFAOAP_GetWrite
	.4byte SFAOAP_AddWrite
	.4byte SFAOAP_GetRead
	.4byte SFAOAP_AddRead
	.4byte SFAOAP_Seek
.endobj SFD_tr_ao_auto_p