.include "macros.inc"

.section .dtors, "wa"  # 0x804F5B00 - 0x804F5B20

.global lbl_804F5B00
lbl_804F5B00:
	# ROM: 0x4F1C00
	.4byte __destroy_global_chain_tmp
	.4byte __fini_cpp_exceptions_tmp
	.4byte 0


.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __init_cpp_exceptions_tmp
__init_cpp_exceptions_tmp: #__init_cpp_exceptions
#causes "runtime sources 'global_destructor_chain.c' and '__init_cpp_exceptions.cpp' both need to be updated to latest
#version.  Please contact Metrowerks support." error
#needs to be split correctly before renaming
/* 802BA774 00283D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA778 00283D38  7C 08 02 A6 */	mflr r0
/* 802BA77C 00283D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA780 00283D40  80 0D 96 F0 */	lwz r0, lbl_80665870@sda21(r13)
/* 802BA784 00283D44  2C 00 FF FE */	cmpwi r0, -2
/* 802BA788 00283D48  40 82 00 18 */	bne lbl_802BA7A0
/* 802BA78C 00283D4C  3C 60 80 04 */	lis r3, lbl_80039200@ha
/* 802BA790 00283D50  7C 44 13 78 */	mr r4, r2
/* 802BA794 00283D54  38 63 92 00 */	addi r3, r3, lbl_80039200@l
/* 802BA798 00283D58  48 00 00 4D */	bl func_802BA7E4
/* 802BA79C 00283D5C  90 6D 96 F0 */	stw r3, lbl_80665870@sda21(r13)
lbl_802BA7A0:
/* 802BA7A0 00283D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA7A4 00283D64  7C 08 03 A6 */	mtlr r0
/* 802BA7A8 00283D68  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA7AC 00283D6C  4E 80 00 20 */	blr 


.global __fini_cpp_exceptions_tmp
__fini_cpp_exceptions_tmp: #__fini_cpp_exceptions
#causes "runtime sources 'global_destructor_chain.c' and '__init_cpp_exceptions.cpp' both need to be updated to latest
#version.  Please contact Metrowerks support." error
#needs to be split correctly before renaming
/* 802BA7B0 00283D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA7B4 00283D74  7C 08 02 A6 */	mflr r0
/* 802BA7B8 00283D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA7BC 00283D7C  80 6D 96 F0 */	lwz r3, lbl_80665870@sda21(r13)
/* 802BA7C0 00283D80  2C 03 FF FE */	cmpwi r3, -2
/* 802BA7C4 00283D84  41 82 00 10 */	beq lbl_802BA7D4
/* 802BA7C8 00283D88  48 00 00 69 */	bl func_802BA830
/* 802BA7CC 00283D8C  38 00 FF FE */	li r0, -2
/* 802BA7D0 00283D90  90 0D 96 F0 */	stw r0, lbl_80665870@sda21(r13)
lbl_802BA7D4:
/* 802BA7D4 00283D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA7D8 00283D98  7C 08 03 A6 */	mtlr r0
/* 802BA7DC 00283D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA7E0 00283DA0  4E 80 00 20 */	blr 
