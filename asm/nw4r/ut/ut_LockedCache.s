.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn Enable__Q34nw4r2ut2LCFv, global
/* 8042BE20 003F53E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BE24 003F53E4  7C 08 02 A6 */	mflr r0
/* 8042BE28 003F53E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BE2C 003F53EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BE30 003F53F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8042BE34 003F53F4  3F C0 80 65 */	lis r30, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@ha
/* 8042BE38 003F53F8  38 7E 70 88 */	addi r3, r30, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l
/* 8042BE3C 003F53FC  3B E3 00 04 */	addi r31, r3, 4
/* 8042BE40 003F5400  7F E3 FB 78 */	mr r3, r31
/* 8042BE44 003F5404  4B F2 DE 1D */	bl OSLockMutex
/* 8042BE48 003F5408  88 1E 70 88 */	lbz r0, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l(r30)
/* 8042BE4C 003F540C  2C 00 00 00 */	cmpwi r0, 0
/* 8042BE50 003F5410  40 82 00 10 */	bne .L_8042BE60
/* 8042BE54 003F5414  4B F2 83 8D */	bl LCEnable
/* 8042BE58 003F5418  38 00 00 01 */	li r0, 1
/* 8042BE5C 003F541C  98 1E 70 88 */	stb r0, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l(r30)
.L_8042BE60:
/* 8042BE60 003F5420  7F E3 FB 78 */	mr r3, r31
/* 8042BE64 003F5424  4B F2 DE DD */	bl OSUnlockMutex
/* 8042BE68 003F5428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BE6C 003F542C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BE70 003F5430  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042BE74 003F5434  7C 08 03 A6 */	mtlr r0
/* 8042BE78 003F5438  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BE7C 003F543C  4E 80 00 20 */	blr 
.endfn Enable__Q34nw4r2ut2LCFv

.fn Disable__Q34nw4r2ut2LCFv, global
/* 8042BE80 003F5440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BE84 003F5444  7C 08 02 A6 */	mflr r0
/* 8042BE88 003F5448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BE8C 003F544C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BE90 003F5450  93 C1 00 08 */	stw r30, 8(r1)
/* 8042BE94 003F5454  3F C0 80 65 */	lis r30, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@ha
/* 8042BE98 003F5458  38 7E 70 88 */	addi r3, r30, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l
/* 8042BE9C 003F545C  3B E3 00 04 */	addi r31, r3, 4
/* 8042BEA0 003F5460  7F E3 FB 78 */	mr r3, r31
/* 8042BEA4 003F5464  4B F2 DD BD */	bl OSLockMutex
/* 8042BEA8 003F5468  88 1E 70 88 */	lbz r0, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l(r30)
/* 8042BEAC 003F546C  2C 00 00 00 */	cmpwi r0, 0
/* 8042BEB0 003F5470  41 82 00 28 */	beq .L_8042BED8
/* 8042BEB4 003F5474  48 00 00 08 */	b .L_8042BEBC
.L_8042BEB8:
/* 8042BEB8 003F5478  4B F2 FC B9 */	bl OSYieldThread
.L_8042BEBC:
/* 8042BEBC 003F547C  4B F2 84 95 */	bl LCQueueLength
/* 8042BEC0 003F5480  2C 03 00 00 */	cmpwi r3, 0
/* 8042BEC4 003F5484  40 82 FF F4 */	bne .L_8042BEB8
/* 8042BEC8 003F5488  4B F2 83 59 */	bl LCDisable
/* 8042BECC 003F548C  38 00 00 00 */	li r0, 0
/* 8042BED0 003F5490  3C 60 80 65 */	lis r3, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@ha
/* 8042BED4 003F5494  98 03 70 88 */	stb r0, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l(r3)
.L_8042BED8:
/* 8042BED8 003F5498  7F E3 FB 78 */	mr r3, r31
/* 8042BEDC 003F549C  4B F2 DE 65 */	bl OSUnlockMutex
/* 8042BEE0 003F54A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BEE4 003F54A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BEE8 003F54A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042BEEC 003F54AC  7C 08 03 A6 */	mtlr r0
/* 8042BEF0 003F54B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BEF4 003F54B4  4E 80 00 20 */	blr 
.endfn Disable__Q34nw4r2ut2LCFv

.fn Lock__Q34nw4r2ut2LCFv, global
/* 8042BEF8 003F54B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BEFC 003F54BC  7C 08 02 A6 */	mflr r0
/* 8042BF00 003F54C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BF04 003F54C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BF08 003F54C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8042BF0C 003F54CC  3F C0 80 65 */	lis r30, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@ha
/* 8042BF10 003F54D0  3B FE 70 88 */	addi r31, r30, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l
/* 8042BF14 003F54D4  38 7F 00 04 */	addi r3, r31, 4
/* 8042BF18 003F54D8  4B F2 DD 49 */	bl OSLockMutex
/* 8042BF1C 003F54DC  88 1E 70 88 */	lbz r0, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l(r30)
/* 8042BF20 003F54E0  2C 00 00 00 */	cmpwi r0, 0
/* 8042BF24 003F54E4  41 82 00 20 */	beq .L_8042BF44
/* 8042BF28 003F54E8  48 00 00 08 */	b .L_8042BF30
.L_8042BF2C:
/* 8042BF2C 003F54EC  4B F2 FC 45 */	bl OSYieldThread
.L_8042BF30:
/* 8042BF30 003F54F0  4B F2 84 21 */	bl LCQueueLength
/* 8042BF34 003F54F4  2C 03 00 00 */	cmpwi r3, 0
/* 8042BF38 003F54F8  40 82 FF F4 */	bne .L_8042BF2C
/* 8042BF3C 003F54FC  38 60 00 01 */	li r3, 1
/* 8042BF40 003F5500  48 00 00 10 */	b .L_8042BF50
.L_8042BF44:
/* 8042BF44 003F5504  38 7F 00 04 */	addi r3, r31, 4
/* 8042BF48 003F5508  4B F2 DD F9 */	bl OSUnlockMutex
/* 8042BF4C 003F550C  38 60 00 00 */	li r3, 0
.L_8042BF50:
/* 8042BF50 003F5510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BF54 003F5514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BF58 003F5518  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042BF5C 003F551C  7C 08 03 A6 */	mtlr r0
/* 8042BF60 003F5520  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BF64 003F5524  4E 80 00 20 */	blr 
.endfn Lock__Q34nw4r2ut2LCFv

.fn Unlock__Q34nw4r2ut2LCFv, global
/* 8042BF68 003F5528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BF6C 003F552C  7C 08 02 A6 */	mflr r0
/* 8042BF70 003F5530  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BF74 003F5534  48 00 00 08 */	b .L_8042BF7C
.L_8042BF78:
/* 8042BF78 003F5538  4B F2 FB F9 */	bl OSYieldThread
.L_8042BF7C:
/* 8042BF7C 003F553C  4B F2 83 D5 */	bl LCQueueLength
/* 8042BF80 003F5540  2C 03 00 00 */	cmpwi r3, 0
/* 8042BF84 003F5544  40 82 FF F4 */	bne .L_8042BF78
/* 8042BF88 003F5548  3C 60 80 65 */	lis r3, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@ha
/* 8042BF8C 003F554C  38 63 70 88 */	addi r3, r3, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l
/* 8042BF90 003F5550  38 63 00 04 */	addi r3, r3, 4
/* 8042BF94 003F5554  4B F2 DD AD */	bl OSUnlockMutex
/* 8042BF98 003F5558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BF9C 003F555C  7C 08 03 A6 */	mtlr r0
/* 8042BFA0 003F5560  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BFA4 003F5564  4E 80 00 20 */	blr 
.endfn Unlock__Q34nw4r2ut2LCFv

.fn LoadBlocks__Q34nw4r2ut2LCFPvPvUl, global
/* 8042BFA8 003F5568  4B F2 82 A8 */	b LCLoadBlocks
.endfn LoadBlocks__Q34nw4r2ut2LCFPvPvUl

.fn StoreBlocks__Q34nw4r2ut2LCFPvPvUl, global
/* 8042BFAC 003F556C  4B F2 82 D4 */	b LCStoreBlocks
.endfn StoreBlocks__Q34nw4r2ut2LCFPvPvUl

.fn StoreData__Q34nw4r2ut2LCFPvPvUl, global
/* 8042BFB0 003F5570  4B F2 83 00 */	b LCStoreData
.endfn StoreData__Q34nw4r2ut2LCFPvPvUl


.fn "__sinit_\ut_LockedCache_cpp", local
/* 8042BFB4 003F5574  3C 80 80 65 */	lis r4, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@ha
/* 8042BFB8 003F5578  38 00 00 00 */	li r0, 0
/* 8042BFBC 003F557C  38 64 70 88 */	addi r3, r4, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l
/* 8042BFC0 003F5580  98 04 70 88 */	stb r0, "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"@l(r4)
/* 8042BFC4 003F5584  38 63 00 04 */	addi r3, r3, 4
/* 8042BFC8 003F5588  4B F2 DC 58 */	b OSInitMutex
.endfn "__sinit_\ut_LockedCache_cpp"

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte "__sinit_\ut_LockedCache_cpp"


.section .bss, "wa"  # 0x80573C80 - 0x8066417B
.obj "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@", local
	.skip 0x20
.endobj "sLCImpl__Q34nw4r2ut28@unnamed@ut_LockedCache_cpp@"
