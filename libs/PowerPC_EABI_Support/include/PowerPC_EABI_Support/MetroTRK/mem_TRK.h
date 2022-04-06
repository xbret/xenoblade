#ifndef METROTRK_MEM_TRK_H
#define METROTRK_MEM_TRK_H

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"

#ifdef __cplusplus
extern "C"{
#endif

void* TRK_memcpy(void* dst, const void* src, int size);
void* TRK_memset(void* dst, int val, int size);


#ifdef __cplusplus
}
#endif
#endif
