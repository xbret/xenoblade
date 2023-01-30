.include "macros.inc"

.section .init, "ax"  # 0x80004000 - 0x800066E0

.balign 32, 0
.fn __init_hardware, global
/* 800065C0 000026C0  7C 00 00 A6 */	mfmsr r0
/* 800065C4 000026C4  60 00 20 00 */	ori r0, r0, 0x2000
/* 800065C8 000026C8  7C 00 01 24 */	mtmsr r0
/* 800065CC 000026CC  7F E8 02 A6 */	mflr r31
/* 800065D0 000026D0  48 34 C6 C1 */	bl __OSPSInit
/* 800065D4 000026D4  48 34 B2 AD */	bl __OSFPRInit
/* 800065D8 000026D8  48 34 DE F9 */	bl __OSCacheInit
/* 800065DC 000026DC  7F E8 03 A6 */	mtlr r31
/* 800065E0 000026E0  4E 80 00 20 */	blr
.endfn __init_hardware

.balign 16, 0
.fn __flush_cache, global
/* 800065F0 000026F0  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 800065F4 000026F4  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 800065F8 000026F8  7C A5 18 38 */	and r5, r5, r3
/* 800065FC 000026FC  7C 65 18 50 */	subf r3, r5, r3
/* 80006600 00002700  7C 84 1A 14 */	add r4, r4, r3
.L_80006604:
/* 80006604 00002704  7C 00 28 6C */	dcbst 0, r5
/* 80006608 00002708  7C 00 04 AC */	sync 0
/* 8000660C 0000270C  7C 00 2F AC */	icbi 0, r5
/* 80006610 00002710  30 A5 00 08 */	addic r5, r5, 8
/* 80006614 00002714  34 84 FF F8 */	addic. r4, r4, -8
/* 80006618 00002718  40 80 FF EC */	bge .L_80006604
/* 8000661C 0000271C  4C 00 01 2C */	isync 
/* 80006620 00002720  4E 80 00 20 */	blr
.endfn __flush_cache



.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __init_user, global
/* 8035F350 00328910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035F354 00328914  7C 08 02 A6 */	mflr r0
/* 8035F358 00328918  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035F35C 0032891C  48 00 00 15 */	bl __init_cpp
/* 8035F360 00328920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035F364 00328924  7C 08 03 A6 */	mtlr r0
/* 8035F368 00328928  38 21 00 10 */	addi r1, r1, 0x10
/* 8035F36C 0032892C  4E 80 00 20 */	blr 
.endfn __init_user

.balign 16, 0
.fn __init_cpp, global
/* 8035F370 00328930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035F374 00328934  7C 08 02 A6 */	mflr r0
/* 8035F378 00328938  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035F37C 0032893C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035F380 00328940  3F E0 80 4F */	lis r31, __init_cpp_exceptions_reference@ha
/* 8035F384 00328944  3B FF 59 00 */	addi r31, r31, __init_cpp_exceptions_reference@l
/* 8035F388 00328948  48 00 00 10 */	b .L_8035F398
.L_8035F38C:
/* 8035F38C 0032894C  7D 89 03 A6 */	mtctr r12
/* 8035F390 00328950  4E 80 04 21 */	bctrl 
/* 8035F394 00328954  3B FF 00 04 */	addi r31, r31, 4
.L_8035F398:
/* 8035F398 00328958  81 9F 00 00 */	lwz r12, 0(r31)
/* 8035F39C 0032895C  2C 0C 00 00 */	cmpwi r12, 0
/* 8035F3A0 00328960  40 82 FF EC */	bne .L_8035F38C
/* 8035F3A4 00328964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035F3A8 00328968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035F3AC 0032896C  7C 08 03 A6 */	mtlr r0
/* 8035F3B0 00328970  38 21 00 10 */	addi r1, r1, 0x10
/* 8035F3B4 00328974  4E 80 00 20 */	blr 
.endfn __init_cpp

.balign 16, 0
.fn exit, global
/* 8035F3C0 00328980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035F3C4 00328984  7C 08 02 A6 */	mflr r0
/* 8035F3C8 00328988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035F3CC 0032898C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035F3D0 00328990  3F E0 80 4F */	lis r31, __destroy_global_chain_reference@ha
/* 8035F3D4 00328994  3B FF 5B 00 */	addi r31, r31, __destroy_global_chain_reference@l
/* 8035F3D8 00328998  48 00 00 10 */	b .L_8035F3E8
.L_8035F3DC:
/* 8035F3DC 0032899C  7D 89 03 A6 */	mtctr r12
/* 8035F3E0 003289A0  4E 80 04 21 */	bctrl 
/* 8035F3E4 003289A4  3B FF 00 04 */	addi r31, r31, 4
.L_8035F3E8:
/* 8035F3E8 003289A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8035F3EC 003289AC  2C 0C 00 00 */	cmpwi r12, 0
/* 8035F3F0 003289B0  40 82 FF EC */	bne .L_8035F3DC
/* 8035F3F4 003289B4  4B F7 B7 DD */	bl PPCHalt
/* 8035F3F8 003289B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035F3FC 003289BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035F400 003289C0  7C 08 03 A6 */	mtlr r0
/* 8035F404 003289C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8035F408 003289C8  4E 80 00 20 */	blr 
.endfn exit