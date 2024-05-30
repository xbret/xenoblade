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
/* 801F8D2C 001C22EC  48 23 BD 31 */	bl heap_malloc
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
	.4byte func_8003DC64__Q22cf12CObjectStateFv
	.4byte func_8003CB58__Q22cf12CObjectStateFv
	.4byte func_8003DD34__Q22cf12CObjectStateFv
	.4byte func_800A34A8__Q22cf12CObjectStateFv
	.4byte func_8009489C__Q22cf12CObjectStateFv
	.4byte func_800A349C__Q22cf12CObjectStateFv
	.4byte func_80086B4C__Q22cf12CObjectStateFv
	.4byte func_8003CB20__Q22cf12CObjectStateFv
	.4byte func_8003D98C__Q22cf12CObjectStateFv
	.4byte func_8003D8C0__Q22cf12CObjectStateFv
	.4byte func_8003D7B0__Q22cf12CObjectStateFv
	.4byte func_800A3494__Q22cf12CObjectStateFv
	.4byte func_800A3488__Q22cf12CObjectStateFv
	.4byte func_8003C7F8__Q22cf12CObjectParamFv
	.4byte func_800BE0F4__Q22cf12CfObjectMoveFv
	.4byte func_800A34B4__Q22cf12CObjectParamFv
	.4byte func_800BFAAC__Q22cf11CfObjectObjFv
	.4byte func_8003E664__Q22cf12CObjectParamFv
	.4byte func_8003DC74__Q22cf12CObjectParamFv
	.4byte __dt__Q22cf12CfObjectTboxFv
	.4byte func_800BFA88__Q22cf11CfObjectObjFv
	.4byte func_800AC75C__Q22cf8CfObjectFv
	.4byte func_801F8DD0__Q22cf12CfObjectTboxFv
	.4byte func_800BC758__Q22cf12CfObjectMoveFv
	.4byte func_800BC040__Q22cf12CfObjectMoveFv
	.4byte func_800BC020__Q22cf12CfObjectMoveFv
	.4byte func_800BABBC__Q22cf13CfObjectModelFv
	.4byte func_800BE984__Q22cf12CfObjectMoveFv
	.4byte func_800BE998__Q22cf12CfObjectMoveFv
	.4byte func_800AC5E4__Q22cf8CfObjectFv
	.4byte func_800BE9E4__Q22cf12CfObjectMoveFv
	.4byte func_800BE088__Q22cf12CfObjectMoveFv
	.4byte func_800BE1C4__Q22cf12CfObjectMoveFv
	.4byte func_800BE1F8__Q22cf12CfObjectMoveFv
	.4byte func_800BE214__Q22cf12CfObjectMoveFv
	.4byte func_800BE248__Q22cf12CfObjectMoveFv
	.4byte func_8008F9CC__Q22cf12CfObjectMoveFv
	.4byte func_800BDB6C__Q22cf12CfObjectMoveFv
	.4byte func_800BB0E8__Q22cf13CfObjectModelFv
	.4byte func_800AC5A8__Q22cf8CfObjectFv
	.4byte func_800BDBC0__Q22cf12CfObjectMoveFv
	.4byte func_800BDE8C__Q22cf12CfObjectMoveFv
	.4byte func_800BB168__Q22cf13CfObjectModelFv
	.4byte func_800BDC24__Q22cf12CfObjectMoveFv
	.4byte func_800BDD58__Q22cf12CfObjectMoveFv
	.4byte func_800BDEC4__Q22cf12CfObjectMoveFv
	.4byte func_800BB200__Q22cf13CfObjectModelFv
	.4byte func_800BDF78__Q22cf12CfObjectMoveFv
	.4byte func_800BDFE0__Q22cf12CfObjectMoveFv
	.4byte func_800BB290__Q22cf13CfObjectModelFv
	.4byte func_800BE058__Q22cf12CfObjectMoveFv
	.4byte func_800BE070__Q22cf12CfObjectMoveFv
	.4byte func_800BB2E4__Q22cf13CfObjectModelFv
	.4byte func_800BB318__Q22cf13CfObjectModelFv
	.4byte func_800BB338__Q22cf13CfObjectModelFv
	.4byte func_800BEC4C__Q22cf12CfObjectMoveFv
	.4byte func_800BECF8__Q22cf12CfObjectMoveFv
	.4byte func_800BEE34__Q22cf12CfObjectMoveFv
	.4byte func_800BEF20__Q22cf12CfObjectMoveFv
	.4byte func_800AC570__Q22cf8CfObjectFv
	.4byte func_800BF014__Q22cf12CfObjectMoveFv
	.4byte func_800BF100__Q22cf12CfObjectMoveFv
	.4byte func_800AC558__Q22cf8CfObjectFv
	.4byte func_800BF1F4__Q22cf12CfObjectMoveFv
	.4byte func_800BD774__Q22cf12CfObjectMoveFv
	.4byte func_800BD860__Q22cf12CfObjectMoveFv
	.4byte func_8004ABD8__Q22cf12CfObjectMoveFv
	.4byte func_800BDA10__Q22cf12CfObjectMoveFv
	.4byte func_8003BD64__Q22cf12CfObjectMoveFv
	.4byte func_8003BD70__Q22cf12CfObjectMoveFv
	.4byte func_800BB3AC__Q22cf13CfObjectModelFv
	.4byte func_800BB454__Q22cf13CfObjectModelFv
	.4byte func_800BB4FC__Q22cf13CfObjectModelFv
	.4byte func_800BB534__Q22cf13CfObjectModelFv
	.4byte func_800BB364__Q22cf13CfObjectModelFv
	.4byte func_800BE0B8__Q22cf12CfObjectMoveFv
	.4byte func_8008E064__Q22cf12CfObjectMoveFv
	.4byte func_800AEAE4__Q22cf12CfObjectMoveFv
	.4byte func_80087EE4__Q22cf12CfObjectMoveFv
	.4byte func_800BE9BC__Q22cf12CfObjectMoveFv
	.4byte func_800BE9D0__Q22cf12CfObjectMoveFv
	.4byte func_800BACDC__Q22cf13CfObjectModelFv
	.4byte func_800BDA9C__Q22cf12CfObjectMoveFv
	.4byte func_800BDAF4__Q22cf12CfObjectMoveFv
	.4byte func_800BEB28__Q22cf12CfObjectMoveFv
	.4byte func_800BB684__Q22cf13CfObjectModelFv
	.4byte func_800BB974__Q22cf13CfObjectModelFv
	.4byte func_800BB954__Q22cf13CfObjectModelFv
	.4byte func_800BB708__Q22cf13CfObjectModelFv
	.4byte func_80094FF8__Q22cf13CfObjectModelFv
	.4byte func_800BB730__Q22cf13CfObjectModelFv
	.4byte func_80094FF0__Q22cf13CfObjectModelFv
	.4byte func_800BC0DC__Q22cf12CfObjectMoveFv
	.4byte func_800BC21C__Q22cf12CfObjectMoveFv
	.4byte func_800BB5F0__Q22cf13CfObjectModelFv
	.4byte func_800B0618__Q22cf12CfObjectMoveFv
	.4byte func_800B0610__Q22cf12CfObjectMoveFv
	.4byte func_800BEC30__Q22cf12CfObjectMoveFv
	.4byte func_800BBABC__Q22cf13CfObjectModelFv
	.4byte func_800BBA9C__Q22cf13CfObjectModelFv
	.4byte func_800B0608__Q22cf13CfObjectModelFv
	.4byte func_800BB738__Q22cf13CfObjectModelFv
	.4byte func_800B0600__Q22cf13CfObjectModelFv
	.4byte func_800BB740__Q22cf13CfObjectModelFv
	.4byte func_800BB748__Q22cf13CfObjectModelFv
	.4byte func_800BB7B0__Q22cf13CfObjectModelFv
	.4byte func_800BB914__Q22cf13CfObjectModelFv
	.4byte func_8003E3C8__Q22cf13CfObjectModelFv
	.4byte func_800B05F8__Q22cf13CfObjectModelFv
	.4byte func_800BE7AC__Q22cf12CfObjectMoveFv
	.4byte func_800BEB98__Q22cf12CfObjectMoveFv
	.4byte func_800B05EC__Q22cf13CfObjectModelFv
	.4byte func_800BC364__Q22cf12CfObjectMoveFv
	.4byte func_800BC2E0__Q22cf12CfObjectMoveFv
	.4byte func_800BEA40__Q22cf12CfObjectMoveFv
	.4byte func_800BE0DC__Q22cf12CfObjectMoveFv
	.4byte func_80092CA8__Q22cf12CfObjectMoveFv
	.4byte func_80093924__Q22cf12CfObjectMoveFv
	.4byte func_800BE264__Q22cf12CfObjectMoveFv
	.4byte func_800BE278__Q22cf12CfObjectMoveFv
	.4byte func_800BE2A0__Q22cf12CfObjectMoveFv
	.4byte func_800BE2D8__Q22cf12CfObjectMoveFv
	.4byte func_800BE2EC__Q22cf12CfObjectMoveFv
	.4byte func_800BE300__Q22cf12CfObjectMoveFv
	.4byte func_800BE314__Q22cf12CfObjectMoveFv
	.4byte func_800BE328__Q22cf12CfObjectMoveFv
	.4byte func_800B4B04__Q22cf12CfObjectMoveFv
	.4byte func_800BE474__Q22cf12CfObjectMoveFv
	.4byte func_800BE504__Q22cf12CfObjectMoveFv
	.4byte func_800BE57C__Q22cf12CfObjectMoveFv
	.4byte func_800BE6B4__Q22cf12CfObjectMoveFv
	.4byte func_800BE734__Q22cf12CfObjectMoveFv
	.4byte func_800BE5F4__Q22cf12CfObjectMoveFv
	.4byte func_800BE65C__Q22cf12CfObjectMoveFv
	.4byte func_800BE858__Q22cf12CfObjectMoveFv
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
