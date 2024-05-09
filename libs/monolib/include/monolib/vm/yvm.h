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

typedef struct RetVal{
    u8 type; //0x0
    int val; //0x4
} RetVal;

enum SBTypes {
    SBTYPE_0,
    SBTYPE_1,
    SBTYPE_2,
    SBTYPE_3
};

typedef struct _sVMThread{
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
} _sVMThread;

typedef int(*PluginFunc)(_sVMThread* pThread);

typedef struct PluginFuncData{
	const char* name;
	PluginFunc func;
} PluginFuncData;

void vmInit();
void vmLink();
BOOL vmPluginRegist(const char* name, PluginFuncData* plugin_funcs);
void* vmArgPtrGet(_sVMThread* pThread, int);
BOOL vmArgBoolGet(int, void*);
int vmArgIntGet(int, void*); 
void vmArgFixedGet(int, void*);
char* vmArgStringGet(int, void*);
void* vmArgFunctionGet(_sVMThread* pthread, int);
void* vmArgArrayGet(_sVMThread* pThread, int);
void* vmArgOCGet(_sVMThread* pThread, int);
void vmRetValSet(_sVMThread* pThread, RetVal* pRetval);
void vmWaitModeSet(_sVMThread* pThread);
int vmWkIdxGet(_sVMThread* pThread);
void vmWkIdxSet(_sVMThread* pThread, int);
int* vmWkGet(_sVMThread* pThread, int);
int vmArgOmitChk(_sVMThread* pThread, int); 
void func_804A1004(_sVMThread* pThread);

#ifdef __cplusplus
}
#endif
