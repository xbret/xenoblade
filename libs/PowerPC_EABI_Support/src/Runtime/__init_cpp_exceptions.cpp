#include "PowerPC_EABI_Support/Runtime/NMWException.h"
#include "PowerPC_EABI_Support/Runtime/__ppc_eabi_linker.h"

extern "C"{
	extern void __init_cpp_exceptions(void);
	extern void __fini_cpp_exceptions(void);
}

static int fragmentID = -2;

static void __exception_info_constants(void** info, char** R2) {
	register char* temp;
	asm {	mr temp, r2; }
	*R2 = temp;
	*info = (void*)_eti_init_info;
}

//unused
extern void __find_exception_addresses(void* param1, char* param2, void** param3, void** param4){
}

extern void __init_cpp_exceptions(void) {
	char* R2;
	void* info;
	if (fragmentID == -2) {
		__exception_info_constants(&info, &R2);
		fragmentID = __register_fragment((struct __eti_init_info*)info, R2);
	}
}

extern void __fini_cpp_exceptions(void) {
	if (fragmentID != -2) {
		__unregister_fragment(fragmentID);
		fragmentID = -2;
	}
}

#pragma section ".ctors$10"
__declspec(section ".ctors$10") 
	extern void * const __init_cpp_exceptions_reference = __init_cpp_exceptions;
#pragma section ".dtors$10"
__declspec(section ".dtors$10") 
	extern void * const __destroy_global_chain_reference = __destroy_global_chain;
#pragma section ".dtors$15"
__declspec(section ".dtors$15") 
	extern void * const __fini_cpp_exceptions_reference = __fini_cpp_exceptions;
