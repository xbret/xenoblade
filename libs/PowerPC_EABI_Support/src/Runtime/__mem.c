#include "PowerPC_EABI_Support/Runtime/__mem.h"
#include <string.h>

#pragma section code_type ".init"

//Handwritten
asm void* memcpy(void* dest, const void* src, size_t size){
	//Return if size is 0
	cmplwi cr1, r5, 0
	beqlr cr1

	cmplw cr1, r4, r3
	blt cr1, reverse
	beqlr cr1

	li r6, 0x80
	cmplw cr5, r5, r6
	blt cr5, test_word_alignment

	clrlwi r9, r4, 0x1d
	clrlwi r10, r3, 0x1d
	subf r8, r10, r3

	//Request a data cache block fetch
	dcbt 0, r4

	xor. r11, r10, r9
	bne byte_setup
	andi. r10, r10, 7
	beq+ double_copy_setup
	li r6, 8
	subf r9, r9, r6
	addi r8, r3, 0
	mtctr r9
	subf r5, r9, r5

byte_loop_double_align:
	lbz r9, 0(r4)
	addi r4, r4, 1
	stb r9, 0(r8)
	addi r8, r8, 1
	bdnz byte_loop_double_align

double_copy_setup:
	srwi r6, r5, 5
	mtctr r6

double_loop:
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
	bdnz double_loop
	andi. r6, r5, 0x1f
	beqlr 
	addi r4, r4, -1
	mtctr r6
	addi r8, r8, -1

byte_loop_1:
	lbzu r9, 1(r4)
	stbu r9, 1(r8)
	bdnz byte_loop_1
	blr 

test_word_alignment:
	li r6, 0x14
	cmplw cr5, r5, r6
	ble cr5, byte_setup
	clrlwi r9, r4, 0x1e
	clrlwi r10, r3, 0x1e
	xor. r11, r10, r9
	bne byte_setup
	li r6, 4
	subf r9, r9, r6
	addi r8, r3, 0
	subf r5, r9, r5
	mtctr r9

byte_loop_word_align:
	lbz r9, 0(r4)
	addi r4, r4, 1
	stb r9, 0(r8)
	addi r8, r8, 1
	bdnz byte_loop_word_align

word_copy_setup:
	srwi r6, r5, 4
	mtctr r6

word_loop:
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
	bdnz word_loop

	andi. r6, r5, 0xf
	beqlr 
	addi r4, r4, -1
	mtctr r6
	addi r8, r8, -1

byte_loop_2:
	lbzu r9, 1(r4)
	stbu r9, 1(r8)
	bdnz byte_loop_2
	blr 

byte_setup:
	addi r7, r4, -1
	addi r8, r3, -1
	mtctr r5

byte_loop_3:
	lbzu r9, 1(r7)
	stbu r9, 1(r8)
	bdnz byte_loop_3
	blr 

reverse:
	add r4, r4, r5
	add r12, r3, r5
	li r6, 0x80
	cmplw cr5, r5, r6
	blt cr5, reverse_test_word_alignment
	clrlwi r9, r4, 0x1d
	clrlwi r10, r12, 0x1d
	xor. r11, r10, r9
	bne reverse_byte_setup
	andi. r10, r10, 7
	beq+ reverse_double_copy_setup
	mtctr r10

reverse_byte_loop_double_align:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz reverse_byte_loop_double_align

reverse_double_copy_setup:
	subf r5, r10, r5
	srwi r6, r5, 5
	mtctr r6

reverse_double_loop:
	lfd f1, -8(r4)
	lfd f2, -0x10(r4)
	lfd f3, -0x18(r4)
	lfd f4, -0x20(r4)
	addi r4, r4, -32
	stfd f1, -8(r12)
	stfd f2, -0x10(r12)
	stfd f3, -0x18(r12)
	stfdu f4, -0x20(r12)

	bdnz reverse_double_loop

	andi. r6, r5, 0x1f
	beqlr 
	mtctr r6

reverse_byte_loop_1:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz reverse_byte_loop_1
	blr 

reverse_test_word_alignment:
	li r6, 0x14
	cmplw cr5, r5, r6
	ble cr5, reverse_byte_setup
	clrlwi r9, r4, 0x1e
	clrlwi r10, r12, 0x1e
	xor. r11, r10, r9
	bne reverse_byte_setup
	andi. r10, r10, 7
	beq+ reverse_word_loop_setup
	mtctr r10

reverse_byte_loop_word_align:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz reverse_byte_loop_word_align

reverse_word_loop_setup:
	subf r5, r10, r5
	srwi r6, r5, 4
	mtctr r6

reverse_word_loop:
	lwz r9, -4(r4)
	lwz r10, -8(r4)
	lwz r11, -0xc(r4)
	lwz r8, -0x10(r4)
	addi r4, r4, -16
	stw r9, -4(r12)
	stw r10, -8(r12)
	stw r11, -0xc(r12)
	stwu r8, -0x10(r12)
	bdnz reverse_word_loop

	andi. r6, r5, 0xf
	beqlr 
	mtctr r6

reverse_byte_loop_2:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz reverse_byte_loop_2
	blr

reverse_byte_setup:
	mtctr r5

reverse_byte_loop_3:
	lbzu r9, -1(r4)
	stbu r9, -1(r12)
	bdnz reverse_byte_loop_3
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
