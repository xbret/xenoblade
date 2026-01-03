#include "monolib/vm/yvm.h"
#include <string.h>
#include <stdbool.h>

//Opcode data
static VMCOpcode vmcOpcodes[96] = {
    {"NOP", 0, 0},
    {"CONST_0", 0, 1},
    {"CONST_1", 0, 1},
    {"CONST_2", 0, 1},
    {"CONST_3", 0, 1},
    {"CONST_4", 0, 1},
    {"CONST_I", 1, 1},
    {"CONST_I_W", 2, 1},
    {"POOL_INT", 1, 1},
    {"POOL_INT_W", 2, 1},
    {"POOL_FIXED", 1, 1},
    {"POOL_FIXED_W", 2, 1},
    {"POOL_STR", 1, 1},
    {"POOL_STR_W", 2, 1},
    {"LD", 1, 1},
    {"ST", 1, -1},
    {"LD_ARG", 1, 1},
    {"ST_ARG", 1, -1},
    {"ST_ARG_OMIT", 1, -1},
    {"LD_0", 0, 1},
    {"LD_1", 0, 1},
    {"LD_2", 0, 1},
    {"LD_3", 0, 1},
    {"ST_0", 0, -1},
    {"ST_1", 0, -1},
    {"ST_2", 0, -1},
    {"ST_3", 0, -1},
    {"LD_ARG_0", 0, 1},
    {"LD_ARG_1", 0, 1},
    {"LD_ARG_2", 0, 1},
    {"LD_ARG_3", 0, 1},
    {"ST_ARG_0", 0, -1},
    {"ST_ARG_1", 0, -1},
    {"ST_ARG_2", 0, -1},
    {"ST_ARG_3", 0, -1},
    {"LD_STATIC", 1, 1},
    {"LD_STATIC_W", 2, 1},
    {"ST_STATIC", 1, -1},
    {"ST_STATIC_W", 2, -1},
    {"LD_AR", 0, -1},
    {"ST_AR", 0, -3},
    {"LD_NIL", 0, 1},
    {"LD_TRUE", 0, 1},
    {"LD_FALSE", 0, 1},
    {"LD_FUNC", 1, 1},
    {"LD_FUNC_W", 2, 1},
    {"LD_PLUGIN", 1, 1},
    {"LD_PLUGIN_W", 2, 1},
    {"LD_FUNC_FAR", 1, 1},
    {"LD_FUNC_FAR_W", 2, 1},
    {"MINUS", 0, 0},
    {"NOT", 0, -1},
    {"L_NOT", 0, -1},
    {"ADD", 0, -1},
    {"SUB", 0, -1},
    {"MUL", 0, -1},
    {"DIV", 0, -1},
    {"MOD", 0, -1},
    {"OR", 0, -1},
    {"AND", 0, -1},
    {"R_SHIFT", 0, -1},
    {"L_SHIFT", 0, -1},
    {"EQ", 0, -1},
    {"NE", 0, -1},
    {"GT", 0, -1},
    {"LT", 0, -1},
    {"GE", 0, -1},
    {"LE", 0, -1},
    {"L_OR", 0, -1},
    {"L_AND", 0, -1},
    {"JMP", 2, 0},
    {"JPF", 2, -1},
    {"CALL", 1, 0},
    {"CALL_W", 2, 0},
    {"CALL_IND", 0, 0},
    {"RET", 0, 0},
    {"NEXT", 0, 0},
    {"PLUGIN", 1, 0},
    {"PLUGIN_W", 2, 0},
    {"CALL_FAR", 1, 0},
    {"CALL_FAR_W", 2, 0},
    {"GET_OC", 1, 0},
    {"GET_OC_W", 2, 0},
    {"GETTER", 1, 0},
    {"GETTER_W", 2, 0},
    {"SETTER", 1, -1},
    {"SETTER_W", 2, -1},
    {"SEND", 1, 0},
    {"SEND_W", 2, 0},
    {"TYPEOF", 0, 0},
    {"SIZEOF", 0, 0},
    {"SWITCH", 1, 0},
    {"INC", 0, 0},
    {"DEC", 0, 0},
    {"EXIT", 0, 0},
    {"BP", 0, 0}
};

static const char* vmTypeNames[11] = {
    "nil",
    "true",
    "false",
    "int",
    "fixed",
    "string",
    "array",
    "function",
    "plugin",
    "OC",
    "sys"
};

typedef int (*OpcodeFunc)(VMThread* pThread, u8 opcodeIndex);

void encodeScramble(u8* data);
//If only C didn't force all of this to be forward declared :p
//TODO: these are all probably static judging from xcx symbols
int vmc_nop(VMThread* pThread, u8 opcodeIndex);
int vmc_const(VMThread* pThread, u8 opcodeIndex);
int vmc_const_i(VMThread* pThread, u8 opcodeIndex);
int vmc_pool_int(VMThread* pThread, u8 opcodeIndex);
int vmc_pool_fixed(VMThread* pThread, u8 opcodeIndex);
int vmc_pool_string(VMThread* pThread, u8 opcodeIndex);
int vmc_ld(VMThread* pThread, u8 opcodeIndex);
int vmc_st(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_arg(VMThread* pThread, u8 opcodeIndex);
int vmc_st_arg(VMThread* pThread, u8 opcodeIndex);
int vmc_st_arg_omit(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_const(VMThread* pThread, u8 opcodeIndex);
int vmc_st_const(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_arg_const(VMThread* pThread, u8 opcodeIndex);
int vmc_st_arg_const(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_static(VMThread* pThread, u8 opcodeIndex);
int vmc_st_static(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_ar(VMThread* pThread, u8 opcodeIndex);
int vmc_st_ar(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_nil(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_true(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_false(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_func(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_plugin(VMThread* pThread, u8 opcodeIndex);
int vmc_ld_func_far(VMThread* pThread, u8 opcodeIndex);
int vmc_minus(VMThread* pThread, u8 opcodeIndex);
int vmc_not(VMThread* pThread, u8 opcodeIndex);
int vmc_l_not(VMThread* pThread, u8 opcodeIndex);
int vmc_calc(VMThread* pThread, u8 opcodeIndex);
int vmc_jmp(VMThread* pThread, u8 opcodeIndex);
int vmc_jpf(VMThread* pThread, u8 opcodeIndex);
int vmc_call(VMThread* pThread, u8 opcodeIndex);
int vmc_call_ind(VMThread* pThread, u8 opcodeIndex);
int vmc_ret(VMThread* pThread, u8 opcodeIndex);
int vmc_next(VMThread* pThread, u8 opcodeIndex);
int vmc_plugin(VMThread* pThread, u8 opcodeIndex);
int vmc_call_far(VMThread* pThread, u8 opcodeIndex);
int vmc_get_oc(VMThread* pThread, u8 opcodeIndex);
int vmc_getter(VMThread* pThread, u8 opcodeIndex);
int vmc_setter(VMThread* pThread, u8 opcodeIndex);
int vmc_send(VMThread* pThread, u8 opcodeIndex);
int vmc_typeof(VMThread* pThread, u8 opcodeIndex);
int vmc_sizeof(VMThread* pThread, u8 opcodeIndex);
int vmc_switch(VMThread* pThread, u8 opcodeIndex);
int vmc_inc(VMThread* pThread, u8 opcodeIndex);
int vmc_dec(VMThread* pThread, u8 opcodeIndex);
int vmc_exit(VMThread* pThread, u8 opcodeIndex);
int vmc_bp(VMThread* pThread, u8 opcodeIndex);

static OpcodeFunc vmcOpcodeFuncs[] = {
    vmc_nop,
    vmc_const,
    vmc_const,
    vmc_const,
    vmc_const,
    vmc_const,
    vmc_const_i,
    vmc_const_i,
    vmc_pool_int,
    vmc_pool_int,
    vmc_pool_fixed,
    vmc_pool_fixed,
    vmc_pool_string,
    vmc_pool_string,
    vmc_ld,
    vmc_st,
    vmc_ld_arg,
    vmc_st_arg,
    vmc_st_arg_omit,
    vmc_ld_const,
    vmc_ld_const,
    vmc_ld_const,
    vmc_ld_const,
    vmc_st_const,
    vmc_st_const,
    vmc_st_const,
    vmc_st_const,
    vmc_ld_arg_const,
    vmc_ld_arg_const,
    vmc_ld_arg_const,
    vmc_ld_arg_const,
    vmc_st_arg_const,
    vmc_st_arg_const,
    vmc_st_arg_const,
    vmc_st_arg_const,
    vmc_ld_static,
    vmc_ld_static,
    vmc_st_static,
    vmc_st_static,
    vmc_ld_ar,
    vmc_st_ar,
    vmc_ld_nil,
    vmc_ld_true,
    vmc_ld_false,
    vmc_ld_func,
    vmc_ld_func,
    vmc_ld_plugin,
    vmc_ld_plugin,
    vmc_ld_func_far,
    vmc_ld_func_far,
    vmc_minus,
    vmc_not,
    vmc_l_not,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_calc,
    vmc_jmp,
    vmc_jpf,
    vmc_call,
    vmc_call,
    vmc_call_ind,
    vmc_ret,
    vmc_next,
    vmc_plugin,
    vmc_plugin,
    vmc_call_far,
    vmc_call_far,
    vmc_get_oc,
    vmc_get_oc,
    vmc_getter,
    vmc_getter,
    vmc_setter,
    vmc_setter,
    vmc_send,
    vmc_send,
    vmc_typeof,
    vmc_sizeof,
    vmc_switch,
    vmc_inc,
    vmc_dec,
    vmc_exit,
    vmc_bp
};

static u8 vmMemory[0x4928];


void vmInit(){
    //Clear the VM memory
    memset(vmMemory, 0, 0x490c);
}

//Checks to see if the header of the sb file is valid (should be "SB  ")
inline BOOL vmSbChk(const char* data){
    if(data == NULL) return FALSE;

    if(data[0] != 'S' || data[1] != 'B' || data[2] != ' ' || data[3] != ' '){
        return FALSE;
    }

    return data[4] < 2;
}

inline void* vmPackageSearch(u8* pData){
    u8** tempPtr = (u8 **)&vmMemory;

    for(u32 i = 0; i < 8; i++){
        if(tempPtr[i*2] == pData){
            return &vmMemory + i * 8;
        }
    }

    return NULL;
}

inline BOOL vmPackageRegist(u8* data){
    u8* puVar2 = vmPackageSearch(data);
        if (puVar2 == NULL) {
            u8** ppbVar11 = (u8 **)&vmMemory;
            int iVar14 = 8;
            do {
                if (*ppbVar11 == NULL) {
                    *ppbVar11 = data;
                    return true;
                }
                ppbVar11 = ppbVar11 + 2;
                iVar14 = iVar14 + -1;
            } while (iVar14 != 0);
            return false;
        }
        else {
            return true;
        }
}

/*
void vmDataGet(){
}
*/

inline short vmSysAtrPoolGet(u8* data, int param_2){
    /*
    piVar12 = *(int **)(data + 0x34);
    uVar3 = (uint)*(ushort *)((int)piVar12 + piVar12[2] * param_2 + *piVar12);
    */
    return 0;
}

inline int vmIdPoolGet(u8* data, int param_2){
    /*
    piVar12 = *(int **)(data + 0xc);
    iVar23 = *piVar12;
    iVar22 = piVar12[2] * (uint)*puVar21;
    if (piVar12[2] == 2) {
        uVar3 = (uint)*(ushort *)((int)piVar12 + iVar22 + iVar23);
    }
    else {
        uVar3 = *(uint *)((int)piVar12 + iVar22 + iVar23);
    }
    */
    return 0;
}

inline int vmSysAtrSearch(u8* data, int param_2){
    int uVar3 = vmSysAtrPoolGet(data, param_2);
    if (uVar3 == -1) return 0;
    else return vmIdPoolGet(data, uVar3);
}

int vmPluginSearch(int param_1, int param2){
    /*
    puVar2 = &vmMemory;
    iVar22 = 0;
    do {
        if ((*(char **)(puVar2 + 0x4688) != NULL) &&
           (iVar9 = strcmp(*(char **)(puVar2 + 0x4688),
                           (char *)((int)piVar12 + uVar3 + iVar23)), iVar9 == 0)) {
            uVar16 = 0;
            ppcVar19 = *(char ***)(puVar2 + 0x468c);
            ppcVar20 = ppcVar19;
            for (; *ppcVar19 != NULL; ppcVar19 = ppcVar19 + 2) {
                iVar9 = strcmp(*ppcVar20,(char *)((int)piVar12 + uVar4 + iVar13));
                if (iVar9 == 0) {
                    uVar16 = iVar22 << 0x10 | uVar16;
                    return uVar16;
                }
                ppcVar20 = ppcVar20 + 2;
                uVar16 = uVar16 + 1;
            }
        }
        iVar22 = iVar22 + 1;
        puVar2 = puVar2 + 8;
    } while (iVar22 < 0x30);
    return -1;
    */
    return 0;
}

int vmOCSearch(){
    /*
    puVar2 = &vmMemory;
    iVar22 = 0;
    do {
        if ((*(char ***)(puVar2 + 0x4808) != NULL) && (iVar13 = strcmp(**(char ***)(puVar2 + 0x4808), (char *)((int)piVar12 + uVar3 + iVar23)), iVar13 == 0)){
            return iVar22;
        }
        iVar22 = iVar22 + 1;
        puVar2 = puVar2 + 4;
    } while (iVar22 < 0x30);
    return -1;
    */
    return 0;
}

void vmPropertySearch(){
}

void vmSelectorSearch(){
}


int vmFuncFarSearch(int r3, int r4){
    return 0;
}

void vmStringPoolGet(){
}

int vmPackageSearchIdx(){
    return 0;
}


void vmInitDataLink(u8* data, const char* pcVar15){
    /*
    cVar1 = *pcVar15;
    if (cVar1 == '\x05') {
        piVar12 = *(int **)(data + 0x18);
        iVar22 = *piVar12;
        iVar14 = piVar12[2] * *(int *)(pcVar15 + 4);
        if (piVar12[2] == 2) {
            uVar4 = (uint)*(ushort *)((int)piVar12 + iVar14 + iVar22);
        }
        else {
            uVar4 = *(uint *)((int)piVar12 + iVar14 + iVar22);
        }
        *(uint *)(pcVar15 + 4) = (int)piVar12 + uVar4 + iVar22;
    }
    else if (cVar1 == '\b') {
        puVar17 = (undefined2 *)
                  ((int)*(int **)(data + 0x20) +
                  *(int *)(pcVar15 + 4) * 4 + **(int **)(data + 0x20));
        *(undefined2 *)(pcVar15 + 2) = *puVar17;
        *(uint *)(pcVar15 + 4) = (uint)(ushort)puVar17[1];
    }
    else if (cVar1 == '\a') {
        if (*(short *)(pcVar15 + 2) == 0) {
            if (_vmMemory == data) {
                uVar6 = 0;
            }
            else if (_DAT_8065af40 == data) {
                uVar6 = 1;
            }
            else if (_DAT_8065af48 == data) {
                uVar6 = 2;
            }
            else if (_DAT_8065af50 == data) {
                uVar6 = 3;
            }
            else if (_DAT_8065af58 == data) {
                uVar6 = 4;
            }
            else if (_DAT_8065af60 == data) {
                uVar6 = 5;
            }
            else if (_DAT_8065af68 == data) {
                uVar6 = 6;
            }
            else if (_DAT_8065af70 == data) {
                uVar6 = 7;
            }
            else {
                uVar6 = -1;
            }
            *(short *)(pcVar15 + 2) = uVar6;
            *(int *)(pcVar15 + 4) = *(int *)(pcVar15 + 4);
        }
        else {
            puVar17 = (undefined2 *)
                      ((int)*(int **)(data + 0x28) +
                      *(int *)(pcVar15 + 4) * 4 + **(int **)(data + 0x28));
            *(undefined2 *)(pcVar15 + 2) = *puVar17;
            *(uint *)(pcVar15 + 4) = (uint)(ushort)puVar17[1];
        }
    }
    */
}

int vmLocalPoolGet(u8* data, int param_2){
    /*
    piVar12 = *(int **)(data + 0x30);
    iVar22 = *piVar12;
    iVar14 = piVar12[2] * uVar3;
    if (piVar12[2] == 2) {
        uVar4 = (uint)*(ushort *)((int)piVar12 + iVar14 + iVar22);
    }
    else {
        uVar4 = *(uint *)((int)piVar12 + iVar14 + iVar22);
    }
    */
    return 0;
}

BOOL vmLink(u8* pData){
    //Check that the header bytes are correct
    if (!vmSbChk((char*)pData)) {
        //If not, this isn't a valid SB file
        return FALSE;
    }

    if (vmPackageRegist(pData)) {
        if ((pData[7] & 1) == 0) {
            pData[7] |= 1;
            SBHeader* header = (SBHeader*)pData;

            //Convert all the offset values in the header to pointers
            header->unk8 += (u32)pData;
            header->unkC += (u32)pData;
            header->unk10 += (u32)pData;
            header->unk14 += (u32)pData;
            header->unk18 += (u32)pData;
            header->unk1C += (u32)pData;
            header->unk20 += (u32)pData;
            header->unk24 += (u32)pData;
            header->unk28 += (u32)pData;
            header->unk2C += (u32)pData;
            header->unk30 += (u32)pData;
            header->unk34 += (u32)pData;
            header->unk38 += (u32)pData;
            header->unk3C += (u32)pData;

            if ((pData[6] & 2) != 0) {
                encodeScramble(pData);
            }

            u16* puVar21 = (u16 *)((int)*(int **)(pData + 0x20) + **(int **)(pData + 0x20));
            for (int iVar14 = 0; iVar14 < *(int *)(*(int *)(pData + 0x20) + 4); iVar14 = iVar14 + 1)
            {
                int uVar3 = vmIdPoolGet(pData, puVar21[0]);
                int uVar4 = vmIdPoolGet(pData, puVar21[1]);
                int uVar16 = vmPluginSearch(uVar3, uVar4);

                if (uVar16 == -1) {
                    return false;
                }
                *puVar21 = (u16)(uVar16 >> 0x10);
                puVar21[1] = (u16)uVar16;
                puVar21 = puVar21 + 2;
            }

            puVar21 = (u16 *)((int)*(int **)(pData + 0x24) + **(int **)(pData + 0x24));
            for (int iVar14 = 0; iVar14 < *(int *)(*(int *)(pData + 0x24) + 4); iVar14 = iVar14 + 1)
            {
                vmIdPoolGet(pData, puVar21[0]);
                int iVar22 = vmOCSearch();
                if (iVar22 == -1) {
                    return false;
                }
                *puVar21 = (u16)iVar22;
                puVar21 = puVar21 + 1;
            }

            puVar21 = (u16 *)((int)*(int **)(pData + 0x28) + **(int **)(pData + 0x28));
            for (int iVar14 = 0; iVar14 < *(int *)(*(int *)(pData + 0x28) + 4); iVar14 = iVar14 + 1)
            {
                int uVar3 = vmIdPoolGet(pData, puVar21[0]);
                int uVar4 = vmIdPoolGet(pData, puVar21[1]);
                int iVar23 = 0; //fake
                int iVar13 = 0; //fake
                int iVar22 = vmFuncFarSearch((int)header->unkC + uVar3 + iVar23, (int)header->unkC + uVar4 + iVar13);
                if (iVar22 == -1) {
                    return false;
                }
                *puVar21 = (u16)((uint)iVar22 >> 0x10);
                puVar21[1] = (u16)iVar22;
                puVar21 = puVar21 + 2;
            }

            char* pcVar15 = (char *)((int)*(int **)(pData + 0x2c) + **(int **)(pData + 0x2c));
            for (int uVar3 = 0; uVar3 < *(uint *)(*(int *)(pData + 0x2c) + 4); uVar3 = uVar3 + 1) {
                vmInitDataLink(pData, pcVar15);
                pcVar15 = pcVar15 + 8;
            }

            int* piVar12;

            for (int uVar3 = 0; piVar12 = *(int **)(pData + 0x30), uVar3 < (uint)piVar12[1]; uVar3 = uVar3 + 1) {
                int uVar4 = vmLocalPoolGet(pData, uVar3);
                int iVar22 = 0; //fake
                pcVar15 = (char *)((int)piVar12 + *(int *)((int)piVar12 + uVar4 + iVar22) + uVar4 + iVar22);
                for (int uVar16 = 0; uVar16 < *(uint *)((int)piVar12 + uVar4 + iVar22 + 4);
                    uVar16 = uVar16 + 1) {
                    vmInitDataLink(pData, pcVar15);
                    pcVar15 = pcVar15 + 8;
                }
            }
            
            int iVar14 = vmSysAtrSearch(pData, 1);
            u8* puVar2 = vmPackageSearch(pData);
            *(int *)(puVar2 + 4) = iVar14;
            return true;
        }

        return true;
    }

    return false;
}

void vmUnlink(){
}

void vmFunctionPoolGet(){
}

void vmThreadCreate(){
}

void vmStart(){
}

void vmDebModeGet(){
}

void vmSchedule(){
}

void vmDebBpCodeGet(){
}

void vmDebModeSet(){
}

void vmCodeExec(){
}

void vmThreadSearch(){
}

void vmThreadRemove(){
}

void vmThreadExec(){
}

void vmExec(){
}

void vmPluginModuleSearch(){
}

BOOL vmPluginRegist(const char* name, PluginFuncData* plugin_funcs){
    return FALSE;
}

void vmArgCntGet(){
}

void* vmArgPtrGet(VMThread* pThread, int r4){
    return NULL;
}

int vmArgOmitChk(VMThread* pThread, int r4){
    return 0;
}

BOOL vmArgBoolGet(int r3, void* r4){
    return FALSE;
}

int vmArgIntGet(int r3, void* r4){
    return 0;
}

int vmArgFixedGet(int r3, void* r4){
    return 0;
}

char* vmArgStringGet(int r3, void* r4){
    return NULL;
}

void* vmArgFunctionGet(VMThread* pthread, int r4){
    return NULL;
}

void* vmArgArrayGet(VMThread* pThread, int r4){
    return NULL;
}

void vmArrayGet(){
}

void vmArraySet(){
}

void* vmArgOCGet(VMThread* pThread, int r4){
    return NULL;
}


static void getArray(){
}

static void setArray(){
}

void vmPush(){
}

void vmRetValSet(VMThread* pThread, RetVal* pRetval){
    RetVal* r3 = &pThread->unk3C[pRetval->val++];
    r3->type = pRetval->type;
    r3->unk1 = pRetval->unk1;
    r3->unk2_U32 = pRetval->unk2_U32;
    r3->unk6 = pRetval->unk6;
}

void vmWaitModeSet(VMThread* pThread){
    pThread->unk4C = 1;
}

int vmWkIdxGet(VMThread* pThread){
    return pThread->waitMode;
}

void vmWkIdxSet(VMThread* pThread, int r4){
    pThread->waitMode = r4;
}

int* vmWkGet(VMThread* pThread, int r4){
    return &pThread->wkIdx + r4;
}

void vmPluginExceptionThrow(VMThread* pThread){
}

void vmBuiltinOCRegist(){
}

void vmOCRegist(){
}

void vmOCExceptionThrow(VMThread* pThread){
}

void* vmOCPropertyGet(VMThread* pThread){
    return &pThread->unk3C[pThread->unk4 - 1];
}

void vmThreadNumGet(){
}

void vmThreadSleepAll(){
}

void vmThreadWakeupAll(){
}

void vmThreadIsFinish(){
}

void vmThreadGetOC(){
}

void vmThreadStart(){
}

void vmThreadEnd(){
}

void vmThreadIsAlive(){
}

void vmThreadSleep(){
}

void vmThreadWakeup(){
}

void vmUsrAtrPoolGet(){
}

void vmUsrAtrSearch(){
}

void vmAttributeGet(){
}

void splitFixed(){
}

void vmArrayLocalChk(){
}

void vmIntPoolGet(){
}

void vmFixedPoolGet(){
}

void vmStackPrevGet(){
}

RetVal* vmStackNextGet(VMThread* pThread){
    return &pThread->unk3C[pThread->unk4++];
}


#define rotrMask(n) ((1 << n) - 1)
#define rotrBytes(a, b, n) (a >> n) | ((b & rotrMask(n)) << (8 - n))

#pragma push
#pragma optimize_for_size on
void encodeScrambleSub(u8* pData, int length) {
    //Rotate each group of 32 bits by 2 to the right
    //aaaaaaaa bbbbbbbb cccccccc dddddddd -> ddaaaaaa aabbbbbb bbcccccc ccdddddd
    for(int i = 0; i < length; i += 4){
        u8 byte0 = pData[0];
        u8 byte1 = pData[1];
        u8 byte2 = pData[2];
        u8 byte3 = pData[3];
        
        pData[0] = rotrBytes(byte0, byte3, 2);
        pData[1] = rotrBytes(byte1, byte0, 2);
        pData[2] = rotrBytes(byte2, byte1, 2);
        pData[3] = rotrBytes(byte3, byte2, 2);
        pData += 4;
    }
}
#pragma pop

void encodeScramble(u8* data){
    /*
    pbVar8 = (byte *)((int)piVar12 + piVar12[1] * piVar12[2] + *piVar12);
    uVar3 = (int)(data + iVar14) - (int)pbVar8;
    encodeScramble(pbVar8,(((int)uVar3 >> 2) + (uint)((int)uVar3 < 0 && (uVar3 & 3) != 0)) * 4);
    piVar12 = *(int **)(data + 0x18);
    iVar14 = (int)piVar12 + piVar12[1] * piVar12[2] + *piVar12;
    uVar3 = *(int *)(data + 0x1c) - iVar14;
    encodeScramble(iVar14,(((int)uVar3 >> 2) + (uint)((int)uVar3 < 0 && (uVar3 & 3) != 0)) * 4);
    */
}

/*
void vmExceptionProc(){
}
*/

void vmExceptionThrow(){
}


/*
void vmDebCont(){
}

void vmDebStepIn(){
}

void vmDebClrBp(){
}

void vmDebSetBp(){
}

void vmDebSetBpTop(){
}

void vmDebCurrentThreadGet(){
}

void vmDebCurrentSbGet(){
}

void vmDebCurrentFuncIdxGet(){
}

void vmDebCurrentLocalsGet(){
}

void vmDebCurrentParamsGet(){
}

void vmDebStaticItemGet(){
}

void vmDebStaticNumGet(){
}

void vmDebStaticNameGet(){
}

void vmDebStaticOffsGet(){
}

void vmDebStaticPtrGet(){
}

void vmDebLocalItemGet(){
}

void vmDebLocalNameGet(){
}

void vmDebLocalOffsGet(){
}

void vmDebLocalPtrGet(){
}

void vmDebParamItemGet(){
}

void vmDebParamNameGet(){
}

void vmDebParamOffsGet(){
}

void vmDebParamPtrGet(){
}

void vmDebFileNoGet(){
}

void vmDebLinePtrGet(){
}

void vmDebMemDump(){
}

void vmDebInit(){
}

void vmDebExec(){
}
*/

//Opcode functions

int vmc_nop(VMThread* pThread, u8 opcodeIndex){
    pThread->unk0 += vmcOpcodes[opcodeIndex].paramSize + 1;
    return 0;
}

int vmc_const(VMThread* pThread, u8 opcodeIndex){
    RetVal* r7 = vmStackNextGet(pThread);
    r7->type = VM_TYPE_INT;
    r7->val = opcodeIndex - 1;
    pThread->unk0 += vmcOpcodes[opcodeIndex].paramSize + 1;
    return 0;
}

int vmc_const_i(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_pool_int(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_pool_fixed(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_pool_string(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_st(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_arg(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_st_arg(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_st_arg_omit(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_const(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_st_const(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_arg_const(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_st_arg_const(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_static(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_st_static(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_ar(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_st_ar(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_nil(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_true(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_false(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_func(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_plugin(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ld_func_far(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_minus(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_not(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_l_not(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_op_nil(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_op_fixed(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_calc(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_jmp(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_jpf(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_call(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

void vmc_call_entry(){
}

int vmc_call_far_entry(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_plugin_sub(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_plugin_entry(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_call_ind(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_ret(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_next(VMThread* pThread, u8 opcodeIndex){
    pThread->unk0 += vmcOpcodes[opcodeIndex].paramSize + 1;
    return VMC_RESULT_2;
}

int vmc_plugin(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_call_far(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_get_oc(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_getter(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_setter(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_send(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_typeof(VMThread* pThread, u8 opcodeIndex){
    int r6 = pThread->unk4 - 1;
    RetVal* retVal = &pThread->unk3C[r6];
    const char* typeName = vmTypeNames[retVal->type];

    retVal->type = VM_TYPE_STRING;
    retVal->unk2_U16 = strlen(typeName);
    retVal->val = (int)typeName; //TODO: remove this cast
    pThread->unk0 += vmcOpcodes[opcodeIndex].paramSize + 1;
    return VMC_RESULT_0;
}

int vmc_sizeof(VMThread* pThread, u8 opcodeIndex){
    int r6 = pThread->unk4 - 1;
    RetVal* retVal = &pThread->unk3C[r6];

    int size;
    if(retVal->type != VM_TYPE_ARRAY) size = 1;
    else size = retVal->unk2_U16;

    retVal->type = VM_TYPE_INT;
    retVal->val = size;
    pThread->unk0 += vmcOpcodes[opcodeIndex].paramSize + 1;
    return VMC_RESULT_0;
}

int vmc_switch(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_inc(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_dec(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

int vmc_exit(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_3;
}

int vmc_bp(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_1;
}

void vmHalt(){
    VMMemory* memory = (VMMemory*)vmMemory;
    VMMemory_Unk40Struct* r31 = memory->unk40;
    u8* r0 = r31->unk34;

    vmCodePut(r31, r0[r31->unk0]);
    vmStackDump(r31);
    vmPackageDump();
    vmThreadDump();
}

void vmArgErr(){
}
