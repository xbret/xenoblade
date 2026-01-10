#pragma once

#include <types.h>
#include "monolib/vm/yvm_types.h"


#ifdef __cplusplus
extern "C" {
#endif

typedef int(*PluginFunc)(VMThread* pThread);

typedef struct PluginFuncData{
    const char* name;
    PluginFunc func;
} PluginFuncData;


void vmInit();
BOOL vmLink(u8* pData);
BOOL vmPluginRegist(const char* name, PluginFuncData* plugin_funcs);
void vmStart(u8* pData);
VMThread* vmThreadCreate(SBHeader* pData, u32 r4);

VMArg* vmArgPtrGet(VMThread* pThread, u32 r4);
BOOL vmArgOmitChk(VMThread* pThread, int r4);
BOOL vmArgBoolGet(u32 r3, VMArg* r4);
int vmArgIntGet(u32 r3, VMArg* r4);
int vmArgFixedGet(u32 r3, VMArg* r4);
const char* vmArgStringGet(u32 r3, VMArg* r4);
u32 vmArgFunctionGet(u32 r3, VMArg* r4);
void* vmArgArrayGet(u32 r3, VMArg* r4);
void* vmArgOCGet(u32 r3, VMArg* r4);

void vmRetValSet(VMThread* pThread, VMArg* pArg);
void vmWaitModeSet(VMThread* pThread);
u32 vmWkIdxGet(VMThread* pThread);
void vmWkIdxSet(VMThread* pThread, u32 r4);
u32* vmWkGet(VMThread* pThread, u32 r4);
void vmPluginExceptionThrow(VMThread* pThread);
void vmOCExceptionThrow(VMThread* pThread);
void vmExceptionProc(VMThread* pThread);
void vmExceptionThrow(VMThread* pThread, u32 r4);

u16 vmSysAtrPoolGet(SBHeader* data, u32 no);
void* vmIdPoolGet(SBHeader* data, u32 no);
void* vmIntPoolGet(SBHeader* data, u32 no);
void* vmFixedPoolGet(SBHeader* data, u32 no);
void* vmStringPoolGet(SBHeader* data, u32 no);
void* vmLocalPoolGet(SBHeader* data, u32 no);
void* vmFunctionPoolGet(SBHeader* data, u32 no);

u32 vmSysAtrSearch(SBHeader* data, u32 param_2);
u32 vmPluginSearch(const char* param1, const char* param2);
u32 vmOCSearch(const char* name);
void vmPropertySearch();
void vmSelectorSearch();
u32 vmFuncFarSearch(const char* pPackageName, const char* pFuncName);


void vmArgErr();
void vmHalt();

extern VMState vmState;

#ifdef __cplusplus
}
#endif
