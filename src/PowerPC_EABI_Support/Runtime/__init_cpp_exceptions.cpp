#include "PowerPC_EABI_Support/Runtime/NMWException.h"
#include "__ppc_eabi_linker.h"

static int fragmentID = -2;

#ifdef __cplusplus
extern "C" {
#endif

extern void __init_cpp_exceptions(void);
extern void __fini_cpp_exceptions(void);
extern void suspend(void);

#ifdef __cplusplus
}
#endif

/*

static asm char* GetR2() {
  nofralloc;
  mr r3, r2
  blr
}


extern void __init_cpp_exceptions(void) {
  char* R2;
  if (fragmentID == -2) {

    R2 = GetR2();

    //HACK: TODO: _eti_init_info should be _eti_init_info, we can't use the appropriate name yet due to the
    //linker not being able to generate it
    fragmentID = __register_fragment(_eti_init_info, R2);
  }
}

extern void __fini_cpp_exceptions(void) {
  if (fragmentID != -2) {
    __unregister_fragment(fragmentID);
    fragmentID = -2;
  }
}
*/

__attribute__((used))
asm void __init_cpp_exceptions(){
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r0, fragmentID
    cmpwi r0, -2
    bne lbl_802BA7A0
    lis r3, _eti_init_info@ha
    mr r4, r2
    addi r3, r3, _eti_init_info@l
    bl __register_fragment
    stw r3, fragmentID
lbl_802BA7A0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

__attribute__((used))
asm void __fini_cpp_exceptions(){
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r3, fragmentID
    cmpwi r3, -2
    beq lbl_802BA7D4
    bl __unregister_fragment
    li r0, -2
    stw r0, fragmentID
lbl_802BA7D4:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
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