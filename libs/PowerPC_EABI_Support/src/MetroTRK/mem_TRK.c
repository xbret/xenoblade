#include "types.h"


static u8 ppc_readbyte1(const void* ptr){
	u32* something = (u32 *)((u32)ptr & ~3);
	return (*something >> ((3 - ((u32)ptr - (u32)something)) << 3)) & 0xff;
}

static void ppc_writebyte1(void* ptr, u8 param_2){
	u32 *something = (u32 *)((u32)ptr & ~3);
	u32 iVar1 = (3 - ((u32)ptr - (u32)something)) << 3;
	u32 uVar3 = 0xff << iVar1;
	*something = (*something & ~uVar3) | (uVar3 & (param_2 << iVar1));
}

void* TRK_memcpy(void* dst, const void* src, size_t n)
{
	if (n != 0) {
		u32 uVar10 = n >> 1;

		if(uVar10 != 0){
			do{
				ppc_writebyte1(dst, ppc_readbyte1(src));
				ppc_writebyte1((void*)((u32)dst + 1), ppc_readbyte1((void*)((u32)src + 1)));
				
				src = (void *)((u32)src + 2);
				dst = (void *)((u32)dst + 2);
				uVar10--;
			}while (uVar10 != 0);

			n &= 1;
			if(n == 0) return dst;
		}

		do{
			ppc_writebyte1(dst, ppc_readbyte1(src));
			src = (void*)((u32)src + 1);
			dst = (void*)((u32)dst + 1);
			n--;
		}while (n != 0);
	}

	return dst;
}

void TRK_fill_mem(void* dst, int val, size_t n){
	u32 uVar1 = val & 0xff;
	u32 uVar6;

	if(n == 0) return;

	uVar6 = n >> 2;

	if(uVar6 != 0){
		do{
			ppc_writebyte1(dst, uVar1);
			ppc_writebyte1((void*)((u32)dst + 1), uVar1);
			ppc_writebyte1((void*)((u32)dst + 2), uVar1);
			ppc_writebyte1((void*)((u32)dst + 3), uVar1);
			dst = (void*)((u32)dst + 4);
			uVar6--;
		}while (uVar6 != 0);

		n &= 3;

		if(n == 0) return;
	}

	do{
		ppc_writebyte1(dst, uVar1);
		dst = (void*)((u32)dst + 1);
		n--;
	}while (n != 0);

	return;
}

void* TRK_memset(void* dst, int val, size_t n)
{
	TRK_fill_mem(dst, val, n);
	return dst;
}
