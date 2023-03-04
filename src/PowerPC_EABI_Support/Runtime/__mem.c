#include "PowerPC_EABI_Support/Runtime/__mem.h"
#include "stl/string.h"

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

void __fill_mem(void * dest, int val, size_t count)
{
	char * cdest = (char *)dest;
	int cval = (unsigned char)val;
	int * idest = (int *)dest;
	int r0;
	cdest--;
	if (count >= 0x20)
	{
		r0 = ~(int)(cdest) & 3;
		
		if (r0)
		{
			count -= r0;
			
			do
			{
				*++cdest = cval;
			} while(--r0);
		}
		
		if (cval)
		{
			cval = (cval << 0x18) | (cval << 0x10) | (cval << 0x8) | cval;
		}
		
		r0 = count >> 5;
		idest = (int *)(cdest - 3);
		
		if (r0)
		{
			do
			{
				idest[1] = cval;//4
				--r0;
				idest[2] = cval;//8
				idest[3] = cval;//c
				idest[4] = cval;//10
				idest[5] = cval;//14
				idest[6] = cval;//18
				idest[7] = cval;//1c
				*(idest += 8) = cval;//20
			} while (r0);
		}
		
		r0 = (count >> 2) & 7;
		
		if (r0)
		{
			do
			{
				*++idest = cval;
			} while(--r0);
		}
		
		cdest = (char *)idest + 3;
		count &= 3;
	}
	
	if (count)
	{
		do
		{
			*++cdest = cval;
		} while(--count);
	}
}


void* memset(void* dest, int val, size_t count) {
    __fill_mem(dest, val, count);
    return dest;
}


#pragma section code_type ".text"

size_t strlen(const char* str){
    int length = -1;
    u8* p = (u8*)str - 1;

    do{
        length++;
    }while(*++p);

    return length;
}