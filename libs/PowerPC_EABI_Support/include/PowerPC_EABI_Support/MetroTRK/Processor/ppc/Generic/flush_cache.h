#ifndef METROTRK_FLUSH_CACHE
#define METROTRK_FLUSH_CACHE

#include "types.h"

asm void TRK_flush_cache(u32 addr, u32 length);

#endif
