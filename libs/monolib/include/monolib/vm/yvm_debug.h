#pragma once

#include <types.h>
#include "monolib/vm/yvm_types.h"

#ifdef __cplusplus
extern "C" {
#endif

__declspec(noreturn) void vmHalt();
void vmArgErr();

void vmCodePut(VMThread* r3, u8 r4);
void vmStackDump(VMThread* r3);
void vmPackageDump();
void vmThreadDump();

#ifdef __cplusplus
}
#endif
