#ifndef TRK_PPC_MEM_H
#define TRK_PPC_MEM_H

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"

static ui8 ppc_readbyte1(const ui8* ptr){
	ui32* alignedPtr = (ui32 *)((ui32)ptr & ~3);
	return (ui8)(*alignedPtr >> ((3 - ((ui32)ptr - (ui32)alignedPtr)) << 3));
}

static void ppc_writebyte1(ui8* ptr, ui8 val){
	ui32* alignedPtr = (ui32 *)((ui32)ptr & ~3);
	ui32 v = *alignedPtr;
	ui32 uVar3 = 0xff << ((3 - ((ui32)ptr - (ui32)alignedPtr)) << 3);
	ui32 iVar1 = (3 - ((ui32)ptr - (ui32)alignedPtr)) << 3;
	*alignedPtr = (v & ~uVar3) | (uVar3 & (val << iVar1));
}

#endif
