#pragma once

#include "types.h"
#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif


typedef struct SBOpcode{
    const char* name; //0x0
    s16 paramSize;
    s16 unk6;
} SBOpcode;

typedef struct VMMemory{
} VMMemory;

typedef struct ScriptFuncContext{
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    u8 unk14[0x3C - 0x14];
    int unk3C;
    u8 unk40[0x10];
    BOOL waitMode; //0x50
    int wkIdx; //0x54
} ScriptFuncContext;

void vmInit();
void vmLink();
BOOL vmPluginRegist(UNKWORD);
void* vmArgPtrGet(ScriptFuncContext*);
BOOL vmArgBoolGet(ScriptFuncContext*);
int vmArgIntGet(ScriptFuncContext*);
void vmArgFixedGet(ScriptFuncContext*);
char* vmArgStringGet(ScriptFuncContext*, UNKWORD);
void* vmArgFunctionGet(ScriptFuncContext*, UNKWORD);
void* vmArgArrayGet(ScriptFuncContext*, UNKWORD);
void* vmArgOCGet(ScriptFuncContext*, UNKWORD);
void vmRetValSet(ScriptFuncContext*, UNKWORD);
void vmWaitModeSet();
int vmWkIdxGet(ScriptFuncContext*);
void vmWkIdxSet(ScriptFuncContext*);
int vmWkGet(ScriptFuncContext*);


#ifdef __cplusplus
}
#endif
