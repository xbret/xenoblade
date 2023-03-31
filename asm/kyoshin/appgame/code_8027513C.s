.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_8027513C, global
/* 8027513C 0023E6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80275140 0023E700  7C 08 02 A6 */	mflr r0
/* 80275144 0023E704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275148 0023E708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027514C 0023E70C  88 0D B0 58 */	lbz r0, lbl_806671D8@sda21(r13)
/* 80275150 0023E710  7C 00 07 75 */	extsb. r0, r0
/* 80275154 0023E714  40 82 00 18 */	bne .L_8027516C
/* 80275158 0023E718  3C 60 80 54 */	lis r3, __vt__cf_ICamControlRemote@ha
/* 8027515C 0023E71C  38 00 00 01 */	li r0, 1
/* 80275160 0023E720  38 63 B7 10 */	addi r3, r3, __vt__cf_ICamControlRemote@l
/* 80275164 0023E724  90 6D B0 5C */	stw r3, lbl_806671DC@sda21(r13)
/* 80275168 0023E728  98 0D B0 58 */	stb r0, lbl_806671D8@sda21(r13)
.L_8027516C:
/* 8027516C 0023E72C  88 0D B0 60 */	lbz r0, lbl_806671E0@sda21(r13)
/* 80275170 0023E730  7C 00 07 75 */	extsb. r0, r0
/* 80275174 0023E734  40 82 00 18 */	bne .L_8027518C
/* 80275178 0023E738  3C 60 80 54 */	lis r3, __vt__cf_ICamControlClassic@ha
/* 8027517C 0023E73C  38 00 00 01 */	li r0, 1
/* 80275180 0023E740  38 63 B6 88 */	addi r3, r3, __vt__cf_ICamControlClassic@l
/* 80275184 0023E744  90 6D B0 64 */	stw r3, lbl_806671E4@sda21(r13)
/* 80275188 0023E748  98 0D B0 60 */	stb r0, lbl_806671E0@sda21(r13)
.L_8027518C:
/* 8027518C 0023E74C  88 0D B0 68 */	lbz r0, lbl_806671E8@sda21(r13)
/* 80275190 0023E750  7C 00 07 75 */	extsb. r0, r0
/* 80275194 0023E754  40 82 00 18 */	bne .L_802751AC
/* 80275198 0023E758  3C 60 80 54 */	lis r3, __vt__cf_ICamControlGc@ha
/* 8027519C 0023E75C  38 00 00 01 */	li r0, 1
/* 802751A0 0023E760  38 63 B6 C8 */	addi r3, r3, __vt__cf_ICamControlGc@l
/* 802751A4 0023E764  90 6D B0 6C */	stw r3, lbl_806671EC@sda21(r13)
/* 802751A8 0023E768  98 0D B0 68 */	stb r0, lbl_806671E8@sda21(r13)
.L_802751AC:
/* 802751AC 0023E76C  3B E0 00 00 */	li r31, 0
/* 802751B0 0023E770  4B E1 20 0D */	bl func_800871BC
/* 802751B4 0023E774  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 802751B8 0023E778  2C 00 00 04 */	cmpwi r0, 4
/* 802751BC 0023E77C  40 82 00 0C */	bne .L_802751C8
/* 802751C0 0023E780  3B E0 00 01 */	li r31, 1
/* 802751C4 0023E784  48 00 00 10 */	b .L_802751D4
.L_802751C8:
/* 802751C8 0023E788  2C 00 00 01 */	cmpwi r0, 1
/* 802751CC 0023E78C  40 82 00 08 */	bne .L_802751D4
/* 802751D0 0023E790  3B E0 00 02 */	li r31, 2
.L_802751D4:
/* 802751D4 0023E794  3C 60 80 54 */	lis r3, lbl_8053B678@ha
/* 802751D8 0023E798  57 E0 10 3A */	slwi r0, r31, 2
/* 802751DC 0023E79C  38 63 B6 78 */	addi r3, r3, lbl_8053B678@l
/* 802751E0 0023E7A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802751E4 0023E7A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 802751E8 0023E7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802751EC 0023E7AC  7C 08 03 A6 */	mtlr r0
/* 802751F0 0023E7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802751F4 0023E7B4  4E 80 00 20 */	blr 
.endfn func_8027513C

.fn func_802751F8, global
/* 802751F8 0023E7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802751FC 0023E7BC  7C 08 02 A6 */	mflr r0
/* 80275200 0023E7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275204 0023E7C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80275208 0023E7C8  7C 7F 1B 78 */	mr r31, r3
/* 8027520C 0023E7CC  4B FF FF 31 */	bl func_8027513C
/* 80275210 0023E7D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80275214 0023E7D4  7F E4 FB 78 */	mr r4, r31
/* 80275218 0023E7D8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8027521C 0023E7DC  7D 89 03 A6 */	mtctr r12
/* 80275220 0023E7E0  4E 80 04 21 */	bctrl 
/* 80275224 0023E7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80275228 0023E7E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027522C 0023E7EC  7C 08 03 A6 */	mtlr r0
/* 80275230 0023E7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80275234 0023E7F4  4E 80 00 20 */	blr 
.endfn func_802751F8

.fn func_80275238, global
/* 80275238 0023E7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027523C 0023E7FC  7C 08 02 A6 */	mflr r0
/* 80275240 0023E800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275244 0023E804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80275248 0023E808  7C 7F 1B 78 */	mr r31, r3
/* 8027524C 0023E80C  4B FF FE F1 */	bl func_8027513C
/* 80275250 0023E810  81 83 00 00 */	lwz r12, 0(r3)
/* 80275254 0023E814  7F E4 FB 78 */	mr r4, r31
/* 80275258 0023E818  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8027525C 0023E81C  7D 89 03 A6 */	mtctr r12
/* 80275260 0023E820  4E 80 04 21 */	bctrl 
/* 80275264 0023E824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80275268 0023E828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027526C 0023E82C  7C 08 03 A6 */	mtlr r0
/* 80275270 0023E830  38 21 00 10 */	addi r1, r1, 0x10
/* 80275274 0023E834  4E 80 00 20 */	blr 
.endfn func_80275238

.fn func_80275278, global
/* 80275278 0023E838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027527C 0023E83C  7C 08 02 A6 */	mflr r0
/* 80275280 0023E840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275284 0023E844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80275288 0023E848  7C 7F 1B 78 */	mr r31, r3
/* 8027528C 0023E84C  4B FF FE B1 */	bl func_8027513C
/* 80275290 0023E850  81 83 00 00 */	lwz r12, 0(r3)
/* 80275294 0023E854  7F E4 FB 78 */	mr r4, r31
/* 80275298 0023E858  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8027529C 0023E85C  7D 89 03 A6 */	mtctr r12
/* 802752A0 0023E860  4E 80 04 21 */	bctrl 
/* 802752A4 0023E864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802752A8 0023E868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802752AC 0023E86C  7C 08 03 A6 */	mtlr r0
/* 802752B0 0023E870  38 21 00 10 */	addi r1, r1, 0x10
/* 802752B4 0023E874  4E 80 00 20 */	blr 
.endfn func_80275278

.fn func_802752B8, global
/* 802752B8 0023E878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802752BC 0023E87C  7C 08 02 A6 */	mflr r0
/* 802752C0 0023E880  90 01 00 14 */	stw r0, 0x14(r1)
/* 802752C4 0023E884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802752C8 0023E888  7C 7F 1B 78 */	mr r31, r3
/* 802752CC 0023E88C  4B FF FE 71 */	bl func_8027513C
/* 802752D0 0023E890  81 83 00 00 */	lwz r12, 0(r3)
/* 802752D4 0023E894  7F E4 FB 78 */	mr r4, r31
/* 802752D8 0023E898  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802752DC 0023E89C  7D 89 03 A6 */	mtctr r12
/* 802752E0 0023E8A0  4E 80 04 21 */	bctrl 
/* 802752E4 0023E8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802752E8 0023E8A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802752EC 0023E8AC  7C 08 03 A6 */	mtlr r0
/* 802752F0 0023E8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802752F4 0023E8B4  4E 80 00 20 */	blr 
.endfn func_802752B8

.fn func_802752F8, global
/* 802752F8 0023E8B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802752FC 0023E8BC  7C 08 02 A6 */	mflr r0
/* 80275300 0023E8C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275304 0023E8C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80275308 0023E8C8  7C 7F 1B 78 */	mr r31, r3
/* 8027530C 0023E8CC  4B FF FE 31 */	bl func_8027513C
/* 80275310 0023E8D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80275314 0023E8D4  7F E4 FB 78 */	mr r4, r31
/* 80275318 0023E8D8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8027531C 0023E8DC  7D 89 03 A6 */	mtctr r12
/* 80275320 0023E8E0  4E 80 04 21 */	bctrl 
/* 80275324 0023E8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80275328 0023E8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027532C 0023E8EC  7C 08 03 A6 */	mtlr r0
/* 80275330 0023E8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80275334 0023E8F4  4E 80 00 20 */	blr 
.endfn func_802752F8

.fn func_80275338, global
/* 80275338 0023E8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027533C 0023E8FC  7C 08 02 A6 */	mflr r0
/* 80275340 0023E900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275344 0023E904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80275348 0023E908  7C 7F 1B 78 */	mr r31, r3
/* 8027534C 0023E90C  4B FF FD F1 */	bl func_8027513C
/* 80275350 0023E910  81 83 00 00 */	lwz r12, 0(r3)
/* 80275354 0023E914  7F E4 FB 78 */	mr r4, r31
/* 80275358 0023E918  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8027535C 0023E91C  7D 89 03 A6 */	mtctr r12
/* 80275360 0023E920  4E 80 04 21 */	bctrl 
/* 80275364 0023E924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80275368 0023E928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027536C 0023E92C  7C 08 03 A6 */	mtlr r0
/* 80275370 0023E930  38 21 00 10 */	addi r1, r1, 0x10
/* 80275374 0023E934  4E 80 00 20 */	blr 
.endfn func_80275338

.fn func_80275378, global
/* 80275378 0023E938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027537C 0023E93C  7C 08 02 A6 */	mflr r0
/* 80275380 0023E940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275384 0023E944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80275388 0023E948  7C 7F 1B 78 */	mr r31, r3
/* 8027538C 0023E94C  4B FF FD B1 */	bl func_8027513C
/* 80275390 0023E950  81 83 00 00 */	lwz r12, 0(r3)
/* 80275394 0023E954  7F E4 FB 78 */	mr r4, r31
/* 80275398 0023E958  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8027539C 0023E95C  7D 89 03 A6 */	mtctr r12
/* 802753A0 0023E960  4E 80 04 21 */	bctrl 
/* 802753A4 0023E964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802753A8 0023E968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802753AC 0023E96C  7C 08 03 A6 */	mtlr r0
/* 802753B0 0023E970  38 21 00 10 */	addi r1, r1, 0x10
/* 802753B4 0023E974  4E 80 00 20 */	blr 
.endfn func_80275378

.fn func_802753B8, global
/* 802753B8 0023E978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802753BC 0023E97C  7C 08 02 A6 */	mflr r0
/* 802753C0 0023E980  90 01 00 14 */	stw r0, 0x14(r1)
/* 802753C4 0023E984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802753C8 0023E988  7C 7F 1B 78 */	mr r31, r3
/* 802753CC 0023E98C  4B FF FD 71 */	bl func_8027513C
/* 802753D0 0023E990  81 83 00 00 */	lwz r12, 0(r3)
/* 802753D4 0023E994  7F E4 FB 78 */	mr r4, r31
/* 802753D8 0023E998  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802753DC 0023E99C  7D 89 03 A6 */	mtctr r12
/* 802753E0 0023E9A0  4E 80 04 21 */	bctrl 
/* 802753E4 0023E9A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802753E8 0023E9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802753EC 0023E9AC  7C 08 03 A6 */	mtlr r0
/* 802753F0 0023E9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802753F4 0023E9B4  4E 80 00 20 */	blr
.endfn func_802753B8

.fn func_802753F8, global
/* 802753F8 0023E9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802753FC 0023E9BC  7C 08 02 A6 */	mflr r0
/* 80275400 0023E9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275404 0023E9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80275408 0023E9C8  7C 9F 23 78 */	mr r31, r4
/* 8027540C 0023E9CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80275410 0023E9D0  7C 7E 1B 78 */	mr r30, r3
/* 80275414 0023E9D4  80 A3 00 74 */	lwz r5, 0x74(r3)
/* 80275418 0023E9D8  2C 05 00 00 */	cmpwi r5, 0
/* 8027541C 0023E9DC  41 82 00 20 */	beq .L_8027543C
/* 80275420 0023E9E0  A8 03 00 78 */	lha r0, 0x78(r3)
/* 80275424 0023E9E4  7C 00 20 00 */	cmpw r0, r4
/* 80275428 0023E9E8  41 82 00 14 */	beq .L_8027543C
/* 8027542C 0023E9EC  7C A3 2B 78 */	mr r3, r5
/* 80275430 0023E9F0  7C 84 07 74 */	extsb r4, r4
/* 80275434 0023E9F4  4B E3 77 E1 */	bl func_800ACC14
/* 80275438 0023E9F8  B3 FE 00 78 */	sth r31, 0x78(r30)
.L_8027543C:
/* 8027543C 0023E9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80275440 0023EA00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80275444 0023EA04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80275448 0023EA08  7C 08 03 A6 */	mtlr r0
/* 8027544C 0023EA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80275450 0023EA10  4E 80 00 20 */	blr 
.endfn func_802753F8

.fn func_80275454, global
/* 80275454 0023EA14  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80275458 0023EA18  7C 08 02 A6 */	mflr r0
/* 8027545C 0023EA1C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80275460 0023EA20  39 61 00 70 */	addi r11, r1, 0x70
/* 80275464 0023EA24  48 04 4C F1 */	bl _savegpr_27
/* 80275468 0023EA28  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8027546C 0023EA2C  7C 7F 1B 78 */	mr r31, r3
/* 80275470 0023EA30  83 65 00 C4 */	lwz r27, 0xc4(r5)
/* 80275474 0023EA34  2C 1B 00 00 */	cmpwi r27, 0
/* 80275478 0023EA38  41 82 02 60 */	beq .L_802756D8
/* 8027547C 0023EA3C  80 1B 04 EC */	lwz r0, 0x4ec(r27)
/* 80275480 0023EA40  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80275484 0023EA44  41 82 01 70 */	beq .L_802755F4
/* 80275488 0023EA48  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 8027548C 0023EA4C  C0 02 AF 18 */	lfs f0, float_8066B298@sda21(r2)
/* 80275490 0023EA50  38 04 00 01 */	addi r0, r4, 1
/* 80275494 0023EA54  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80275498 0023EA58  C0 3B 03 C4 */	lfs f1, 0x3c4(r27)
/* 8027549C 0023EA5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802754A0 0023EA60  40 80 01 30 */	bge .L_802755D0
/* 802754A4 0023EA64  81 85 00 00 */	lwz r12, 0(r5)
/* 802754A8 0023EA68  7C A3 2B 78 */	mr r3, r5
/* 802754AC 0023EA6C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802754B0 0023EA70  7D 89 03 A6 */	mtctr r12
/* 802754B4 0023EA74  4E 80 04 21 */	bctrl 
/* 802754B8 0023EA78  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802754BC 0023EA7C  7C 7E 1B 78 */	mr r30, r3
/* 802754C0 0023EA80  2C 04 00 00 */	cmpwi r4, 0
/* 802754C4 0023EA84  41 82 01 0C */	beq .L_802755D0
/* 802754C8 0023EA88  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 802754CC 0023EA8C  38 60 00 2E */	li r3, 0x2e
/* 802754D0 0023EA90  C0 02 AF 00 */	lfs f0, float_8066B280@sda21(r2)
/* 802754D4 0023EA94  3B 80 00 D9 */	li r28, 0xd9
/* 802754D8 0023EA98  C0 24 03 C4 */	lfs f1, 0x3c4(r4)
/* 802754DC 0023EA9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802754E0 0023EAA0  41 81 00 14 */	bgt .L_802754F4
/* 802754E4 0023EAA4  C0 24 04 F8 */	lfs f1, 0x4f8(r4)
/* 802754E8 0023EAA8  C0 02 AF 04 */	lfs f0, float_8066B284@sda21(r2)
/* 802754EC 0023EAAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802754F0 0023EAB0  40 80 00 0C */	bge .L_802754FC
.L_802754F4:
/* 802754F4 0023EAB4  38 60 00 2D */	li r3, 0x2d
/* 802754F8 0023EAB8  3B 80 00 D8 */	li r28, 0xd8
.L_802754FC:
/* 802754FC 0023EABC  4B E0 C3 81 */	bl func_8008187C
/* 80275500 0023EAC0  2C 03 00 00 */	cmpwi r3, 0
/* 80275504 0023EAC4  7C 7D 1B 78 */	mr r29, r3
/* 80275508 0023EAC8  41 82 00 A0 */	beq .L_802755A8
/* 8027550C 0023EACC  C0 22 AF 08 */	lfs f1, float_8066B288@sda21(r2)
/* 80275510 0023EAD0  38 A1 00 34 */	addi r5, r1, 0x34
/* 80275514 0023EAD4  C0 02 AF 0C */	lfs f0, float_8066B28C@sda21(r2)
/* 80275518 0023EAD8  38 C1 00 40 */	addi r6, r1, 0x40
/* 8027551C 0023EADC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80275520 0023EAE0  38 81 00 28 */	addi r4, r1, 0x28
/* 80275524 0023EAE4  E0 5E 00 00 */	psq_l f2, 0(r30), 0, qr0
/* 80275528 0023EAE8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8027552C 0023EAEC  E0 05 00 00 */	psq_l f0, 0(r5), 0, qr0
/* 80275530 0023EAF0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80275534 0023EAF4  10 22 00 2A */	ps_add f1, f2, f0
/* 80275538 0023EAF8  E0 5E 80 08 */	psq_l f2, 8(r30), 1, qr0
/* 8027553C 0023EAFC  E0 05 80 08 */	psq_l f0, 8(r5), 1, qr0
/* 80275540 0023EB00  F0 26 00 00 */	psq_st f1, 0(r6), 0, qr0
/* 80275544 0023EB04  10 22 00 2A */	ps_add f1, f2, f0
/* 80275548 0023EB08  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8027554C 0023EB0C  F0 26 80 08 */	psq_st f1, 8(r6), 1, qr0
/* 80275550 0023EB10  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80275554 0023EB14  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80275558 0023EB18  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8027555C 0023EB1C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80275560 0023EB20  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80275564 0023EB24  81 83 00 00 */	lwz r12, 0(r3)
/* 80275568 0023EB28  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8027556C 0023EB2C  7D 89 03 A6 */	mtctr r12
/* 80275570 0023EB30  4E 80 04 21 */	bctrl 
/* 80275574 0023EB34  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 80275578 0023EB38  7F A3 EB 78 */	mr r3, r29
/* 8027557C 0023EB3C  C0 02 AF 10 */	lfs f0, float_8066B290@sda21(r2)
/* 80275580 0023EB40  38 81 00 18 */	addi r4, r1, 0x18
/* 80275584 0023EB44  80 A5 00 98 */	lwz r5, 0x98(r5)
/* 80275588 0023EB48  C0 25 07 60 */	lfs f1, 0x760(r5)
/* 8027558C 0023EB4C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80275590 0023EB50  C0 25 07 64 */	lfs f1, 0x764(r5)
/* 80275594 0023EB54  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80275598 0023EB58  C0 25 07 68 */	lfs f1, 0x768(r5)
/* 8027559C 0023EB5C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 802755A0 0023EB60  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802755A4 0023EB64  4B E3 76 C1 */	bl func_800ACC64
.L_802755A8:
/* 802755A8 0023EB68  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 802755AC 0023EB6C  48 22 0A 91 */	bl func_8049603C
/* 802755B0 0023EB70  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802755B4 0023EB74  7F 84 E3 78 */	mr r4, r28
/* 802755B8 0023EB78  C0 02 AF 10 */	lfs f0, float_8066B290@sda21(r2)
/* 802755BC 0023EB7C  7F C5 F3 78 */	mr r5, r30
/* 802755C0 0023EB80  C0 42 AF 14 */	lfs f2, float_8066B294@sda21(r2)
/* 802755C4 0023EB84  38 60 00 00 */	li r3, 0
/* 802755C8 0023EB88  EC 20 08 28 */	fsubs f1, f0, f1
/* 802755CC 0023EB8C  4B F4 A8 1D */	bl func_801BFDE8
.L_802755D0:
/* 802755D0 0023EB90  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802755D4 0023EB94  80 03 00 90 */	lwz r0, 0x90(r3)
/* 802755D8 0023EB98  2C 00 00 00 */	cmpwi r0, 0
/* 802755DC 0023EB9C  41 82 00 FC */	beq .L_802756D8
/* 802755E0 0023EBA0  C0 02 AF 1C */	lfs f0, float_8066B29C@sda21(r2)
/* 802755E4 0023EBA4  D0 1B 05 04 */	stfs f0, 0x504(r27)
/* 802755E8 0023EBA8  C0 02 AF 20 */	lfs f0, float_8066B2A0@sda21(r2)
/* 802755EC 0023EBAC  D0 1B 05 0C */	stfs f0, 0x50c(r27)
/* 802755F0 0023EBB0  48 00 00 E8 */	b .L_802756D8
.L_802755F4:
/* 802755F4 0023EBB4  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 802755F8 0023EBB8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802755FC 0023EBBC  41 82 00 DC */	beq .L_802756D8
/* 80275600 0023EBC0  4B E0 A3 1D */	bl func_8007F91C
/* 80275604 0023EBC4  2C 03 00 00 */	cmpwi r3, 0
/* 80275608 0023EBC8  40 82 00 D0 */	bne .L_802756D8
/* 8027560C 0023EBCC  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80275610 0023EBD0  2C 00 00 00 */	cmpwi r0, 0
/* 80275614 0023EBD4  40 82 00 C4 */	bne .L_802756D8
/* 80275618 0023EBD8  38 60 00 BE */	li r3, 0xbe
/* 8027561C 0023EBDC  4B E0 C2 61 */	bl func_8008187C
/* 80275620 0023EBE0  2C 03 00 00 */	cmpwi r3, 0
/* 80275624 0023EBE4  7C 7C 1B 78 */	mr r28, r3
/* 80275628 0023EBE8  41 82 00 B0 */	beq .L_802756D8
/* 8027562C 0023EBEC  2C 1F 00 00 */	cmpwi r31, 0
/* 80275630 0023EBF0  7F E0 FB 78 */	mr r0, r31
/* 80275634 0023EBF4  41 82 00 08 */	beq .L_8027563C
/* 80275638 0023EBF8  38 1F 00 10 */	addi r0, r31, 0x10
.L_8027563C:
/* 8027563C 0023EBFC  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80275640 0023EC00  38 A0 00 00 */	li r5, 0
/* 80275644 0023EC04  90 7F 00 74 */	stw r3, 0x74(r31)
/* 80275648 0023EC08  7F 83 E3 78 */	mr r3, r28
/* 8027564C 0023EC0C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80275650 0023EC10  4B E3 79 29 */	bl func_800ACF78
/* 80275654 0023EC14  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80275658 0023EC18  81 83 00 00 */	lwz r12, 0(r3)
/* 8027565C 0023EC1C  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 80275660 0023EC20  7D 89 03 A6 */	mtctr r12
/* 80275664 0023EC24  4E 80 04 21 */	bctrl 
/* 80275668 0023EC28  81 9C 00 00 */	lwz r12, 0(r28)
/* 8027566C 0023EC2C  7F 83 E3 78 */	mr r3, r28
/* 80275670 0023EC30  81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 80275674 0023EC34  7D 89 03 A6 */	mtctr r12
/* 80275678 0023EC38  4E 80 04 21 */	bctrl 
/* 8027567C 0023EC3C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80275680 0023EC40  2C 03 00 00 */	cmpwi r3, 0
/* 80275684 0023EC44  41 82 00 20 */	beq .L_802756A4
/* 80275688 0023EC48  A8 1F 00 78 */	lha r0, 0x78(r31)
/* 8027568C 0023EC4C  2C 00 00 02 */	cmpwi r0, 2
/* 80275690 0023EC50  41 82 00 14 */	beq .L_802756A4
/* 80275694 0023EC54  38 80 00 02 */	li r4, 2
/* 80275698 0023EC58  4B E3 75 7D */	bl func_800ACC14
/* 8027569C 0023EC5C  38 00 00 02 */	li r0, 2
/* 802756A0 0023EC60  B0 1F 00 78 */	sth r0, 0x78(r31)
.L_802756A4:
/* 802756A4 0023EC64  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 802756A8 0023EC68  7F 83 E3 78 */	mr r3, r28
/* 802756AC 0023EC6C  C0 02 AF 10 */	lfs f0, float_8066B290@sda21(r2)
/* 802756B0 0023EC70  38 81 00 08 */	addi r4, r1, 8
/* 802756B4 0023EC74  80 A5 00 98 */	lwz r5, 0x98(r5)
/* 802756B8 0023EC78  C0 25 07 60 */	lfs f1, 0x760(r5)
/* 802756BC 0023EC7C  D0 21 00 08 */	stfs f1, 8(r1)
/* 802756C0 0023EC80  C0 25 07 64 */	lfs f1, 0x764(r5)
/* 802756C4 0023EC84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802756C8 0023EC88  C0 25 07 68 */	lfs f1, 0x768(r5)
/* 802756CC 0023EC8C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802756D0 0023EC90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802756D4 0023EC94  4B E3 75 91 */	bl func_800ACC64
.L_802756D8:
/* 802756D8 0023EC98  39 61 00 70 */	addi r11, r1, 0x70
/* 802756DC 0023EC9C  48 04 4A C5 */	bl _restgpr_27
/* 802756E0 0023ECA0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802756E4 0023ECA4  7C 08 03 A6 */	mtlr r0
/* 802756E8 0023ECA8  38 21 00 70 */	addi r1, r1, 0x70
/* 802756EC 0023ECAC  4E 80 00 20 */	blr 
.endfn func_80275454

.fn func_802756F0, global
/* 802756F0 0023ECB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802756F4 0023ECB4  7C 08 02 A6 */	mflr r0
/* 802756F8 0023ECB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802756FC 0023ECBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80275700 0023ECC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80275704 0023ECC4  7C 7E 1B 78 */	mr r30, r3
/* 80275708 0023ECC8  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8027570C 0023ECCC  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 80275710 0023ECD0  2C 00 00 00 */	cmpwi r0, 0
/* 80275714 0023ECD4  41 82 00 DC */	beq .L_802757F0
/* 80275718 0023ECD8  4B E0 A2 05 */	bl func_8007F91C
/* 8027571C 0023ECDC  2C 03 00 00 */	cmpwi r3, 0
/* 80275720 0023ECE0  40 82 00 D0 */	bne .L_802757F0
/* 80275724 0023ECE4  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 80275728 0023ECE8  2C 00 00 00 */	cmpwi r0, 0
/* 8027572C 0023ECEC  40 82 00 C4 */	bne .L_802757F0
/* 80275730 0023ECF0  38 60 00 BE */	li r3, 0xbe
/* 80275734 0023ECF4  4B E0 C1 49 */	bl func_8008187C
/* 80275738 0023ECF8  2C 03 00 00 */	cmpwi r3, 0
/* 8027573C 0023ECFC  7C 7F 1B 78 */	mr r31, r3
/* 80275740 0023ED00  41 82 00 B0 */	beq .L_802757F0
/* 80275744 0023ED04  2C 1E 00 00 */	cmpwi r30, 0
/* 80275748 0023ED08  7F C0 F3 78 */	mr r0, r30
/* 8027574C 0023ED0C  41 82 00 08 */	beq .L_80275754
/* 80275750 0023ED10  38 1E 00 10 */	addi r0, r30, 0x10
.L_80275754:
/* 80275754 0023ED14  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80275758 0023ED18  38 A0 00 00 */	li r5, 0
/* 8027575C 0023ED1C  90 7E 00 74 */	stw r3, 0x74(r30)
/* 80275760 0023ED20  7F E3 FB 78 */	mr r3, r31
/* 80275764 0023ED24  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80275768 0023ED28  4B E3 78 11 */	bl func_800ACF78
/* 8027576C 0023ED2C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80275770 0023ED30  81 83 00 00 */	lwz r12, 0(r3)
/* 80275774 0023ED34  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 80275778 0023ED38  7D 89 03 A6 */	mtctr r12
/* 8027577C 0023ED3C  4E 80 04 21 */	bctrl 
/* 80275780 0023ED40  81 9F 00 00 */	lwz r12, 0(r31)
/* 80275784 0023ED44  7F E3 FB 78 */	mr r3, r31
/* 80275788 0023ED48  81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8027578C 0023ED4C  7D 89 03 A6 */	mtctr r12
/* 80275790 0023ED50  4E 80 04 21 */	bctrl 
/* 80275794 0023ED54  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 80275798 0023ED58  2C 03 00 00 */	cmpwi r3, 0
/* 8027579C 0023ED5C  41 82 00 20 */	beq .L_802757BC
/* 802757A0 0023ED60  A8 1E 00 78 */	lha r0, 0x78(r30)
/* 802757A4 0023ED64  2C 00 00 02 */	cmpwi r0, 2
/* 802757A8 0023ED68  41 82 00 14 */	beq .L_802757BC
/* 802757AC 0023ED6C  38 80 00 02 */	li r4, 2
/* 802757B0 0023ED70  4B E3 74 65 */	bl func_800ACC14
/* 802757B4 0023ED74  38 00 00 02 */	li r0, 2
/* 802757B8 0023ED78  B0 1E 00 78 */	sth r0, 0x78(r30)
.L_802757BC:
/* 802757BC 0023ED7C  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 802757C0 0023ED80  7F E3 FB 78 */	mr r3, r31
/* 802757C4 0023ED84  C0 02 AF 10 */	lfs f0, float_8066B290@sda21(r2)
/* 802757C8 0023ED88  38 81 00 08 */	addi r4, r1, 8
/* 802757CC 0023ED8C  80 A5 00 98 */	lwz r5, 0x98(r5)
/* 802757D0 0023ED90  C0 25 07 60 */	lfs f1, 0x760(r5)
/* 802757D4 0023ED94  D0 21 00 08 */	stfs f1, 8(r1)
/* 802757D8 0023ED98  C0 25 07 64 */	lfs f1, 0x764(r5)
/* 802757DC 0023ED9C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802757E0 0023EDA0  C0 25 07 68 */	lfs f1, 0x768(r5)
/* 802757E4 0023EDA4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802757E8 0023EDA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802757EC 0023EDAC  4B E3 74 79 */	bl func_800ACC64
.L_802757F0:
/* 802757F0 0023EDB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802757F4 0023EDB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802757F8 0023EDB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802757FC 0023EDBC  7C 08 03 A6 */	mtlr r0
/* 80275800 0023EDC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80275804 0023EDC4  4E 80 00 20 */	blr 
.endfn func_802756F0

.fn func_80275808, global
/* 80275808 0023EDC8  38 00 00 00 */	li r0, 0
/* 8027580C 0023EDCC  38 80 FF FF */	li r4, -1
/* 80275810 0023EDD0  90 83 00 20 */	stw r4, 0x20(r3)
/* 80275814 0023EDD4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80275818 0023EDD8  90 03 00 74 */	stw r0, 0x74(r3)
/* 8027581C 0023EDDC  B0 03 00 78 */	sth r0, 0x78(r3)
/* 80275820 0023EDE0  4E 80 00 20 */	blr 
.endfn func_80275808

.fn func_80275824, global
/* 80275824 0023EDE4  80 83 00 74 */	lwz r4, 0x74(r3)
/* 80275828 0023EDE8  2C 04 00 00 */	cmpwi r4, 0
/* 8027582C 0023EDEC  4D 82 00 20 */	beqlr 
/* 80275830 0023EDF0  38 A0 00 00 */	li r5, 0
/* 80275834 0023EDF4  90 A4 00 B0 */	stw r5, 0xb0(r4)
/* 80275838 0023EDF8  80 83 00 74 */	lwz r4, 0x74(r3)
/* 8027583C 0023EDFC  80 04 00 68 */	lwz r0, 0x68(r4)
/* 80275840 0023EE00  60 00 00 40 */	ori r0, r0, 0x40
/* 80275844 0023EE04  90 04 00 68 */	stw r0, 0x68(r4)
/* 80275848 0023EE08  90 A3 00 74 */	stw r5, 0x74(r3)
/* 8027584C 0023EE0C  4E 80 00 20 */	blr 
.endfn func_80275824

.fn func_80275850, global
/* 80275850 0023EE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80275854 0023EE14  7C 08 02 A6 */	mflr r0
/* 80275858 0023EE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027585C 0023EE1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80275860 0023EE20  7C 7F 1B 78 */	mr r31, r3
/* 80275864 0023EE24  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80275868 0023EE28  28 00 00 02 */	cmplwi r0, 2
/* 8027586C 0023EE2C  40 80 00 1C */	bge .L_80275888
/* 80275870 0023EE30  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80275874 0023EE34  3C 80 80 54 */	lis r4, lbl_8053B750@ha
/* 80275878 0023EE38  38 84 B7 50 */	addi r4, r4, lbl_8053B750@l
/* 8027587C 0023EE3C  7D 84 02 14 */	add r12, r4, r0
/* 80275880 0023EE40  48 04 44 DD */	bl __ptmf_scall
/* 80275884 0023EE44  60 00 00 00 */	nop 
.L_80275888:
/* 80275888 0023EE48  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8027588C 0023EE4C  2C 03 00 00 */	cmpwi r3, 0
/* 80275890 0023EE50  41 82 00 A8 */	beq .L_80275938
/* 80275894 0023EE54  80 63 00 68 */	lwz r3, 0x68(r3)
/* 80275898 0023EE58  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8027589C 0023EE5C  40 82 00 9C */	bne .L_80275938
/* 802758A0 0023EE60  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 802758A4 0023EE64  2C 04 00 00 */	cmpwi r4, 0
/* 802758A8 0023EE68  41 82 00 90 */	beq .L_80275938
/* 802758AC 0023EE6C  54 63 67 FF */	rlwinm. r3, r3, 0xc, 0x1f, 0x1f
/* 802758B0 0023EE70  41 82 00 14 */	beq .L_802758C4
/* 802758B4 0023EE74  80 04 00 68 */	lwz r0, 0x68(r4)
/* 802758B8 0023EE78  64 00 00 10 */	oris r0, r0, 0x10
/* 802758BC 0023EE7C  90 04 00 68 */	stw r0, 0x68(r4)
/* 802758C0 0023EE80  48 00 00 10 */	b .L_802758D0
.L_802758C4:
/* 802758C4 0023EE84  80 04 00 68 */	lwz r0, 0x68(r4)
/* 802758C8 0023EE88  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 802758CC 0023EE8C  90 04 00 68 */	stw r0, 0x68(r4)
.L_802758D0:
/* 802758D0 0023EE90  2C 03 00 00 */	cmpwi r3, 0
/* 802758D4 0023EE94  41 82 00 64 */	beq .L_80275938
/* 802758D8 0023EE98  4B E0 A0 45 */	bl func_8007F91C
/* 802758DC 0023EE9C  2C 03 00 00 */	cmpwi r3, 0
/* 802758E0 0023EEA0  41 82 00 30 */	beq .L_80275910
/* 802758E4 0023EEA4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 802758E8 0023EEA8  2C 03 00 00 */	cmpwi r3, 0
/* 802758EC 0023EEAC  41 82 00 4C */	beq .L_80275938
/* 802758F0 0023EEB0  A8 1F 00 78 */	lha r0, 0x78(r31)
/* 802758F4 0023EEB4  2C 00 00 01 */	cmpwi r0, 1
/* 802758F8 0023EEB8  41 82 00 40 */	beq .L_80275938
/* 802758FC 0023EEBC  38 80 00 01 */	li r4, 1
/* 80275900 0023EEC0  4B E3 73 15 */	bl func_800ACC14
/* 80275904 0023EEC4  38 00 00 01 */	li r0, 1
/* 80275908 0023EEC8  B0 1F 00 78 */	sth r0, 0x78(r31)
/* 8027590C 0023EECC  48 00 00 2C */	b .L_80275938
.L_80275910:
/* 80275910 0023EED0  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80275914 0023EED4  2C 03 00 00 */	cmpwi r3, 0
/* 80275918 0023EED8  41 82 00 20 */	beq .L_80275938
/* 8027591C 0023EEDC  A8 1F 00 78 */	lha r0, 0x78(r31)
/* 80275920 0023EEE0  2C 00 00 02 */	cmpwi r0, 2
/* 80275924 0023EEE4  41 82 00 14 */	beq .L_80275938
/* 80275928 0023EEE8  38 80 00 02 */	li r4, 2
/* 8027592C 0023EEEC  4B E3 72 E9 */	bl func_800ACC14
/* 80275930 0023EEF0  38 00 00 02 */	li r0, 2
/* 80275934 0023EEF4  B0 1F 00 78 */	sth r0, 0x78(r31)
.L_80275938:
/* 80275938 0023EEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027593C 0023EEFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80275940 0023EF00  7C 08 03 A6 */	mtlr r0
/* 80275944 0023EF04  38 21 00 10 */	addi r1, r1, 0x10
/* 80275948 0023EF08  4E 80 00 20 */	blr
.endfn func_80275850

.fn func_8027594C, global
/* 8027594C 0023EF0C  80 03 00 74 */	lwz r0, 0x74(r3)
/* 80275950 0023EF10  7C 04 00 40 */	cmplw r4, r0
/* 80275954 0023EF14  40 82 00 10 */	bne .L_80275964
/* 80275958 0023EF18  38 00 00 00 */	li r0, 0
/* 8027595C 0023EF1C  90 04 00 B0 */	stw r0, 0xb0(r4)
/* 80275960 0023EF20  90 03 00 74 */	stw r0, 0x74(r3)
.L_80275964:
/* 80275964 0023EF24  4B E5 A6 3C */	b func_800CFFA0
.endfn func_8027594C

.fn __dt__cf_CfObjectImplTbox, global
/* 80275968 0023EF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027596C 0023EF2C  7C 08 02 A6 */	mflr r0
/* 80275970 0023EF30  2C 03 00 00 */	cmpwi r3, 0
/* 80275974 0023EF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275978 0023EF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027597C 0023EF3C  7C 7F 1B 78 */	mr r31, r3
/* 80275980 0023EF40  41 82 00 10 */	beq .L_80275990
/* 80275984 0023EF44  2C 04 00 00 */	cmpwi r4, 0
/* 80275988 0023EF48  40 81 00 08 */	ble .L_80275990
/* 8027598C 0023EF4C  48 1B F2 A1 */	bl __dl__FPv
.L_80275990:
/* 80275990 0023EF50  7F E3 FB 78 */	mr r3, r31
/* 80275994 0023EF54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80275998 0023EF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027599C 0023EF5C  7C 08 03 A6 */	mtlr r0
/* 802759A0 0023EF60  38 21 00 10 */	addi r1, r1, 0x10
/* 802759A4 0023EF64  4E 80 00 20 */	blr 
.endfn __dt__cf_CfObjectImplTbox

.fn func_802759A8, global
/* 802759A8 0023EF68  38 60 00 00 */	li r3, 0
/* 802759AC 0023EF6C  4E 80 00 20 */	blr 
.endfn func_802759A8

.fn func_802759B0, global
/* 802759B0 0023EF70  38 63 FF F4 */	addi r3, r3, -12
/* 802759B4 0023EF74  4B FF FF B4 */	b __dt__cf_CfObjectImplTbox
.endfn func_802759B0

.fn func_802759B8, global
/* 802759B8 0023EF78  38 63 FF F0 */	addi r3, r3, -16
/* 802759BC 0023EF7C  4B FF FF 90 */	b func_8027594C
.endfn func_802759B8

.fn func_802759C0, global
/* 802759C0 0023EF80  38 63 FF F0 */	addi r3, r3, -16
/* 802759C4 0023EF84  4B FF FF A4 */	b __dt__cf_CfObjectImplTbox
.endfn func_802759C0

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_ICamControlClassic_typestr, global
	.asciz "cf::ICamControlClassic"
	.balign 4
.endobj cf_ICamControlClassic_typestr

.obj cf_ICamControlGc_typestr, global
	.asciz "cf::ICamControlGc"
	.balign 4
.endobj cf_ICamControlGc_typestr

.obj cf_ICamControlRemote_typestr, global
	.asciz "cf::ICamControlRemote"
	.balign 4
	.4byte 0
.endobj cf_ICamControlRemote_typestr

.obj cf_ICamControl_typestr, global
	.asciz "cf::ICamControl"
.endobj cf_ICamControl_typestr

.obj cf_CfObjectImplTbox_typestr, global
	.asciz "cf::CfObjectImplTbox"
	.balign 4
.endobj cf_CfObjectImplTbox_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053B678, global
	.4byte lbl_806671DC
	.4byte lbl_806671E4
	.4byte lbl_806671EC
	.4byte 0
.endobj lbl_8053B678


.obj __vt__cf_ICamControlClassic, global
	.4byte __RTTI__cf_ICamControlClassic
	.4byte 0
	.4byte func_80274EA8
	.4byte func_80274EB0
	.4byte func_80274EE4
	.4byte func_80274F34
	.4byte func_80274F94
	.4byte func_80274FF4
	.4byte func_80275028
	.4byte func_8027505C
	.4byte func_80275090
	.4byte func_802750C4
.endobj __vt__cf_ICamControlClassic

.obj cf_ICamControlClassic_hierarchy, global
	.4byte __RTTI__cf_ICamControl
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_ICamControlClassic_hierarchy


.obj __vt__cf_ICamControlGc, global
	.4byte __RTTI__cf_ICamControlGc
	.4byte 0
	.4byte func_80274B28
	.4byte func_80274C20
	.4byte func_80274C68
	.4byte func_80274B2C
	.4byte func_80274BA4
	.4byte func_80274DD8
	.4byte func_80274E0C
	.4byte func_80274E40
	.4byte func_80274E74
	.4byte func_80274DA4
.endobj __vt__cf_ICamControlGc

.obj cf_ICamControlGc_hierarchy, global
	.4byte __RTTI__cf_ICamControl
	.4byte 0
	.4byte __RTTI__cf_ICamControlRemote
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_ICamControlGc_hierarchy


.obj __vt__cf_ICamControlRemote, global
	.4byte __RTTI__cf_ICamControlRemote
	.4byte 0
	.4byte func_80274B28
	.4byte func_80274C20
	.4byte func_80274C68
	.4byte func_80274B2C
	.4byte func_80274BA4
	.4byte func_80274CD4
	.4byte func_80274D08
	.4byte func_80274D3C
	.4byte func_80274D70
	.4byte func_80274DA4
.endobj __vt__cf_ICamControlRemote

.obj cf_ICamControlRemote_hierarchy, global
	.4byte __RTTI__cf_ICamControl
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_ICamControlRemote_hierarchy


.obj lbl_8053B750, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80275454
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802756F0
.endobj lbl_8053B750


.obj __vt__cf_CfObjectImplTbox, global
	.4byte __RTTI__cf_CfObjectImplTbox
	.4byte 0
	.4byte __dt__cf_CfObjectImplTbox
	.4byte func_80054A20
	.4byte func_800CC5DC
	.4byte func_800CC638
	.4byte func_800CC964
	.4byte func_800CD268
	.4byte func_800CD460
	.4byte func_800CD5C0
	.4byte func_800CD5DC
	.4byte func_800CEB68
	.4byte func_80087448
	.4byte func_8008742C
	.4byte func_8008743C
	.4byte func_80087424
	.4byte func_800459FC
	.4byte func_80087410
	.4byte func_800873FC
	.4byte func_800873E8
	.4byte func_800873D4
	.4byte func_800873C8
	.4byte func_800873AC
	.4byte func_80087390
	.4byte func_80087378
	.4byte func_80087364
	.4byte func_80087334
	.4byte func_80087348
	.4byte func_800CE8E4
	.4byte func_800CEBE0
	.4byte func_800CE544
	.4byte func_800CE6A0
	.4byte func_800CE8AC
	.4byte func_800CEA34
	.4byte func_800CAB30
	.4byte func_800CB454
	.4byte func_800CB21C
	.4byte func_800CB9AC
	.4byte func_800CB94C
	.4byte func_80087330
	.4byte func_80275808
	.4byte func_80275850
	.4byte func_800C596C
	.4byte func_80275824
	.4byte func_800CAB00
	.4byte __RTTI__cf_CfObjectImplTbox
	.4byte 0xFFFFFFF4
	.4byte func_802759B0
	.4byte func_800CA6CC
	.4byte __RTTI__cf_CfObjectImplTbox
	.4byte 0xFFFFFFF0
	.4byte func_802759C0
	.4byte func_802759B8
	.4byte func_800CAB2C
	.4byte func_800CBBD8
	.4byte func_800CC01C
	.4byte func_800CC020
	.4byte func_802759A8
	.4byte func_800CEE28
	.4byte func_8027594C
.endobj __vt__cf_CfObjectImplTbox

.obj cf_CfObjectImplTbox_hierarchy, global
	.4byte __RTTI__cf_IObjectInfo
	.4byte 0x00000010
	.4byte __RTTI__IActParamEvent
	.4byte 0
	.4byte __RTTI__cf_CfObjectImpl
	.4byte 0
	.4byte __RTTI__cf_CfObjectImplMove
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CfObjectImplTbox_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__cf_ICamControlClassic, global
	.4byte cf_ICamControlClassic_typestr
	.4byte cf_ICamControlClassic_hierarchy
.endobj __RTTI__cf_ICamControlClassic

.obj __RTTI__cf_ICamControlGc, global
	.4byte cf_ICamControlGc_typestr
	.4byte cf_ICamControlGc_hierarchy
.endobj __RTTI__cf_ICamControlGc

.obj __RTTI__cf_ICamControlRemote, global
	.4byte cf_ICamControlRemote_typestr
	.4byte cf_ICamControlRemote_hierarchy
.endobj __RTTI__cf_ICamControlRemote

.obj __RTTI__cf_ICamControl, global
	.4byte cf_ICamControl_typestr
	.4byte 0
.endobj __RTTI__cf_ICamControl

.obj __RTTI__cf_CfObjectImplTbox, global
	.4byte cf_CfObjectImplTbox_typestr
	.4byte cf_CfObjectImplTbox_hierarchy
.endobj __RTTI__cf_CfObjectImplTbox

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066B280, global
	.float -4
.endobj float_8066B280


.obj float_8066B284, global
	.float 0.9
.endobj float_8066B284


.obj float_8066B288, global
	.float 0
.endobj float_8066B288


.obj float_8066B28C, global
	.float 0.01
.endobj float_8066B28C


.obj float_8066B290, global
	.float 1.0
.endobj float_8066B290


.obj float_8066B294, global
	.float 30
.endobj float_8066B294


.obj float_8066B298, global
	.float 0.001
.endobj float_8066B298


.obj float_8066B29C, global
	.float 0.1
.endobj float_8066B29C


.obj float_8066B2A0, global
	.float 0.4
	.4byte 0
.endobj float_8066B2A0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_806671D8, global
	.skip 0x4
.endobj lbl_806671D8

.obj lbl_806671DC, global
	.skip 0x4
.endobj lbl_806671DC

.obj lbl_806671E0, global
	.skip 0x4
.endobj lbl_806671E0

.obj lbl_806671E4, global
	.skip 0x4
.endobj lbl_806671E4

.obj lbl_806671E8, global
	.skip 0x4
.endobj lbl_806671E8

.obj lbl_806671EC, global
	.skip 0x4
.endobj lbl_806671EC

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80018570", local
.hidden "@etb_80018570"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018570"

.obj "@etb_80018578", local
.hidden "@etb_80018578"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018578"

.obj "@etb_80018580", local
.hidden "@etb_80018580"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018580"

.obj "@etb_80018588", local
.hidden "@etb_80018588"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018588"

.obj "@etb_80018590", local
.hidden "@etb_80018590"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018590"

.obj "@etb_80018598", local
.hidden "@etb_80018598"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018598"

.obj "@etb_800185A0", local
.hidden "@etb_800185A0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800185A0"

.obj "@etb_800185A8", local
.hidden "@etb_800185A8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800185A8"

.obj "@etb_800185B0", local
.hidden "@etb_800185B0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800185B0"

.obj "@etb_800185B8", local
.hidden "@etb_800185B8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800185B8"

.obj "@etb_800185C0", local
.hidden "@etb_800185C0"
	.4byte 0x280A0000
	.4byte 0x00000000
.endobj "@etb_800185C0"

.obj "@etb_800185C8", local
.hidden "@etb_800185C8"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_800185C8"

.obj "@etb_800185D0", local
.hidden "@etb_800185D0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800185D0"

.obj "@etb_800185D8", local
.hidden "@etb_800185D8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800185D8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80030BE4", local
.hidden "@eti_80030BE4"
	.4byte func_8027513C
	.4byte 0x000000BC
	.4byte "@etb_80018570"
.endobj "@eti_80030BE4"

.obj "@eti_80030BF0", local
.hidden "@eti_80030BF0"
	.4byte func_802751F8
	.4byte 0x00000040
	.4byte "@etb_80018578"
.endobj "@eti_80030BF0"

.obj "@eti_80030BFC", local
.hidden "@eti_80030BFC"
	.4byte func_80275238
	.4byte 0x00000040
	.4byte "@etb_80018580"
.endobj "@eti_80030BFC"

.obj "@eti_80030C08", local
.hidden "@eti_80030C08"
	.4byte func_80275278
	.4byte 0x00000040
	.4byte "@etb_80018588"
.endobj "@eti_80030C08"

.obj "@eti_80030C14", local
.hidden "@eti_80030C14"
	.4byte func_802752B8
	.4byte 0x00000040
	.4byte "@etb_80018590"
.endobj "@eti_80030C14"

.obj "@eti_80030C20", local
.hidden "@eti_80030C20"
	.4byte func_802752F8
	.4byte 0x00000040
	.4byte "@etb_80018598"
.endobj "@eti_80030C20"

.obj "@eti_80030C2C", local
.hidden "@eti_80030C2C"
	.4byte func_80275338
	.4byte 0x00000040
	.4byte "@etb_800185A0"
.endobj "@eti_80030C2C"

.obj "@eti_80030C38", local
.hidden "@eti_80030C38"
	.4byte func_80275378
	.4byte 0x00000040
	.4byte "@etb_800185A8"
.endobj "@eti_80030C38"

.obj "@eti_80030C44", local
.hidden "@eti_80030C44"
	.4byte func_802753B8
	.4byte 0x00000040
	.4byte "@etb_800185B0"
.endobj "@eti_80030C44"

.obj "@eti_80030C50", local
.hidden "@eti_80030C50"
	.4byte func_802753F8
	.4byte 0x0000005C
	.4byte "@etb_800185B8"
.endobj "@eti_80030C50"

.obj "@eti_80030C5C", local
.hidden "@eti_80030C5C"
	.4byte func_80275454
	.4byte 0x0000029C
	.4byte "@etb_800185C0"
.endobj "@eti_80030C5C"

.obj "@eti_80030C68", local
.hidden "@eti_80030C68"
	.4byte func_802756F0
	.4byte 0x00000118
	.4byte "@etb_800185C8"
.endobj "@eti_80030C68"

.obj "@eti_80030C74", local
.hidden "@eti_80030C74"
	.4byte func_80275850
	.4byte 0x000000FC
	.4byte "@etb_800185D0"
.endobj "@eti_80030C74"

.obj "@eti_80030C80", local
.hidden "@eti_80030C80"
	.4byte __dt__cf_CfObjectImplTbox
	.4byte 0x00000040
	.4byte "@etb_800185D8"
.endobj "@eti_80030C80"
