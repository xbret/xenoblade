#ifndef _RUNTIME_PPC_EABI_INIT_H
#define _RUNTIME_PPC_EABI_INIT_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

DECL_SECTION(".init") extern void __init_hardware(void);
DECL_SECTION(".init") extern void __flush_cache(void*, size_t);
DECL_SECTION(".init") extern void __init_registers(void);
DECL_SECTION(".init") extern void __init_data(void);
DECL_SECTION(".init") extern void __copy_rom_section(void*, const void*, size_t);
DECL_SECTION(".init") extern void __init_bss_section(void*, size_t);

extern void __init_user(void);
extern void _ExitProcess(void);

#ifdef __cplusplus
}
#endif
#endif
