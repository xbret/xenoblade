.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn __ct__CDeviceException, global
/* 8044D820 00416DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044D824 00416DE4  7C 08 02 A6 */	mflr r0
/* 8044D828 00416DE8  3C 80 80 52 */	lis r4, lbl_805263E8@ha
/* 8044D82C 00416DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044D830 00416DF0  38 84 63 E8 */	addi r4, r4, lbl_805263E8@l
/* 8044D834 00416DF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8044D838 00416DF8  3B E4 00 5C */	addi r31, r4, 0x5c
/* 8044D83C 00416DFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8044D840 00416E00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8044D844 00416E04  7C 7D 1B 78 */	mr r29, r3
/* 8044D848 00416E08  4B FE 9D 6D */	bl func_804375B4
/* 8044D84C 00416E0C  7C 64 1B 78 */	mr r4, r3
/* 8044D850 00416E10  38 60 01 C8 */	li r3, 0x1c8
/* 8044D854 00416E14  4B FE 72 09 */	bl mm_malloc
/* 8044D858 00416E18  2C 03 00 00 */	cmpwi r3, 0
/* 8044D85C 00416E1C  7C 7E 1B 78 */	mr r30, r3
/* 8044D860 00416E20  41 82 00 24 */	beq .L_8044D884
/* 8044D864 00416E24  7F E4 FB 78 */	mr r4, r31
/* 8044D868 00416E28  7F A5 EB 78 */	mr r5, r29
/* 8044D86C 00416E2C  38 C0 00 40 */	li r6, 0x40
/* 8044D870 00416E30  4B FE 9D 4D */	bl __ct__CWorkThread
/* 8044D874 00416E34  3C 60 80 57 */	lis r3, __vt___unnamed_CDevice_cpp_CDeviceException@ha
/* 8044D878 00416E38  38 63 F8 40 */	addi r3, r3, __vt___unnamed_CDevice_cpp_CDeviceException@l
/* 8044D87C 00416E3C  90 7E 00 00 */	stw r3, 0(r30)
/* 8044D880 00416E40  93 CD BD B4 */	stw r30, lbl_80667F34@sda21(r13)
.L_8044D884:
/* 8044D884 00416E44  7F C3 F3 78 */	mr r3, r30
/* 8044D888 00416E48  7F A4 EB 78 */	mr r4, r29
/* 8044D88C 00416E4C  38 A0 00 00 */	li r5, 0
/* 8044D890 00416E50  4B FE B3 49 */	bl func_80438BD8
/* 8044D894 00416E54  4B FF FC 8D */	bl func_8044D520
/* 8044D898 00416E58  7F A3 EB 78 */	mr r3, r29
/* 8044D89C 00416E5C  38 80 00 09 */	li r4, 9
/* 8044D8A0 00416E60  4B FE A6 51 */	bl func_80437EF0
/* 8044D8A4 00416E64  7F A3 EB 78 */	mr r3, r29
/* 8044D8A8 00416E68  4B FE B1 51 */	bl func_804389F8
/* 8044D8AC 00416E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044D8B0 00416E70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8044D8B4 00416E74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8044D8B8 00416E78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8044D8BC 00416E7C  7C 08 03 A6 */	mtlr r0
/* 8044D8C0 00416E80  38 21 00 20 */	addi r1, r1, 0x20
/* 8044D8C4 00416E84  4E 80 00 20 */	blr 
.endfn __ct__CDeviceException

.fn func_8044D8C8, global
/* 8044D8C8 00416E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044D8CC 00416E8C  7C 08 02 A6 */	mflr r0
/* 8044D8D0 00416E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044D8D4 00416E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044D8D8 00416E98  7C 7F 1B 78 */	mr r31, r3
/* 8044D8DC 00416E9C  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8044D8E0 00416EA0  80 04 00 00 */	lwz r0, 0(r4)
/* 8044D8E4 00416EA4  7C 00 20 40 */	cmplw r0, r4
/* 8044D8E8 00416EA8  40 82 00 28 */	bne .L_8044D910
/* 8044D8EC 00416EAC  4B FF 6B E9 */	bl func_804444D4
/* 8044D8F0 00416EB0  2C 03 00 00 */	cmpwi r3, 0
/* 8044D8F4 00416EB4  40 82 00 1C */	bne .L_8044D910
/* 8044D8F8 00416EB8  48 00 BA F9 */	bl func_804593F0
/* 8044D8FC 00416EBC  2C 03 00 00 */	cmpwi r3, 0
/* 8044D900 00416EC0  40 82 00 10 */	bne .L_8044D910
/* 8044D904 00416EC4  7F E3 FB 78 */	mr r3, r31
/* 8044D908 00416EC8  4B FE B1 1D */	bl func_80438A24
/* 8044D90C 00416ECC  48 00 00 08 */	b .L_8044D914
.L_8044D910:
/* 8044D910 00416ED0  38 60 00 00 */	li r3, 0
.L_8044D914:
/* 8044D914 00416ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044D918 00416ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044D91C 00416EDC  7C 08 03 A6 */	mtlr r0
/* 8044D920 00416EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8044D924 00416EE4  4E 80 00 20 */	blr 
.endfn func_8044D8C8

.fn __ct__CDevice, global
/* 8044D928 00416EE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044D92C 00416EEC  7C 08 02 A6 */	mflr r0
/* 8044D930 00416EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044D934 00416EF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8044D938 00416EF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8044D93C 00416EFC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8044D940 00416F00  4B FF 5E 7D */	bl func_804437BC
/* 8044D944 00416F04  3C 80 80 52 */	lis r4, lbl_805263E8@ha
/* 8044D948 00416F08  7C 7E 1B 78 */	mr r30, r3
/* 8044D94C 00416F0C  38 84 63 E8 */	addi r4, r4, lbl_805263E8@l
/* 8044D950 00416F10  3B E4 00 6D */	addi r31, r4, 0x6d
/* 8044D954 00416F14  4B FE 9C 61 */	bl func_804375B4
/* 8044D958 00416F18  7C 64 1B 78 */	mr r4, r3
/* 8044D95C 00416F1C  38 60 01 C8 */	li r3, 0x1c8
/* 8044D960 00416F20  4B FE 70 FD */	bl mm_malloc
/* 8044D964 00416F24  2C 03 00 00 */	cmpwi r3, 0
/* 8044D968 00416F28  7C 7D 1B 78 */	mr r29, r3
/* 8044D96C 00416F2C  41 82 00 2C */	beq .L_8044D998
/* 8044D970 00416F30  7F E4 FB 78 */	mr r4, r31
/* 8044D974 00416F34  7F C5 F3 78 */	mr r5, r30
/* 8044D978 00416F38  38 C0 00 20 */	li r6, 0x20
/* 8044D97C 00416F3C  4B FE 9C 41 */	bl __ct__CWorkThread
/* 8044D980 00416F40  3C 60 80 57 */	lis r3, __vt__CDevice@ha
/* 8044D984 00416F44  38 00 00 0A */	li r0, 0xa
/* 8044D988 00416F48  38 63 F8 F8 */	addi r3, r3, __vt__CDevice@l
/* 8044D98C 00416F4C  90 7D 00 00 */	stw r3, 0(r29)
/* 8044D990 00416F50  93 AD BD B0 */	stw r29, lbl_80667F30@sda21(r13)
/* 8044D994 00416F54  90 1D 00 50 */	stw r0, 0x50(r29)
.L_8044D998:
/* 8044D998 00416F58  7F A3 EB 78 */	mr r3, r29
/* 8044D99C 00416F5C  7F C4 F3 78 */	mr r4, r30
/* 8044D9A0 00416F60  38 A0 00 00 */	li r5, 0
/* 8044D9A4 00416F64  4B FE B2 35 */	bl func_80438BD8
/* 8044D9A8 00416F68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8044D9AC 00416F6C  7F A3 EB 78 */	mr r3, r29
/* 8044D9B0 00416F70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8044D9B4 00416F74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8044D9B8 00416F78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044D9BC 00416F7C  7C 08 03 A6 */	mtlr r0
/* 8044D9C0 00416F80  38 21 00 20 */	addi r1, r1, 0x20
/* 8044D9C4 00416F84  4E 80 00 20 */	blr 
.endfn __ct__CDevice

.fn func_8044D9C8, global
/* 8044D9C8 00416F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044D9CC 00416F8C  7C 08 02 A6 */	mflr r0
/* 8044D9D0 00416F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044D9D4 00416F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044D9D8 00416F98  48 00 74 A1 */	bl func_80454E78
/* 8044D9DC 00416F9C  7C 7F 1B 78 */	mr r31, r3
/* 8044D9E0 00416FA0  48 00 7D C1 */	bl func_804557A0
/* 8044D9E4 00416FA4  7F E3 FA 14 */	add r31, r3, r31
/* 8044D9E8 00416FA8  3B FF 00 80 */	addi r31, r31, 0x80
/* 8044D9EC 00416FAC  4B FF B4 95 */	bl func_80448E80
/* 8044D9F0 00416FB0  2C 03 00 00 */	cmpwi r3, 0
/* 8044D9F4 00416FB4  41 82 00 0C */	beq .L_8044DA00
/* 8044D9F8 00416FB8  38 60 00 00 */	li r3, 0
/* 8044D9FC 00416FBC  48 00 00 08 */	b .L_8044DA04
.L_8044DA00:
/* 8044DA00 00416FC0  4B FF AB 3D */	bl func_8044853C
.L_8044DA04:
/* 8044DA04 00416FC4  7F FF 1A 14 */	add r31, r31, r3
/* 8044DA08 00416FC8  4B FE 69 91 */	bl func_80434398
/* 8044DA0C 00416FCC  80 AD 9E 18 */	lwz r5, lbl_80665F98@sda21(r13)
/* 8044DA10 00416FD0  7F E4 FB 78 */	mr r4, r31
/* 8044DA14 00416FD4  4B FE 66 2D */	bl func_80434040
/* 8044DA18 00416FD8  90 6D 9E 20 */	stw r3, lbl_80665FA0@sda21(r13)
/* 8044DA1C 00416FDC  4B FE 69 85 */	bl func_804343A0
/* 8044DA20 00416FE0  80 AD 9E 1C */	lwz r5, lbl_80665F9C@sda21(r13)
/* 8044DA24 00416FE4  3C 80 00 1A */	lis r4, 0x1a
/* 8044DA28 00416FE8  4B FE 66 19 */	bl func_80434040
/* 8044DA2C 00416FEC  90 6D 9E 24 */	stw r3, lbl_80665FA4@sda21(r13)
/* 8044DA30 00416FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044DA34 00416FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044DA38 00416FF8  7C 08 03 A6 */	mtlr r0
/* 8044DA3C 00416FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8044DA40 00417000  4E 80 00 20 */	blr 
.endfn func_8044D9C8

.fn func_8044DA44, global
/* 8044DA44 00417004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044DA48 00417008  7C 08 02 A6 */	mflr r0
/* 8044DA4C 0041700C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044DA50 00417010  80 6D 9E 20 */	lwz r3, lbl_80665FA0@sda21(r13)
/* 8044DA54 00417014  4B FE 69 5D */	bl func_804343B0
/* 8044DA58 00417018  80 6D 9E 24 */	lwz r3, lbl_80665FA4@sda21(r13)
/* 8044DA5C 0041701C  4B FE 69 55 */	bl func_804343B0
/* 8044DA60 00417020  38 00 FF FF */	li r0, -1
/* 8044DA64 00417024  90 0D 9E 20 */	stw r0, lbl_80665FA0@sda21(r13)
/* 8044DA68 00417028  90 0D 9E 24 */	stw r0, lbl_80665FA4@sda21(r13)
/* 8044DA6C 0041702C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044DA70 00417030  7C 08 03 A6 */	mtlr r0
/* 8044DA74 00417034  38 21 00 10 */	addi r1, r1, 0x10
/* 8044DA78 00417038  4E 80 00 20 */	blr 
.endfn func_8044DA44

.fn func_8044DA7C, global
/* 8044DA7C 0041703C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044DA80 00417040  7C 08 02 A6 */	mflr r0
/* 8044DA84 00417044  2C 03 00 00 */	cmpwi r3, 0
/* 8044DA88 00417048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044DA8C 0041704C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044DA90 00417050  7C 9F 23 78 */	mr r31, r4
/* 8044DA94 00417054  93 C1 00 08 */	stw r30, 8(r1)
/* 8044DA98 00417058  7C 7E 1B 78 */	mr r30, r3
/* 8044DA9C 0041705C  41 82 00 24 */	beq .L_8044DAC0
/* 8044DAA0 00417060  38 00 00 00 */	li r0, 0
/* 8044DAA4 00417064  90 0D BD B4 */	stw r0, lbl_80667F34@sda21(r13)
/* 8044DAA8 00417068  38 80 00 00 */	li r4, 0
/* 8044DAAC 0041706C  4B FE A0 1D */	bl func_80437AC8
/* 8044DAB0 00417070  2C 1F 00 00 */	cmpwi r31, 0
/* 8044DAB4 00417074  40 81 00 0C */	ble .L_8044DAC0
/* 8044DAB8 00417078  7F C3 F3 78 */	mr r3, r30
/* 8044DABC 0041707C  4B FE 71 71 */	bl __dl__FPv
.L_8044DAC0:
/* 8044DAC0 00417080  7F C3 F3 78 */	mr r3, r30
/* 8044DAC4 00417084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044DAC8 00417088  83 C1 00 08 */	lwz r30, 8(r1)
/* 8044DACC 0041708C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044DAD0 00417090  7C 08 03 A6 */	mtlr r0
/* 8044DAD4 00417094  38 21 00 10 */	addi r1, r1, 0x10
/* 8044DAD8 00417098  4E 80 00 20 */	blr 
.endfn func_8044DA7C

.fn func_8044DADC, global
/* 8044DADC 0041709C  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8044DAE0 004170A0  80 04 00 00 */	lwz r0, 0(r4)
/* 8044DAE4 004170A4  7C 00 20 40 */	cmplw r0, r4
/* 8044DAE8 004170A8  41 82 00 0C */	beq .L_8044DAF4
/* 8044DAEC 004170AC  38 60 00 00 */	li r3, 0
/* 8044DAF0 004170B0  4E 80 00 20 */	blr
.L_8044DAF4:
/* 8044DAF4 004170B4  4B FE AF 30 */	b func_80438A24
/* 8044DAF8 004170B8  4E 80 00 20 */	blr
.endfn func_8044DADC


.fn sinit_8044DAFC, global
/* 8044DAFC 004170BC  3C C0 80 66 */	lis r6, lbl_8065A6F8@ha
/* 8044DB00 004170C0  3C 80 80 66 */	lis r4, lbl_8065A73C@ha
/* 8044DB04 004170C4  38 A6 A6 F8 */	addi r5, r6, lbl_8065A6F8@l
/* 8044DB08 004170C8  38 00 00 00 */	li r0, 0
/* 8044DB0C 004170CC  38 64 A7 3C */	addi r3, r4, lbl_8065A73C@l
/* 8044DB10 004170D0  98 06 A6 F8 */	stb r0, lbl_8065A6F8@l(r6)
/* 8044DB14 004170D4  90 05 00 40 */	stw r0, 0x40(r5)
/* 8044DB18 004170D8  98 04 A7 3C */	stb r0, lbl_8065A73C@l(r4)
/* 8044DB1C 004170DC  90 03 00 40 */	stw r0, 0x40(r3)
/* 8044DB20 004170E0  4E 80 00 20 */	blr
.endfn sinit_8044DAFC

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_8044DAFC

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0




.global lbl_805263A0
lbl_805263A0:
	.asciz "DeviceSystem1"
	.balign 4

.global lbl_805263B0
lbl_805263B0:
	.asciz "DeviceSystem2"
	.balign 4

.global _unnamed_CDevice_cpp_CDeviceException_typestr
_unnamed_CDevice_cpp_CDeviceException_typestr:
	.asciz "@unnamed@CDevice_cpp@::CDeviceException"


.global lbl_805263E8
lbl_805263E8:
	.asciz "CDeviceVI"
	.asciz "CDeviceGX"
	.asciz "CDeviceRemotePAD"
	.asciz "CDeviceClock"
	.asciz "CDeviceSC"
	.asciz "CDeviceFont"
	.asciz "CDeviceFile"
	.asciz "CLibCri"
	.asciz "CDeviceException"
	.asciz "CDevice"
	.balign 4


.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt___unnamed_CDevice_cpp_CDeviceException
__vt___unnamed_CDevice_cpp_CDeviceException:
	.4byte __RTTI___unnamed_CDevice_cpp_CDeviceException
	.4byte 0
	.4byte func_8044DA7C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804389F8
	.4byte func_8044DADC
	.4byte func_80039E30

.global _unnamed_CDevice_cpp_CDeviceException_hierarchy
_unnamed_CDevice_cpp_CDeviceException_hierarchy:
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CDevice
__vt__CDevice:
	.4byte __RTTI__CDevice
	.4byte 0
	.4byte func_8044CFF0
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte __ct__CDeviceException
	.4byte func_8044D8C8
	.4byte func_80039E30

.global CDevice_hierarchy
CDevice_hierarchy:
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global lbl_80665F98
lbl_80665F98:
	.4byte lbl_805263A0


.global lbl_80665F9C
lbl_80665F9C:
	.4byte lbl_805263B0


.global lbl_80665FA0
lbl_80665FA0:
	.4byte 0xFFFFFFFF


.global lbl_80665FA4
lbl_80665FA4:
	.4byte 0xFFFFFFFF

.global __RTTI___unnamed_CDevice_cpp_CDeviceException
__RTTI___unnamed_CDevice_cpp_CDeviceException:
	.4byte _unnamed_CDevice_cpp_CDeviceException_typestr
	.4byte _unnamed_CDevice_cpp_CDeviceException_hierarchy

.global __RTTI__CDevice
__RTTI__CDevice:
	.4byte CDevice_typestr
	.4byte CDevice_hierarchy

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001CCD8", local
.hidden "@etb_8001CCD8"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001CCD8"

.obj "@etb_8001CCE0", local
.hidden "@etb_8001CCE0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CCE0"

.obj "@etb_8001CCE8", local
.hidden "@etb_8001CCE8"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001CCE8"

.obj "@etb_8001CCF0", local
.hidden "@etb_8001CCF0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CCF0"

.obj "@etb_8001CCF8", local
.hidden "@etb_8001CCF8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001CCF8"

.obj "@etb_8001CD00", local
.hidden "@etb_8001CD00"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CD00"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034958", local
.hidden "@eti_80034958"
	.4byte __ct__CDeviceException
	.4byte 0x000000A8
	.4byte "@etb_8001CCD8"
.endobj "@eti_80034958"

.obj "@eti_80034964", local
.hidden "@eti_80034964"
	.4byte func_8044D8C8
	.4byte 0x00000060
	.4byte "@etb_8001CCE0"
.endobj "@eti_80034964"

.obj "@eti_80034970", local
.hidden "@eti_80034970"
	.4byte __ct__CDevice
	.4byte 0x000000A0
	.4byte "@etb_8001CCE8"
.endobj "@eti_80034970"

.obj "@eti_8003497C", local
.hidden "@eti_8003497C"
	.4byte func_8044D9C8
	.4byte 0x0000007C
	.4byte "@etb_8001CCF0"
.endobj "@eti_8003497C"

.obj "@eti_80034988", local
.hidden "@eti_80034988"
	.4byte func_8044DA44
	.4byte 0x00000038
	.4byte "@etb_8001CCF8"
.endobj "@eti_80034988"

.obj "@eti_80034994", local
.hidden "@eti_80034994"
	.4byte func_8044DA7C
	.4byte 0x00000060
	.4byte "@etb_8001CD00"
.endobj "@eti_80034994"
