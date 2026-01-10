#pragma once

#include "monolib/vm/yvm_types.h"

typedef int (*OpcodeFunc)(VMThread* pThread, u8 code);

typedef struct VMCOpcode{
    const char* name; //0x0
    s16 paramSize; //0x4
    s16 unk6; //0x6
} VMCOpcode;

extern VMCOpcode vmcOpcodes[VMC_MAX];
extern OpcodeFunc vmcOpcodeFuncs[VMC_MAX];
