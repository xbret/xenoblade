#ifndef METROTRK_MEM_TRK_H
#define METROTRK_MEM_TRK_H
#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

typedef struct memRange{
	ui8* start;
	ui8* end;
	bool readable;
	bool writeable;
} memRange;


const memRange gTRKMemMap[] = {{
	(ui8*)0x00000000,
	(ui8*)0xFFFFFFFF,
	true,
	true
}};


#endif
