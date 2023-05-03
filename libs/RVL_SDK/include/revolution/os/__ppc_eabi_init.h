#ifndef _RVL_SDK_PPC_EABI_INIT_H
#define _RVL_SDK_PPC_EABI_INIT_H

#include "types.h"
#include "PowerPC_EABI_Support/Runtime/__ppc_eabi_linker.h"
#include "PowerPC_EABI_Support/Runtime/__ppc_eabi_init.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * Linker Generated Symbols
 */

// Debugger stack
extern u8 _db_stack_addr[];
extern u8 _db_stack_end[];

// Program arena
extern u8 __ArenaLo[];
extern u8 __ArenaHi[];

void __init_cpp(void);
void __fini_cpp(void);
void exit(void);

#ifdef __cplusplus
}
#endif
#endif
