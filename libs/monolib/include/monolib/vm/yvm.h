#pragma once

#include <types.h>

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

//Wtf is going on here ;-;
#pragma pack(push, 1)
typedef struct _sRetVal{
    u8 type; //0x0
    u8 unk1;
    union{
        u8 bytes[6];
        struct{
            u16 unk2_U16;
            int val; //0x4
        };
        struct{
            u32 unk2_U32;
            u16 unk6;
        };
    };
} RetVal;
#pragma pack(pop)

typedef struct _sVMThread{
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    u8 unk14[0x3C - 0x14];
    RetVal* unk3C;
    u8 unk40[0x4C - 0x40];
    u32 unk4C;
    BOOL waitMode; //0x50
    int wkIdx; //0x54
} VMThread;

typedef int(*PluginFunc)(VMThread* pThread);

typedef struct _sPluginFuncData{
    const char* name;
    PluginFunc func;
} PluginFuncData;

typedef struct _sVMMemory_Unk40Struct{
    u32 unk0;
    u8 unk4[0x34 - 0x4];
    u8* unk34;
} VMMemory_Unk40Struct;

typedef struct _sVMMemory{
    u8 unk0[0x40];
    VMMemory_Unk40Struct* unk40;
} VMMemory;


typedef enum _VMCResult{
    VMC_RESULT_0,
    VMC_RESULT_1,
    VMC_RESULT_2,
    VMC_RESULT_3
} VMCResult;

typedef enum _VMCOpcodeType{
    VMC_OP_NOP,
    VMC_OP_CONST_0,
    VMC_OP_CONST_1,
    VMC_OP_CONST_2,
    VMC_OP_CONST_3,
    VMC_OP_CONST_4,
    VMC_OP_CONST_I,
    VMC_OP_CONST_I_W,
    VMC_OP_POOL_INT,
    VMC_OP_POOL_INT_W,
    VMC_OP_POOL_FIXED,
    VMC_OP_POOL_FIXED_W,
    VMC_OP_POOL_STR,
    VMC_OP_POOL_STR_W,
    VMC_OP_LD,
    VMC_OP_ST,
    VMC_OP_LD_ARG,
    VMC_OP_ST_ARG,
    VMC_OP_ST_ARG_OMIT,
    VMC_OP_LD_0,
    VMC_OP_LD_1,
    VMC_OP_LD_2,
    VMC_OP_LD_3,
    VMC_OP_ST_0,
    VMC_OP_ST_1,
    VMC_OP_ST_2,
    VMC_OP_ST_3,
    VMC_OP_LD_ARG_0,
    VMC_OP_LD_ARG_1,
    VMC_OP_LD_ARG_2,
    VMC_OP_LD_ARG_3,
    VMC_OP_ST_ARG_0,
    VMC_OP_ST_ARG_1,
    VMC_OP_ST_ARG_2,
    VMC_OP_ST_ARG_3,
    VMC_OP_LD_STATIC,
    VMC_OP_LD_STATIC_W,
    VMC_OP_ST_STATIC,
    VMC_OP_ST_STATIC_W,
    VMC_OP_LD_AR,
    VMC_OP_ST_AR,
    VMC_OP_LD_NIL,
    VMC_OP_LD_TRUE,
    VMC_OP_LD_FALSE,
    VMC_OP_LD_FUNC,
    VMC_OP_LD_FUNC_W,
    VMC_OP_LD_PLUGIN,
    VMC_OP_LD_PLUGIN_W,
    VMC_OP_LD_FUNC_FAR,
    VMC_OP_LD_FUNC_FAR_W,
    VMC_OP_MINUS,
    VMC_OP_NOT,
    VMC_OP_L_NOT,
    VMC_OP_ADD,
    VMC_OP_SUB,
    VMC_OP_MUL,
    VMC_OP_DIV,
    VMC_OP_MOD,
    VMC_OP_OR,
    VMC_OP_AND,
    VMC_OP_R_SHIFT,
    VMC_OP_L_SHIFT,
    VMC_OP_EQ,
    VMC_OP_NE,
    VMC_OP_GT,
    VMC_OP_LT,
    VMC_OP_GE,
    VMC_OP_LE,
    VMC_OP_L_OR,
    VMC_OP_L_AND,
    VMC_OP_JMP,
    VMC_OP_JPF,
    VMC_OP_CALL,
    VMC_OP_CALL_W,
    VMC_OP_CALL_IND,
    VMC_OP_RET,
    VMC_OP_NEXT,
    VMC_OP_PLUGIN,
    VMC_OP_PLUGIN_W,
    VMC_OP_CALL_FAR,
    VMC_OP_CALL_FAR_W,
    VMC_OP_GET_OC,
    VMC_OP_GET_OC_W,
    VMC_OP_GETTER,
    VMC_OP_GETTER_W,
    VMC_OP_SETTER,
    VMC_OP_SETTER_W,
    VMC_OP_SEND,
    VMC_OP_SEND_W,
    VMC_OP_TYPEOF,
    VMC_OP_SIZEOF,
    VMC_OP_SWITCH,
    VMC_OP_INC,
    VMC_OP_DEC,
    VMC_OP_EXIT,
    VMC_OP_BP //Breakpoint?
} VMCOpcodeType;

typedef struct _sVMCOpcode{
    const char* name; //0x0
    s16 paramSize; //0x4
    s16 unk6; //0x6
} VMCOpcode;

typedef enum _VMTypes {
    VM_TYPE_NIL,
    VM_TYPE_TRUE,
    VM_TYPE_FALSE,
    VM_TYPE_INT,
    VM_TYPE_FIXED,
    VM_TYPE_STRING,
    VM_TYPE_ARRAY,
    VM_TYPE_FUNCTION,
    VM_TYPE_PLUGIN,
    VM_TYPE_OC,
    VM_TYPE_SYS
} VMTypes;

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

//Debug
void vmCodePut(VMMemory_Unk40Struct* r3, u8 r4);
void vmStackDump(VMMemory_Unk40Struct* r3);
void vmPackageDump();
void vmThreadDump();

#ifdef __cplusplus
}
#endif
