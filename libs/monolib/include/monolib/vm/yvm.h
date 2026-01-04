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
void* vmArgPtrGet(VMThread* pThread, int r4);
int vmArgOmitChk(VMThread* pThread, int r4);
BOOL vmArgBoolGet(int r3, void* r4);
int vmArgIntGet(int r3, void* r4);
int vmArgFixedGet(int r3, void* r4);
char* vmArgStringGet(int r3, void* r4);
void* vmArgFunctionGet(VMThread* pthread, int r4);
void* vmArgArrayGet(VMThread* pThread, int r4);
void* vmArgOCGet(VMThread* pThread, int r4);
void vmRetValSet(VMThread* pThread, RetVal* pRetval);
void vmWaitModeSet(VMThread* pThread);
int vmWkIdxGet(VMThread* pThread);
void vmWkIdxSet(VMThread* pThread, int r4);
int* vmWkGet(VMThread* pThread, int r4);
void vmPluginExceptionThrow(VMThread* pThread);
void vmOCExceptionThrow(VMThread* pThread);
void vmExceptionProc(VMThread* pThread);
void vmExceptionThrow(VMThread* pThread, int r4);

int vmSysAtrPoolGet(u8* data, int param_2);
int vmIdPoolGet(u8* data, int param_2);
void vmIntPoolGet();
void vmFixedPoolGet();
int vmStringPoolGet(u8* data, int param2);
int vmLocalPoolGet(u8* data, int param_2);
int vmFunctionPoolGet();
int vmSysAtrSearch(u8* data, int param_2);
int vmPluginSearch(int param1, int param2);
int vmOCSearch(char* name);
void vmPropertySearch();
void vmSelectorSearch();
int vmFuncFarSearch(int r3, int r4);

#ifdef __cplusplus
}
#endif
