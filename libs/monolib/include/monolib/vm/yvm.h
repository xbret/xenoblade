#pragma once

#include <types.h>
#include "monolib/vm/yvm_types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define VMC_MAX

typedef struct _sSBHeader{
    char magic[4]; //0x0
    u32 unk4;
    u8* unk8;
    u8* unkC;
    u8* unk10;
    u8* unk14;
    u8* unk18;
    u8* unk1C;
    u8* unk20;
    u8* unk24;
    u8* unk28;
    u8* unk2C;
    u8* unk30;
    u8* unk34;
    u8* unk38;
    u8* unk3C;
} SBHeader;

typedef int(*PluginFunc)(VMThread* pThread);

typedef struct _sPluginFuncData{
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

short vmSysAtrPoolGet(u8* data, int param_2);
int vmIdPoolGet(u8* data, int param_2);
void vmIntPoolGet();
void vmFixedPoolGet();
void vmStringPoolGet();
int vmLocalPoolGet(u8* data, int param_2);
void vmFunctionPoolGet();
int vmSysAtrSearch(u8* data, int param_2);
int vmPluginSearch(int param_1, int param2);
int vmOCSearch();
void vmPropertySearch();
void vmSelectorSearch();
int vmFuncFarSearch(int r3, int r4);

#ifdef __cplusplus
}
#endif
