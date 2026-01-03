#pragma once

#include <types.h>
#include "monolib/vm/yvm_types.h"

#ifdef __cplusplus
extern "C" {
#endif

void vmCodePut(VMState_Unk40Struct* r3, u8 r4);
void vmStackDump(VMState_Unk40Struct* r3);
void vmPackageDump();
void vmThreadDump();

#ifdef __cplusplus
}
#endif
