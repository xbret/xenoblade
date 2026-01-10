#include "monolib/vm/yvm.h"
#include "monolib/vm/yvm_debug.h"
#include <string.h>
#include <stdbool.h>
#include <revolution/OS.h>


typedef int (*OpcodeFunc)(VMThread* pThread, u8 code);

void encodeScramble(u8* data);
//If only C didn't force all of this to be forward declared :p
//TODO: these are all probably static judging from xcx symbols
int vmc_nop(VMThread* pThread, u8 code);
int vmc_const(VMThread* pThread, u8 code);
int vmc_const_i(VMThread* pThread, u8 code);
int vmc_pool_int(VMThread* pThread, u8 code);
int vmc_pool_fixed(VMThread* pThread, u8 code);
int vmc_pool_string(VMThread* pThread, u8 code);
int vmc_ld(VMThread* pThread, u8 code);
int vmc_st(VMThread* pThread, u8 code);
int vmc_ld_arg(VMThread* pThread, u8 code);
int vmc_st_arg(VMThread* pThread, u8 code);
int vmc_st_arg_omit(VMThread* pThread, u8 code);
int vmc_ld_const(VMThread* pThread, u8 code);
int vmc_st_const(VMThread* pThread, u8 code);
int vmc_ld_arg_const(VMThread* pThread, u8 code);
int vmc_st_arg_const(VMThread* pThread, u8 code);
int vmc_ld_static(VMThread* pThread, u8 code);
int vmc_st_static(VMThread* pThread, u8 code);
int vmc_ld_ar(VMThread* pThread, u8 code);
int vmc_st_ar(VMThread* pThread, u8 code);
int vmc_ld_nil(VMThread* pThread, u8 code);
int vmc_ld_true(VMThread* pThread, u8 code);
int vmc_ld_false(VMThread* pThread, u8 code);
int vmc_ld_func(VMThread* pThread, u8 code);
int vmc_ld_plugin(VMThread* pThread, u8 code);
int vmc_ld_func_far(VMThread* pThread, u8 code);
int vmc_minus(VMThread* pThread, u8 code);
int vmc_not(VMThread* pThread, u8 code);
int vmc_l_not(VMThread* pThread, u8 code);
int vmc_calc(VMThread* pThread, u8 code);
int vmc_jmp(VMThread* pThread, u8 code);
int vmc_jpf(VMThread* pThread, u8 code);
int vmc_call(VMThread* pThread, u8 code);
int vmc_call_ind(VMThread* pThread, u8 code);
int vmc_ret(VMThread* pThread, u8 code);
int vmc_next(VMThread* pThread, u8 code);
int vmc_plugin(VMThread* pThread, u8 code);
int vmc_call_far(VMThread* pThread, u8 code);
int vmc_get_oc(VMThread* pThread, u8 code);
int vmc_getter(VMThread* pThread, u8 code);
int vmc_setter(VMThread* pThread, u8 code);
int vmc_send(VMThread* pThread, u8 code);
int vmc_typeof(VMThread* pThread, u8 code);
int vmc_sizeof(VMThread* pThread, u8 code);
int vmc_switch(VMThread* pThread, u8 code);
int vmc_inc(VMThread* pThread, u8 code);
int vmc_dec(VMThread* pThread, u8 code);
int vmc_exit(VMThread* pThread, u8 code);
int vmc_bp(VMThread* pThread, u8 code);

void encodeScramble(u8* data);


//Opcode data
static VMCOpcode vmcOpcodes[VMC_MAX] = {
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

static const char* vmTypeNames[VM_MAX_TYPE] = {
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

static OpcodeFunc vmcOpcodeFuncs[VMC_MAX] = {
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

VMState vmState;

void vmInit(){
    //Clear the vm state struct
    memset(&vmState, 0, sizeof(VMState));
}

//Checks to see if the header of the sb file is valid
inline BOOL vmSbChk(const SBHeader* pHeader){
    if(pHeader == NULL) return FALSE;

    //Check the magic value
    const char* magic = pHeader->magic;
    if(magic[0] != 'S' || magic[1] != 'B' || magic[2] != ' ' || magic[3] != ' '){
        return FALSE;
    }

    //Check the version
    return pHeader->version >= SB_MIN_VERSION;
}

//Finds the package entry that matches the given script data pointer
inline VMPackage* vmPackageSearch(SBHeader* pData){
    VMPackage* curPackage = vmState.packages;

    for(int i = 0; i < MAX_PACKAGES; i++){
        //If the current slot has a matching script data pointer, we found a match
        if(curPackage->scriptDataPtr == pData){
            return &vmState.packages[i];
        }
        curPackage++;
    }

    return NULL;
}


inline int vmPackageSearchIdx(SBHeader* data){
    for(int i = 0; i < MAX_PACKAGES; i++){
        if(vmState.packages[i].scriptDataPtr == data){
            return i;
        }
    }

    return -1;
}

//Registers the given script data as a new package in the list of packages
inline BOOL vmPackageRegist(SBHeader* data){
    //Check if the package has already been registered
    if (vmPackageSearch(data) != NULL) {
        return TRUE;
    }

    //If not found, look for an empty slot to register the package in
    VMPackage* curPackage = vmState.packages;
    for(int i = 0; i < MAX_PACKAGES; i++){
        //If the current slot is empty (script data pointer is null), use it to register this script
        if (curPackage->scriptDataPtr == NULL) {
            curPackage->scriptDataPtr = data;
            return TRUE;
        }
        curPackage++;
    }

    //No available slot was found
    return FALSE;
}

//Utility pointer functions

inline void* getSectionEntriesPtr(SBSectionHeader* header){
    return (void*)((u32)header + header->entriesOffset);
}

inline void* getRelativePtr(void* header){
    return (void*)((u32)header + *(u32*)header);
}

inline void adjustSectionPtr(void* pBase, void* pPtr){
    *(u8**)pPtr += (u32)pBase;
}

typedef struct UnkStruct1 {
    u8 type; //0x0
    u16 unk2;
    u32 unk4;
} UnkStruct1;

inline void vmInitDataLink(SBHeader* data, UnkStruct1* pEntry){
    switch(pEntry->type){
        case VM_TYPE_STRING: {
            pEntry->unk4 = (u32)vmStringPoolGet(data, pEntry->unk4);
            break;
        }
        case VM_TYPE_PLUGIN: {
            void* sectionData = getSectionEntriesPtr(data->pluginImportsOfs);
            PluginImportEntry* pluginImport = &((PluginImportEntry*)sectionData)[pEntry->unk4];
            pEntry->unk2 = pluginImport->unk0;
            pEntry->unk4 = pluginImport->unk2;
            break;
        }
        case VM_TYPE_FUNCTION: {
            int index = pEntry->unk4;
            if (pEntry->unk2 == 0) {
                pEntry->unk2 = vmPackageSearchIdx(data);
                pEntry->unk4 = index; //???
            } else {
                void* sectionData = getSectionEntriesPtr(data->functionImportsOfs);
                FunctionImportEntry* funcImport = &((FunctionImportEntry*)sectionData)[index];
                pEntry->unk2 = funcImport->unk0;
                pEntry->unk4 = funcImport->unk2;
            }
            break;
        }
    }
}

//Tries to load the given script file, and returns true/false depending on if loading was successful.
BOOL vmLink(u8* pData){
    SBHeader* header = (SBHeader*)pData;

    //Check that the header is valid
    if (!vmSbChk(header)) {
        //If not, this isn't a valid SB file
        return FALSE;
    }

    //Try to register this script as a new package
    if(!vmPackageRegist(header)) return FALSE;

    //Check if the file has already been loaded
    if (header->vmFlags & SB_FLAG_LOADED) return TRUE;
    //If not, mark that this file has been loaded by setting the corresponding flag
    header->vmFlags |= SB_FLAG_LOADED;

    //Convert all the offset values in the header to pointers to make accessing section data easier
    adjustSectionPtr(pData, &header->codeOfs);
    adjustSectionPtr(pData, &header->idPoolOfs);
    adjustSectionPtr(pData, &header->intPoolOfs);
    adjustSectionPtr(pData, &header->fixedPoolOfs);
    adjustSectionPtr(pData, &header->stringPoolOfs);
    adjustSectionPtr(pData, &header->functionPoolOfs);
    adjustSectionPtr(pData, &header->pluginImportsOfs);
    adjustSectionPtr(pData, &header->ocImportsOfs);
    adjustSectionPtr(pData, &header->functionImportsOfs);
    adjustSectionPtr(pData, &header->staticVarsOfs);
    adjustSectionPtr(pData, &header->localPoolOfs);
    adjustSectionPtr(pData, &header->sysAttrPoolOfs);
    adjustSectionPtr(pData, &header->userAttrPoolOfs);
    adjustSectionPtr(pData, &header->debugSymbolsOfs);

    //Decrypt the script data if encrypted
    if(header->flags & SB_FLAG_ENCRYPTED) encodeScramble(pData);

    //Load plugin imports
    PluginImportEntry* pluginImportPtr = (PluginImportEntry*)getSectionEntriesPtr(header->pluginImportsOfs);

    for(int i = 0; i < header->pluginImportsOfs->entries; i++){
        //Search for the plugin entry
        const char* string1 = vmIdPoolGet(header, pluginImportPtr[i].unk0);
        const char* string2 = vmIdPoolGet(header, pluginImportPtr[i].unk2);
        u32 index = vmPluginSearch(string1, string2);

        if(index == -1) return FALSE;
        
        pluginImportPtr[i].unk0 = (index >> 16) & 0xFFFF;
        pluginImportPtr[i].unk2 = index & 0xFFFF;
    }

    //Load OC imports
    OCImportEntry* ocImportEntryPtr = (OCImportEntry*)getSectionEntriesPtr(header->ocImportsOfs);

    for(int i = 0; i < header->ocImportsOfs->entries; i++){
        //Search for the OC entry
        const char* string = vmIdPoolGet(header, ocImportEntryPtr[i].unk0);
        u32 index = vmOCSearch(string);

        if(index == -1) return FALSE;

        ocImportEntryPtr[i].unk0 = (u16)index;
    }

    //Load function imports
    FunctionImportEntry* funcImportEntryPtr = (FunctionImportEntry*)getSectionEntriesPtr(header->functionImportsOfs);

    for(int i = 0; i < header->functionImportsOfs->entries; i++){
        const char* packageName = vmIdPoolGet(header, funcImportEntryPtr[i].unk0);
        const char* funcName = vmIdPoolGet(header, funcImportEntryPtr[i].unk2);
        //Search for the function import in the loaded files
        u32 index = vmFuncFarSearch(packageName, funcName);

        //If no matching function was found, return
        if(index == -1) return FALSE;

        funcImportEntryPtr[i].unk0 = (index >> 16) & 0xFFFF;
        funcImportEntryPtr[i].unk2 = index & 0xFFFF;
    }

    //Load static var data
    UnkStruct1* staticVarEntryPtr = (UnkStruct1*)getSectionEntriesPtr(header->staticVarsOfs);

    for (u32 i = 0; i < header->staticVarsOfs->entries; i++) {
        vmInitDataLink(header,staticVarEntryPtr);
        staticVarEntryPtr++;
    }

    //Load local pool data
    for (u32 i = 0; i < header->localPoolOfs->entries; i++) {
        LocalPoolEntry* uVar4 = (LocalPoolEntry*)vmLocalPoolGet(header, i);
        UnkStruct1* tempPtr = (UnkStruct1*)getRelativePtr(uVar4);

        for (u32 j = 0; j < uVar4->unk4; j++) {
            vmInitDataLink(header, tempPtr);
            tempPtr++;
        }
    }

    u32 something = vmSysAtrSearch(header, 1);
    VMPackage* package = vmPackageSearch(header);
    package->unk4 = something;

    return TRUE;
}

BOOL vmUnlink(u8* pData){
    SBHeader* header = (SBHeader*)pData;
    //This could just use vmPackageSearchIdx instead... 
    VMPackage* package = vmPackageSearch(header);
    if(package != NULL){
        int index = vmPackageSearchIdx(header);
        VMState* state = &vmState;

        for(int i = 0; i < MAX_THREADS; i++){
            if(state->threads[i].unk24 == index){
                state->threads[i].scriptData = NULL;
            }
        }

        package->scriptDataPtr = NULL;
        return TRUE;
    }

    return FALSE;
}

void vmStart(u8* pData){
    SBHeader* header = (SBHeader*)pData;
    vmThreadCreate(header, header->codeOfs->entries);
}

/*

void vmSchedule(){
}

void vmCodeExec(){
}

void vmThreadSearch(){
}

void vmThreadRemove(){
}

void vmThreadExec(){
}
*/

void vmExec(){
}

inline BOOL vmPluginModuleSearch(const char* name){
    for(int i = 0; i < MAX_PLUGINS; i++){
        VMPlugin* plugin = &vmState.plugins[i];
        if(name != NULL && strcmp(vmState.plugins[i].unk0, name) == 0){
            return TRUE;
        }
    }

    return FALSE;
}

BOOL vmPluginRegist(const char* name, PluginFuncData* plugin_funcs){
    if(vmPluginModuleSearch(name)){
        //If the plugin has already been registered, return early
        return TRUE;
    }

    for(int i = 0; i < MAX_PLUGINS; i++){
        if(vmState.plugins[i].unk0 == NULL){
            vmState.plugins[i].unk0 = (char*)name;
            vmState.plugins[i].unk4 = (VMPlugin_UnkStruct1*)plugin_funcs;
            return TRUE;
        }
    }

    return FALSE;
}

inline u8 vmArgCntGet(VMThread* pThread){
    u8 r0 = ((u32*)&pThread->unk3C[pThread->sp])[-1]; //???
    return (u8)(u32)r0;
}

VMArg* vmArgPtrGet(VMThread* pThread, u32 r4){
    if(vmArgCntGet(pThread) < (int)r4 || r4 == 0){
        vmHalt();
    }

    return (VMArg*)&pThread->unk3C[pThread->sp - 1 - r4];
}

BOOL vmArgOmitChk(VMThread* pThread, int r4){
    int count = vmArgCntGet(pThread);

    if(r4 == 0){
        vmHalt();
    }

    if(count < r4){
        return TRUE;
    }



    return pThread->unk3C[(pThread->sp - 1) - r4].type == VM_TYPE_NIL;
}

BOOL vmArgBoolGet(u32 index, VMArg* pArg){
    int type = pArg->type;

    if(type != VM_TYPE_TRUE && type != VM_TYPE_FALSE){
        vmArgErr();
    }

    return type != VM_TYPE_FALSE;
}

int vmArgIntGet(u32 index, VMArg* pArg){
    int type = pArg->type;
    int result;

    if(type == VM_TYPE_FIXED){
        //Convert from fixed to int
        result = FIXED_TO_INT(pArg->value.intVal);
    }else{
        if(type != VM_TYPE_INT){
            vmArgErr();
        }

        result = pArg->value.intVal;
    }

    return result;
}

int vmArgFixedGet(u32 index, VMArg* pArg){
    int type = pArg->type;
    int result;

    if(type == VM_TYPE_INT){
        //Convert from int to fixed
        result = INT_TO_FIXED(pArg->value.intVal);
    }else{
        if(type != VM_TYPE_FIXED){
            vmArgErr();
        }

        result = pArg->value.intVal;
    }

    return result;
}

const char* vmArgStringGet(u32 index, VMArg* pArg){
    int type = pArg->type;

    if(type != VM_TYPE_STRING){
        vmArgErr();
    }

    return (const char*)pArg->value.pointerVal;
}

u32 vmArgFunctionGet(u32 index, VMArg* pArg){
    int type = pArg->type;

    if(type != VM_TYPE_FUNCTION){
        vmArgErr();
    }

    return (pArg->unk2_U16 << 16) | (pArg->value.uintVal & 0xFFFF);
}

void* vmArgArrayGet(u32 index, VMArg* pArg){
    int type = pArg->type;

    if(type != VM_TYPE_ARRAY){
        vmArgErr();
    }

    return pArg;
}

static BOOL getArray(UNKTYPE* r3, UNKTYPE* r4, UNKTYPE* r5, void** pArray);
static BOOL setArray();

void* vmArrayGet(UNKTYPE* r3, UNKTYPE* r4, UNKTYPE* r5){
    void* array = NULL;
    if(!getArray(r3, r4, r5, &array)) vmHalt();
    return array;
}

/*
void vmArraySet(){
}
*/

void* vmArgOCGet(u32 index, VMArg* pArg){
    int type = pArg->type;

    if(type != VM_TYPE_OC){
        vmArgErr();
    }

    return pArg;
}

void vmPush(VMThread* pThread, VMArg* pArg){
    VMArg* r3 = &pThread->unk3C[pThread->sp++];
    r3->type = pArg->type;
    r3->unk1 = pArg->unk1;
    r3->unk2_U32 = pArg->unk2_U32;
    r3->unk6 = pArg->unk6;
}

void vmRetValSet(VMThread* pThread, VMArg* pArg){
    vmPush(pThread, pArg);
}

void vmWaitModeSet(VMThread* pThread){
    pThread->waitMode = TRUE;
}

u32 vmWkIdxGet(VMThread* pThread){
    return pThread->wkIdx;
}

void vmWkIdxSet(VMThread* pThread, u32 mode){
    pThread->wkIdx = mode;
}

u32* vmWkGet(VMThread* pThread, u32 r4){
    return &pThread->unk54 + r4;
}

void vmPluginExceptionThrow(VMThread* pThread){
    vmExceptionThrow(pThread, 1);
}

void vmBuiltinOCRegist(){
}

void vmOCRegist(){
}

inline void saveArg(VMThread* pThread, VMArg* pArg){
    pThread->unk14.type = pArg->type;
    pThread->unk14.unk1 = pArg->unk1;
    pThread->unk14.unk2_U32 = pArg->unk2_U32;
    pThread->unk14.unk6 = pArg->unk6;
}

void vmOCExceptionThrow(VMThread* pThread){
    VMArg* arg = &pThread->unk3C[pThread->sp];
    saveArg(pThread, arg);
    vmExceptionThrow(pThread, 2);
}

void* vmOCPropertyGet(VMThread* pThread){
    return &pThread->unk3C[pThread->sp - 1];
}

/*
void vmThreadNumGet(){
}
*/

void vmThreadSleepAll(){
}

/*
void vmThreadWakeupAll(){
}

void vmThreadIsFinish(){
}
*/

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

/*
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
*/

VMArg* vmStackPrevGet(VMThread* pThread){
    VMArg* result = NULL;

    if(pThread->sp > 0){
        result = &pThread->unk3C[pThread->sp--];
    }

    return result;
}

VMArg* vmStackNextGet(VMThread* pThread){
    return &pThread->unk3C[pThread->sp++];
}

#define rotrMask(n) ((1 << n) - 1)
#define rotrBytes(a, b, n) (a >> n) | ((b & rotrMask(n)) << (8 - n))

//I have no idea how to match this
#pragma push
#pragma optimize_for_size on
DECOMP_DONT_INLINE void encodeScrambleSub(u8* pData, int length) {
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

void encodeScramble(u8* pData){
    SBHeader* header = (SBHeader*)pData;

    //Descramble the ID pool section
    SBSectionHeader* sectionHeader = header->idPoolOfs;
    u32 idSectionAddr = (u32)sectionHeader + sectionHeader->entriesOffset + (sectionHeader->entries * sectionHeader->offsetSize);
    int idSectionSize = (u32)header->intPoolOfs - idSectionAddr;
    encodeScrambleSub((u8*)idSectionAddr, (idSectionSize/4)*4);

    //Descramble the string pool section
    sectionHeader = header->stringPoolOfs;
    u32 strSectionAddr = (u32)sectionHeader + sectionHeader->entriesOffset + (sectionHeader->entries * sectionHeader->offsetSize);
    int strSectionSize = (u32)header->functionPoolOfs - strSectionAddr;
    encodeScrambleSub((u8*)strSectionAddr, (strSectionSize/4)*4);
}

inline u32 vmDataGet(VMThread* pThread, int startIndex, int length){
    //BUG: This code assumes the length is at least 1. Why??
    int i = 1;
    int index = startIndex;
    u32 result = pThread->codeSection[index];

    while(i < length){
        result <<= 8;
        result |= pThread->codeSection[++index];
        i++;
    }

    return result;
}

#pragma dont_inline on
void vmExceptionProc(VMThread* pThread){
    int temp1 = pThread->unk10;
    vmDataGet(pThread, temp1 + 1, vmcOpcodes[pThread->codeSection[pThread->unk10]].paramSize);
    pThread->pc = pThread->unk10;
    vmHalt();
}
#pragma dont_inline reset

inline void vmExceptionThrow(VMThread* pThread, u32 r4){
    pThread->unkC = r4;
    pThread->unk10 = pThread->pc;
    vmExceptionProc(pThread);
}

//TODO: volatile feels fake
inline void* poolEntryGet(volatile SBSectionHeader* sectionHeader, u32 no){
    int size = sectionHeader->offsetSize;
    u8* entriesPtr = (u8*)sectionHeader + sectionHeader->entriesOffset;
    u32 entryOffset = size * no;

    u32 result;
    if (size == 2) result = *(u16*)(entriesPtr + entryOffset);
    else result = *(u32*)(entriesPtr + entryOffset);
    return entriesPtr + result;
}

inline u16 poolEntryGet1(SBSectionHeader* sectionHeader, u32 no){
    u8* entriesPtr = (u8*)sectionHeader + sectionHeader->entriesOffset;
    u32 entryOffset = sectionHeader->offsetSize * no;
    return *(u16*)(entriesPtr + entryOffset);
}

inline u16 vmSysAtrPoolGet(SBHeader* data, u32 no){
    return poolEntryGet1(data->sysAttrPoolOfs, no);
}

inline void* vmIdPoolGet(SBHeader* data, u32 no){
    return poolEntryGet(data->idPoolOfs, no);
}

inline void* vmIntPoolGet(SBHeader* data, u32 no){
    return 0;
}

inline void* vmFixedPoolGet(SBHeader* data, u32 no){
    return 0;
}

inline void* vmStringPoolGet(SBHeader* data, u32 no){
    return poolEntryGet(data->stringPoolOfs, no);
}


inline void* vmLocalPoolGet(SBHeader* data, u32 no){
    return poolEntryGet(data->localPoolOfs, no);
}

inline void* vmFunctionPoolGet(SBHeader* data, u32 param2){
    return NULL;
}

u32 vmSysAtrSearch(SBHeader* data, u32 param_2){
    u16 uVar3 = vmSysAtrPoolGet(data, param_2);
    if (uVar3 == 0xFFFF) return NULL;
    else return (u32)vmIdPoolGet(data, uVar3);
}

inline u32 vmPluginSearch(const char* param1, const char* param2){
    for(int i = 0; i < MAX_PLUGINS; i++){
        const char* name = vmState.plugins[i].unk0;
        if (name != NULL && strcmp(name, param1) == 0) {
            VMPlugin_UnkStruct1* struct1 = vmState.plugins[i].unk4;
            VMPlugin_UnkStruct1* struct2 = vmState.plugins[i].unk4;

            for(int j = 0; struct1->unk0 != NULL; j++) {
                if (strcmp(struct2->unk0, param2) == 0) {
                    return (i << 16) | j;
                }

                struct2++;
                struct1++;
            }
        }
    }

    return -1;
}

inline u32 vmOCSearch(const char* name){
    VMState* state = &vmState;

    for(int i = 0; i < MAX_OCS; i++) {
        char** temp = state->ocs[i].unk0;
        if (temp != NULL && strcmp(*temp, name) == 0){
            return i;
        }
    }

    return -1;
}

void vmPropertySearch(){
}

void vmSelectorSearch(){
}

//Searches for a function in a specific package/file. If successful, the package index and function
//name are returned (lower 16 bits: function pool index, upper: package index). If not, -1 is returned.
u32 vmFuncFarSearch(const char* pPackageName, const char* pFuncName){
    for(int i = 0; i < MAX_PACKAGES; i++){
        const char* name = (const char*)vmState.packages[i].unk4;
        //Check if the package name matches
        if (name != NULL && strcmp(name, pPackageName) == 0) {
            SBHeader* struct1 = vmState.packages[i].scriptDataPtr;
            SBSectionHeader* funcPoolSectionHeader = struct1->functionPoolOfs;
            FunctionPoolEntry* r29 = (FunctionPoolEntry*)getSectionEntriesPtr(funcPoolSectionHeader);

            //Check all functions in the package's function pool for a match
            for(int j = 0; j < funcPoolSectionHeader->entries; j++) {
                const char* curFuncName = vmIdPoolGet(struct1, r29[j].unk0);

                if (strcmp(curFuncName, pFuncName) == 0) {
                    return (i << 16) | j;
                }
            }

            return -1;
        }
    }

    return -1;
}

VMThread* vmThreadCreate(SBHeader* param1, u32 param2){
    //Search for an empty slot
    for(int i = 0; i < 16; i++){
        if(vmState.threads[i].scriptData == NULL){
            //Initialize the thread slot
            VMThread* thread = &vmState.threads[i];

            for(int j = 0; j < 16; j++) {
                if (vmState.unk48[j] == 0) {
                    vmState.unk48[j] = thread;
                    break;
                }
            }

            thread->pc = ((FunctionPoolEntry*)getSectionEntriesPtr(param1->functionPoolOfs))[param2].unkC;
            thread->sp = 0;
            thread->unk8 = 0;
            thread->unkC = 0;
            thread->unk10 = 0;
        
            int uVar2 = vmPackageSearchIdx(param1);

            thread->unk24 = uVar2;
            thread->unk28 = param2;
            thread->unk2C = uVar2;
            thread->scriptData = param1;
            thread->codeSection = getSectionEntriesPtr(param1->codeOfs);
            thread->staticVarsSection = getSectionEntriesPtr(param1->staticVarsOfs);
            thread->unk3C = (VMArg*)(&vmState.stack[i]);
            thread->unk40 = 0x80; //0xC8
            thread->unk44 = vmState.unk44++; //0xCC
            thread->unk48 = 0; //0xD0
            thread->waitMode = FALSE; //0xD4
            thread->wkIdx = 0; //0xD8
        
            memset(&thread->unk54, 0, 0xC);
        
            return thread;
        }
    }

    //No empty slot was found
    return NULL;
}

//Opcode functions

inline void vmc_inc_pc(VMThread* pThread, u8 code){
    //Increment PC by the number of bytes for the parameter plus 1 for the opcode byte
    pThread->pc += vmcOpcodes[code].paramSize + 1;
}

int vmc_nop(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return 0;
}

int vmc_const(VMThread* pThread, u8 code){
    VMArg* r7 = vmStackNextGet(pThread);
    r7->type = VM_TYPE_INT;
    r7->value.uintVal = code - 1;
    vmc_inc_pc(pThread, code);
    return 0;
}

int vmc_const_i(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_pool_int(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_pool_fixed(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_pool_string(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_arg(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_arg(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_arg_omit(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_const(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_const(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_arg_const(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_arg_const(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_static(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_static(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

static BOOL getArray(UNKTYPE* r3, UNKTYPE* r4, UNKTYPE* r5, void** pArray){
    return FALSE;
}

int vmc_ld_ar(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

static BOOL setArray(){
    return FALSE;
}

int vmc_st_ar(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_nil(VMThread* pThread, u8 code){
    int sp = pThread->sp++;
    pThread->unk3C[sp].type = VM_TYPE_NIL;
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_true(VMThread* pThread, u8 code){
    int sp = pThread->sp++;
    pThread->unk3C[sp].type = VM_TYPE_TRUE;
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_false(VMThread* pThread, u8 code){
    int sp = pThread->sp++;
    pThread->unk3C[sp].type = VM_TYPE_FALSE;
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_func(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_plugin(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_func_far(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_minus(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

inline void exception6(VMThread* pThread, VMArg* pArg){
    saveArg(pThread, pArg);
    vmExceptionThrow(pThread, 6);
}

int vmc_not(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->unk3C[pThread->sp - 1];

    if((int)arg->type == VM_TYPE_INT){
        arg->value.intVal = ~arg->value.intVal;
    }else{
        saveArg(pThread, arg);
        vmExceptionThrow(pThread, 6);
        return VMC_RESULT_0;
    }

    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_l_not(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->unk3C[pThread->sp - 1];
    
    switch(arg->type){
        case VM_TYPE_TRUE:
            arg->type = VM_TYPE_FALSE;
            break;
        case VM_TYPE_FALSE:
            arg->type = VM_TYPE_TRUE;
            break;
        default:
            saveArg(pThread, arg);
            vmExceptionThrow(pThread, 6);
            return VMC_RESULT_0;
    }

    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_op_nil(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_op_fixed(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_calc(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_jmp(VMThread* pThread, u8 code){
    return VMC_RESULT_0;
}

int vmc_jpf(VMThread* pThread, u8 code){
    return VMC_RESULT_0;
}

int vmc_call(VMThread* pThread, u8 code){
    return VMC_RESULT_0;
}

void vmc_call_entry(){
}

int vmc_call_far_entry(VMThread* pThread, u8 code){
    return VMC_RESULT_0;
}

int vmc_plugin_sub(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_plugin_entry(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_call_ind(VMThread* pThread, u8 code){
    return VMC_RESULT_0;
}

int vmc_ret(VMThread* pThread, u8 code){
    int unk8 = pThread->unk8;
    VMArg* arg1 = &pThread->unk3C[unk8 - 3];
    u32 r9 = arg1->value.uintVal;
    int r10 = pThread->sp - 1;
    pThread->sp = unk8 - ((r9 & 0xFF) + 3);

    VMArg* arg2 = &pThread->unk3C[unk8 - 1];
    VMArg* arg3 = &pThread->unk3C[unk8 - 2];
    pThread->pc = arg2->value.intVal;
    int r8_1 = arg2->unk2_U16;
    pThread->unk8 = arg3->value.intVal;

    if(((r9 >> 8) & 0xFF) != 0){
        vmPush(pThread, &pThread->unk3C[r10]);
    }

    if(r8_1 != pThread->unk2C){
        pThread->unk2C = r8_1;
        pThread->scriptData = vmState.packages[r8_1].scriptDataPtr;
        pThread->codeSection = getSectionEntriesPtr(pThread->scriptData->codeOfs);
        pThread->staticVarsSection = getSectionEntriesPtr(pThread->scriptData->staticVarsOfs);
    }

    return VMC_RESULT_0;
}

int vmc_next(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_2;
}

int vmc_plugin(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_call_far(VMThread* pThread, u8 code){
    return VMC_RESULT_0;
}

int vmc_get_oc(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_getter(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_setter(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_send(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_typeof(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->unk3C[pThread->sp - 1];
    const char* typeName = vmTypeNames[arg->type];

    arg->type = VM_TYPE_STRING;
    arg->unk2_U16 = strlen(typeName);
    arg->value.pointerVal = (void*)typeName;
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_sizeof(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->unk3C[pThread->sp - 1];

    int size;
    if(arg->type != VM_TYPE_ARRAY) size = 1;
    else size = arg->unk2_U16;

    arg->type = VM_TYPE_INT;
    arg->value.intVal = size;
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_switch(VMThread* pThread, u8 code){
    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_inc(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->unk3C[pThread->sp - 1];

    if((int)arg->type == VM_TYPE_INT){
        arg->value.intVal++;
    }else{
        saveArg(pThread, arg);
        vmExceptionThrow(pThread, 6);
        return VMC_RESULT_0;
    }

    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_dec(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->unk3C[pThread->sp - 1];

    if((int)arg->type == VM_TYPE_INT){
        arg->value.intVal--;
    }else{
        saveArg(pThread, arg);
        vmExceptionThrow(pThread, 6);
        return VMC_RESULT_0;
    }

    vmc_inc_pc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_exit(VMThread* pThread, u8 code){
    return VMC_RESULT_3;
}

int vmc_bp(VMThread* pThread, u8 code){
    return VMC_RESULT_1;
}

//Necessary to prevent inlining
#pragma dont_inline on
void vmHalt(){
    VMThread* thread = vmState.unk40;

    vmCodePut(thread, thread->codeSection[thread->pc]);
    vmStackDump(thread);
    vmPackageDump();
    vmThreadDump();

    /* BUG: There would've likely been some code here to halt somehow, but
    it was removed for release. As is, the VM will ignore requests to halt
    and keep running. In XC3D and XCX, it does properly halt: XC3D calls
    nn::dbg::Panic (possibly through a custom panic function that got
    inlined), while XC3D just has a while(true) loop. */

#if defined(BUGFIX)
    OSReport("VM error occured, halting");

    //Loop forever
    while(true){}
#endif
}

void vmArgErr(){
    VMThread* thread = vmState.unk40;
    u8 r3 = thread->codeSection[thread->pc];

    switch(r3){
        case VMC_OP_PLUGIN:
        case VMC_OP_PLUGIN_W:
            vmPluginExceptionThrow(thread);
        break;
        default:
            vmOCExceptionThrow(thread);
        break;
    }

    vmExceptionProc(thread);
}
#pragma dont_inline off
