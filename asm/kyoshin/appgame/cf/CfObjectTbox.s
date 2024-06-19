.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__Q22cf12CfObjectTboxFv, global
/* 801F8CB4 001C2274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F8CB8 001C2278  7C 08 02 A6 */	mflr r0
/* 801F8CBC 001C227C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8CC0 001C2280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F8CC4 001C2284  7C 7F 1B 78 */	mr r31, r3
/* 801F8CC8 001C2288  4B EC 6C C5 */	bl __ct__cf_CfObjectObj
/* 801F8CCC 001C228C  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 801F8CD0 001C2290  3C 80 80 54 */	lis r4, __vt__Q22cf12CfObjectTbox@ha
/* 801F8CD4 001C2294  38 84 87 70 */	addi r4, r4, __vt__Q22cf12CfObjectTbox@l
/* 801F8CD8 001C2298  38 00 00 00 */	li r0, 0
/* 801F8CDC 001C229C  2C 03 00 00 */	cmpwi r3, 0
/* 801F8CE0 001C22A0  90 9F 00 00 */	stw r4, 0(r31)
/* 801F8CE4 001C22A4  90 1F 07 34 */	stw r0, 0x734(r31)
/* 801F8CE8 001C22A8  41 82 00 24 */	beq .L_801F8D0C
/* 801F8CEC 001C22AC  41 82 00 18 */	beq .L_801F8D04
/* 801F8CF0 001C22B0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801F8CF4 001C22B4  38 80 00 01 */	li r4, 1
/* 801F8CF8 001C22B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F8CFC 001C22BC  7D 89 03 A6 */	mtctr r12
/* 801F8D00 001C22C0  4E 80 04 21 */	bctrl 
.L_801F8D04:
/* 801F8D04 001C22C4  38 00 00 00 */	li r0, 0
/* 801F8D08 001C22C8  90 1F 00 B0 */	stw r0, 0xb0(r31)
.L_801F8D0C:
/* 801F8D0C 001C22CC  38 00 00 00 */	li r0, 0
/* 801F8D10 001C22D0  38 60 00 01 */	li r3, 1
/* 801F8D14 001C22D4  90 7F 07 2C */	stw r3, 0x72c(r31)
/* 801F8D18 001C22D8  B0 1F 07 30 */	sth r0, 0x730(r31)
/* 801F8D1C 001C22DC  90 1F 07 18 */	stw r0, 0x718(r31)
/* 801F8D20 001C22E0  4B E6 92 DD */	bl func_80061FFC
/* 801F8D24 001C22E4  7C 64 1B 78 */	mr r4, r3
/* 801F8D28 001C22E8  38 60 00 1C */	li r3, 0x1c
/* 801F8D2C 001C22EC  48 23 BD 31 */	bl heap_malloc__3mtlFUli
/* 801F8D30 001C22F0  2C 03 00 00 */	cmpwi r3, 0
/* 801F8D34 001C22F4  41 82 00 0C */	beq .L_801F8D40
/* 801F8D38 001C22F8  7F E4 FB 78 */	mr r4, r31
/* 801F8D3C 001C22FC  48 00 00 F9 */	bl __ct__cf_CfResTboxImpl
.L_801F8D40:
/* 801F8D40 001C2300  90 7F 00 B0 */	stw r3, 0xb0(r31)
/* 801F8D44 001C2304  7F E3 FB 78 */	mr r3, r31
/* 801F8D48 001C2308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F8D4C 001C230C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F8D50 001C2310  7C 08 03 A6 */	mtlr r0
/* 801F8D54 001C2314  38 21 00 10 */	addi r1, r1, 0x10
/* 801F8D58 001C2318  4E 80 00 20 */	blr 
.endfn __ct__Q22cf12CfObjectTboxFv

.fn __dt__Q22cf12CfObjectTboxFv, global
/* 801F8D5C 001C231C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F8D60 001C2320  7C 08 02 A6 */	mflr r0
/* 801F8D64 001C2324  2C 03 00 00 */	cmpwi r3, 0
/* 801F8D68 001C2328  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8D6C 001C232C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F8D70 001C2330  7C 9F 23 78 */	mr r31, r4
/* 801F8D74 001C2334  93 C1 00 08 */	stw r30, 8(r1)
/* 801F8D78 001C2338  7C 7E 1B 78 */	mr r30, r3
/* 801F8D7C 001C233C  41 82 00 38 */	beq .L_801F8DB4
/* 801F8D80 001C2340  3D 80 80 54 */	lis r12, __vt__Q22cf12CfObjectTbox@ha
/* 801F8D84 001C2344  39 8C 87 70 */	addi r12, r12, __vt__Q22cf12CfObjectTbox@l
/* 801F8D88 001C2348  91 83 00 00 */	stw r12, 0(r3)
/* 801F8D8C 001C234C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801F8D90 001C2350  7D 89 03 A6 */	mtctr r12
/* 801F8D94 001C2354  4E 80 04 21 */	bctrl 
/* 801F8D98 001C2358  7F C3 F3 78 */	mr r3, r30
/* 801F8D9C 001C235C  38 80 00 00 */	li r4, 0
/* 801F8DA0 001C2360  4B EC 6C 75 */	bl __dt__800BFA14
/* 801F8DA4 001C2364  2C 1F 00 00 */	cmpwi r31, 0
/* 801F8DA8 001C2368  40 81 00 0C */	ble .L_801F8DB4
/* 801F8DAC 001C236C  7F C3 F3 78 */	mr r3, r30
/* 801F8DB0 001C2370  48 23 BE 7D */	bl __dl__FPv
.L_801F8DB4:
/* 801F8DB4 001C2374  7F C3 F3 78 */	mr r3, r30
/* 801F8DB8 001C2378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F8DBC 001C237C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F8DC0 001C2380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F8DC4 001C2384  7C 08 03 A6 */	mtlr r0
/* 801F8DC8 001C2388  38 21 00 10 */	addi r1, r1, 0x10
/* 801F8DCC 001C238C  4E 80 00 20 */	blr 
.endfn __dt__Q22cf12CfObjectTboxFv

.fn func_801F8DD0__Q22cf12CfObjectTboxFv, global
/* 801F8DD0 001C2390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F8DD4 001C2394  7C 08 02 A6 */	mflr r0
/* 801F8DD8 001C2398  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8DDC 001C239C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F8DE0 001C23A0  7C 7F 1B 78 */	mr r31, r3
/* 801F8DE4 001C23A4  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 801F8DE8 001C23A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8DEC 001C23AC  54 00 02 52 */	rlwinm r0, r0, 0, 9, 9
/* 801F8DF0 001C23B0  7C 00 00 34 */	cntlzw r0, r0
/* 801F8DF4 001C23B4  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 801F8DF8 001C23B8  54 04 D9 7E */	srwi r4, r0, 5
/* 801F8DFC 001C23BC  7D 89 03 A6 */	mtctr r12
/* 801F8E00 001C23C0  4E 80 04 21 */	bctrl 
/* 801F8E04 001C23C4  7F E3 FB 78 */	mr r3, r31
/* 801F8E08 001C23C8  4B EC 6D 89 */	bl func_800BFB90__Q22cf11CfObjectObjFv
/* 801F8E0C 001C23CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F8E10 001C23D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F8E14 001C23D4  7C 08 03 A6 */	mtlr r0
/* 801F8E18 001C23D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801F8E1C 001C23DC  4E 80 00 20 */	blr 
.endfn func_801F8DD0__Q22cf12CfObjectTboxFv

.fn func_801F8E20, global
/* 801F8E20 001C23E0  80 63 00 38 */	lwz r3, 0x38(r3)
/* 801F8E24 001C23E4  2C 03 00 00 */	cmpwi r3, 0
/* 801F8E28 001C23E8  4D 82 00 20 */	beqlr 
/* 801F8E2C 001C23EC  48 07 C5 CC */	b func_802753F8
/* 801F8E30 001C23F0  4E 80 00 20 */	blr 
.endfn func_801F8E20

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf12CfObjectTbox, global
	.4byte __RTTI__Q22cf12CfObjectTbox
	.4byte 0
	.4byte CObjectState_virtualFunc1__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc2__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc3__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc4__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc5__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc6__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc7__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc8__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc9__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc10__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc11__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc12__Q22cf12CObjectStateFv
	.4byte CObjectState_virtualFunc13__Q22cf12CObjectStateFv
	.4byte CObjectParam_virtualFunc1__Q22cf12CObjectParamFv
	.4byte CObjectParam_virtualFunc2__Q22cf12CfObjectMoveFv
	.4byte CObjectParam_virtualFunc3__Q22cf12CObjectParamFv
	.4byte func_800BFAAC__Q22cf11CfObjectObjFv
	.4byte CObjectParam_virtualFunc5__Q22cf12CObjectParamFv
	.4byte CObjectParam_virtualFunc6__Q22cf12CObjectParamFv
	.4byte __dt__Q22cf12CfObjectTboxFv
	.4byte func_800BFA88__Q22cf11CfObjectObjFv
	.4byte CfObject_vtableFunc3__Q22cf8CfObjectFv
	.4byte func_801F8DD0__Q22cf12CfObjectTboxFv
	.4byte CfObject_vtableFunc5__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc6__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc7__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc8__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc9__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc10__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc11__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc12__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc13__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc14__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc15__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc16__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc17__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc18__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc19__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc20__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc21__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc22__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc23__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc24__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc25__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc26__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc27__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc28__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc29__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc30__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc31__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc32__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc33__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc34__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc35__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc36__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc37__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc38__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc39__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc40__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc41__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc42__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc43__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc44__Q22cf8CfObjectFv
	.4byte CfObject_vtableFunc45__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc46__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc47__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc48__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc49__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc50__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc51__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc52__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc53__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc54__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc55__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc56__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc57__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc58__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc59__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc60__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc61__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc62__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc63__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc64__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc65__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc66__Q22cf12CfObjectMoveFv
	.4byte CfObject_vtableFunc67__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc68__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc69__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc70__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc71__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc72__Q22cf13CfObjectModelFv
	.4byte CfObject_vtableFunc73__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc1__Q22cf12CfObjectMoveFv
	.4byte CfObjectModel_vtableFunc2__Q22cf12CfObjectMoveFv
	.4byte CfObjectModel_vtableFunc3__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc4__Q22cf12CfObjectMoveFv
	.4byte CfObjectModel_vtableFunc5__Q22cf12CfObjectMoveFv
	.4byte CfObjectModel_vtableFunc6__Q22cf12CfObjectMoveFv
	.4byte CfObjectModel_vtableFunc7__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc8__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc9__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc10__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc11__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc12__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc13__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc14__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc15__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc16__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc17__Q22cf13CfObjectModelFv
	.4byte CfObjectModel_vtableFunc18__Q22cf12CfObjectMoveFv
	.4byte CfObjectModel_vtableFunc19__Q22cf12CfObjectMoveFv
	.4byte CfObjectModel_vtableFunc20__Q22cf13CfObjectModelFv
	.4byte CfObjectMove_vtableFunc1__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc2__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc3__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc4__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc5__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc6__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc7__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc8__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc9__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc10__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc11__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc12__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc13__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc14__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc15__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc16__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc17__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc18__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc19__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc20__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc21__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc22__Q22cf12CfObjectMoveFv
	.4byte CfObjectMove_vtableFunc23__Q22cf12CfObjectMoveFv
	.4byte 0
.endobj __vt__Q22cf12CfObjectTbox

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800123F8", local
.hidden "@etb_800123F8"
	.4byte 0x08080000
	.4byte 0x00000050
	.4byte 0x000F0010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__800BFA14
.endobj "@etb_800123F8"

.obj "@etb_80012414", local
.hidden "@etb_80012414"
	.4byte 0x10080000
	.4byte 0x0000003C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__800BFA14
.endobj "@etb_80012414"

.obj "@etb_80012430", local
.hidden "@etb_80012430"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80012430"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002C570", local
.hidden "@eti_8002C570"
	.4byte __ct__Q22cf12CfObjectTboxFv
	.4byte 0x000000A8
	.4byte "@etb_800123F8"
.endobj "@eti_8002C570"

.obj "@eti_8002C57C", local
.hidden "@eti_8002C57C"
	.4byte __dt__Q22cf12CfObjectTboxFv
	.4byte 0x00000074
	.4byte "@etb_80012414"
.endobj "@eti_8002C57C"

.obj "@eti_8002C588", local
.hidden "@eti_8002C588"
	.4byte func_801F8DD0__Q22cf12CfObjectTboxFv
	.4byte 0x00000050
	.4byte "@etb_80012430"
.endobj "@eti_8002C588"
