#include "PowerPC_EABI_Support/MetroTRK/trk.h"


static u8 ppc_readbyte1(const u8* ptr){
	u32* alignedPtr = (u32 *)((u32)ptr & ~3);
	return (u8)(*alignedPtr >> ((3 - ((u32)ptr - (u32)alignedPtr)) << 3));
}

static void ppc_writebyte1(u8* ptr, u8 val){
	u32 iVar1;
    u32 *alignedPtr;
    u32 uVar3;
    
    alignedPtr = (u32 *)((u32)ptr & ~3);
	iVar1 = (3 - ((u32)ptr - (u32)alignedPtr)) << 3;
	uVar3 = 0xff << iVar1;
	*alignedPtr = (*alignedPtr & ~uVar3) | (uVar3 & (val << iVar1));
}

void* TRK_memcpy(void* dst, const void* src, int n){
    u8* srcTemp = (u8*)src;
    u8* dstTemp = (u8*)dst;
    
    for(int i = 0; i != n; i++){
		ppc_writebyte1(dstTemp, ppc_readbyte1(srcTemp));
		srcTemp++;
		dstTemp++;
	}

	return dst;
}

void TRK_fill_mem(u8* dst, int val, int n){
	u8 b = val;

    for(int i = 0; i != n; i++){
		ppc_writebyte1(dst, b);
		dst++;
	}
}

void* TRK_memset(void* dst, int val, int n)
{
	TRK_fill_mem(dst, val, n);
	return dst;
}
