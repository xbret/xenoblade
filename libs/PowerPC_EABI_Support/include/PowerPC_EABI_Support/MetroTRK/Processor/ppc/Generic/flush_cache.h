#ifndef METROTRK_FLUSH_CACHE
#define METROTRK_FLUSH_CACHE

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"

asm void TRK_flush_cache(ui32 addr, ui32 length);

#endif
