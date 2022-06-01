.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global IPCReInit
IPCReInit:
/* 80342A10 0030BFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80342A14 0030BFD4  7C 08 02 A6 */	mflr r0
/* 80342A18 0030BFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80342A1C 0030BFDC  38 00 00 00 */	li r0, 0
/* 80342A20 0030BFE0  98 0D B7 E8 */	stb r0, lbl_80667968@sda21(r13)
/* 80342A24 0030BFE4  48 01 A5 BD */	bl __OSGetIPCBufferHi
/* 80342A28 0030BFE8  90 6D B7 F8 */	stw r3, lbl_80667978@sda21(r13)
/* 80342A2C 0030BFEC  48 01 A5 C5 */	bl __OSGetIPCBufferLo
/* 80342A30 0030BFF0  80 8D B7 F8 */	lwz r4, lbl_80667978@sda21(r13)
/* 80342A34 0030BFF4  38 00 00 01 */	li r0, 1
/* 80342A38 0030BFF8  90 6D B7 F4 */	stw r3, lbl_80667974@sda21(r13)
/* 80342A3C 0030BFFC  90 8D B7 F0 */	stw r4, lbl_80667970@sda21(r13)
/* 80342A40 0030C000  90 6D B7 EC */	stw r3, lbl_8066796C@sda21(r13)
/* 80342A44 0030C004  98 0D B7 E8 */	stb r0, lbl_80667968@sda21(r13)
/* 80342A48 0030C008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80342A4C 0030C00C  7C 08 03 A6 */	mtlr r0
/* 80342A50 0030C010  38 21 00 10 */	addi r1, r1, 0x10
/* 80342A54 0030C014  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80342A60
func_80342A60:
/* 80342A60 0030C020  54 60 10 3A */	slwi r0, r3, 2
/* 80342A64 0030C024  3C 60 CD 00 */	lis r3, 0xcd00
/* 80342A68 0030C028  7C 63 00 2E */	lwzx r3, r3, r0
/* 80342A6C 0030C02C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80342A70
func_80342A70:
/* 80342A70 0030C030  54 60 10 3A */	slwi r0, r3, 2
/* 80342A74 0030C034  3C 60 CD 00 */	lis r3, 0xcd00
/* 80342A78 0030C038  7C 83 01 2E */	stwx r4, r3, r0
/* 80342A7C 0030C03C  4E 80 00 20 */	blr 

.balign 16, 0
.global IPCGetBufferHi
IPCGetBufferHi:
/* 80342A80 0030C040  80 6D B7 F0 */	lwz r3, lbl_80667970@sda21(r13)
/* 80342A84 0030C044  4E 80 00 20 */	blr 

.balign 16, 0
.global IPCGetBufferLo
IPCGetBufferLo:
/* 80342A90 0030C050  80 6D B7 EC */	lwz r3, lbl_8066796C@sda21(r13)
/* 80342A94 0030C054  4E 80 00 20 */	blr 

.balign 16, 0
.global IPCSetBufferLo
IPCSetBufferLo:
/* 80342AA0 0030C060  90 6D B7 EC */	stw r3, lbl_8066796C@sda21(r13)
/* 80342AA4 0030C064  4E 80 00 20 */	blr 