#include "PowerPC_EABI_Support/Runtime/__mem.h"

#pragma section code_type ".init"

//Handwritten
asm void memcpy(void* dest, const void* src, size_t size){
	cmplwi cr1, r5, 0
	beqlr cr1
	cmplw cr1, r4, r3
	blt cr1, lbl_80004178
	beqlr cr1
	li r6, 0x80
	cmplw cr5, r5, r6
	blt cr5, lbl_800040C0
	clrlwi r9, r4, 0x1d
	clrlwi r10, r3, 0x1d
	subf r8, r10, r3
	dcbt 0, r4
	xor. r11, r10, r9
	bne lbl_8000415C
	andi. r10, r10, 7
	beq+ lbl_80004068
	li r6, 8
	subf r9, r9, r6
	addi r8, r3, 0
	mtctr r9
	subf r5, r9, r5
lbl_80004054:
	lbz r9, 0(r4)
	addi r4, r4, 1
	stb r9, 0(r8)
	addi r8, r8, 1
	bdnz lbl_80004054
lbl_80004068:
	srwi r6, r5, 5
	mtctr r6
lbl_80004070:
	lfd f1, 0(r4)
	lfd f2, 8(r4)
	lfd f3, 0x10(r4)
	lfd f4, 0x18(r4)
	addi r4, r4, 0x20
	stfd f1, 0(r8)
	stfd f2, 8(r8)
	stfd f3, 0x10(r8)
	stfd f4, 0x18(r8)
	addi r8, r8, 0x20
	bdnz lbl_80004070
	andi. r6, r5, 0x1f
	beqlr 
	addi r4, r4, -1
	mtctr r6
	addi r8, r8, -1
lbl_800040B0:
	lbzu r9, 1(r4)
	stbu r9, 1(r8)
	bdnz lbl_800040B0
	blr 
lbl_800040C0:
	li r6, 0x14
	cmplw cr5, r5, r6
	ble cr5, lbl_8000415C
	clrlwi r9, r4, 0x1e
	clrlwi r10, r3, 0x1e
	xor. r11, r10, r9
	bne lbl_8000415C
	li r6, 4
	subf r9, r9, r6
	addi r8, r3, 0
	subf r5, r9, r5
	mtctr r9
lbl_800040F0:
	lbz r9, 0(r4)
	addi r4, r4, 1
	stb r9, 0(r8)
	addi r8, r8, 1
	bdnz lbl_800040F0
	srwi r6, r5, 4
	mtctr r6
lbl_8000410C:
	lwz r9, 0(r4)
	lwz r10, 4(r4)
	lwz r11, 8(r4)
	lwz r12, 0xc(r4)
	addi r4, r4, 0x10
	stw r9, 0(r8)
	stw r10, 4(r8)
	stw r11, 8(r8)
	stw r12, 0xc(r8)
	addi r8, r8, 0x10
	bdnz lbl_8000410C
	andi. r6, r5, 0xf
	beqlr 
	addi r4, r4, -1
	mtctr r6
	addi r8, r8, -1
lbl_8000414C:
	lbzu r9, 1(r4)
	stbu r9, 1(r8)
	bdnz lbl_8000414C
	blr 
lbl_8000415C:
	addi r7, r4, -1
	addi r8, r3, -1
	mtctr r5
lbl_80004168:
	lbzu r9, 1(r7)
	stbu r9, 1(r8)
	bdnz lbl_80004168
	blr 
lbl_80004178:
	add r4, r4, r5
	add r12, r3, r5
	li r6, 0x80
	cmplw cr5, r5, r6
	blt cr5, lbl_80004204
	clrlwi r9, r4, 0x1d
	clrlwi r10, r12, 0x1d
	xor. r11, r10, r9
	bne lbl_80004288
	andi. r10, r10, 7
	beq+ lbl_800041B4
	mtctr r10
lbl_800041A8:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz lbl_800041A8
lbl_800041B4:
	subf r5, r10, r5
	srwi r6, r5, 5
	mtctr r6
lbl_800041C0:
	lfd f1, -8(r4)
	lfd f2, -0x10(r4)
	lfd f3, -0x18(r4)
	lfd f4, -0x20(r4)
	addi r4, r4, -32
	stfd f1, -8(r12)
	stfd f2, -0x10(r12)
	stfd f3, -0x18(r12)
	stfdu f4, -0x20(r12)
	bdnz lbl_800041C0
	andi. r6, r5, 0x1f
	beqlr 
	mtctr r6
lbl_800041F4:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz lbl_800041F4
	blr 
lbl_80004204:
	li r6, 0x14
	cmplw cr5, r5, r6
	ble cr5, lbl_80004288
	clrlwi r9, r4, 0x1e
	clrlwi r10, r12, 0x1e
	xor. r11, r10, r9
	bne lbl_80004288
	andi. r10, r10, 7
	beq+ lbl_80004238
	mtctr r10
lbl_8000422C:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz lbl_8000422C
lbl_80004238:
	subf r5, r10, r5
	srwi r6, r5, 4
	mtctr r6
lbl_80004244:
	lwz r9, -4(r4)
	lwz r10, -8(r4)
	lwz r11, -0xc(r4)
	lwz r8, -0x10(r4)
	addi r4, r4, -16
	stw r9, -4(r12)
	stw r10, -8(r12)
	stw r11, -0xc(r12)
	stwu r8, -0x10(r12)
	bdnz lbl_80004244
	andi. r6, r5, 0xf
	beqlr 
	mtctr r6
lbl_80004278:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz lbl_80004278
	blr
lbl_80004288:
	mtctr r5
lbl_8000428C:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz lbl_8000428C
	blr 
}

asm void __fill_mem(void* dest, int offset, size_t n){
	cmplwi r5, 0x20
	clrlwi r7, r4, 0x18
	addi r6, r3, -1
	blt lbl_80004338
	nor r0, r6, r6
	clrlwi. r0, r0, 0x1e
	beq lbl_800042C8
	subf r5, r0, r5
lbl_800042BC:
	addic. r0, r0, -1
	stbu r7, 1(r6)
	bne lbl_800042BC
lbl_800042C8:
	cmpwi r7, 0
	beq lbl_800042E8
	slwi r4, r7, 8
	slwi r3, r7, 0x18
	slwi r0, r7, 0x10
	or r4, r7, r4
	or r0, r3, r0
	or r7, r4, r0
lbl_800042E8:
	rlwinm. r0, r5, 0x1b, 5, 0x1f
	addi r3, r6, -3
	beq lbl_8000431C
lbl_800042F4:
	stw r7, 4(r3)
	addic. r0, r0, -1
	stw r7, 8(r3)
	stw r7, 0xc(r3)
	stw r7, 0x10(r3)
	stw r7, 0x14(r3)
	stw r7, 0x18(r3)
	stw r7, 0x1c(r3)
	stwu r7, 0x20(r3)
	bne lbl_800042F4
lbl_8000431C:
	rlwinm. r0, r5, 0x1e, 0x1d, 0x1f
	beq lbl_80004330
lbl_80004324:
	addic. r0, r0, -1
	stwu r7, 4(r3)
	bne lbl_80004324
lbl_80004330:
	addi r6, r3, 3
	clrlwi r5, r5, 0x1e
lbl_80004338:
	cmpwi r5, 0
	beqlr 
lbl_80004340:
	addic. r5, r5, -1
	stbu r7, 1(r6)
	bne lbl_80004340
	blr 
}

asm void memset(void* dest, int offset, size_t n){
	stwu r1, -0x10(r1)
	mflr r0
	stw r0, 0x14(r1)
	stw r31, 0xc(r1)
	mr r31, r3
	bl __fill_mem
	mr r3, r31
	lwz r31, 0xc(r1)
	lwz r0, 0x14(r1)
	mtlr r0
	addi r1, r1, 0x10
	blr 
}