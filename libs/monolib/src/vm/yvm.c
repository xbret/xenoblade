#include "monolib/vm/yvm.h"
#include "monolib/vm/yvm_debug.h"
#include "monolib/vm/sb_types.h"
#include <string.h>
#include <stdbool.h>

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

static VMState vmState ALIGN(32);

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
inline void* vmPackageSearch(u8* pData){
    VMPackage* curPackage = vmState.packages;

    for(int i = 0; i < MAX_PACKAGES; i++){
        //If the current slot has a matching script data pointer, we found a match
        if(curPackage->scriptDataPtr == (u32)pData){
            return &vmState.packages[i];
        }
        curPackage++;
    }

    return NULL;
}


inline int vmPackageSearchIdx(u8* data){
    for(int i = 0; i < MAX_PACKAGES; i++){
        if(vmState.packages[i].scriptDataPtr == (u32)data){
            return i;
        }
    }

    return -1;
}

//Registers the given script data as a new package in the list of packages
inline BOOL vmPackageRegist(u8* data){
    //Check if the package has already been registered
    if (vmPackageSearch(data) != NULL) {
        return TRUE;
    }

    //If not found, look for an empty slot to register the package in
    VMPackage* curPackage = vmState.packages;
    for(int i = 0; i < MAX_PACKAGES; i++){
        //If the current slot is empty (script data pointer is null), use it to register this script
        if (curPackage->scriptDataPtr == NULL) {
            curPackage->scriptDataPtr = (u32)data;
            return TRUE;
        }
        curPackage++;
    }

    //No available slot was found
    return FALSE;
}

static inline void* getSectionDataPointer(SBSectionHeader* header){
    return (void*)((u32)header + header->offset);
}

typedef struct UnkStruct1 {
    s8 type; //0x0
    u8 unk1; //padding?
    u16 unk2;
    u32 unk4;
} UnkStruct1;

inline void vmInitDataLink(u8* data, UnkStruct1* pEntry){
    s8 cVar1 = pEntry->type;
    SBHeader* header = (SBHeader*)data;

    switch(cVar1){
        case 5:
            pEntry->unk4 = vmStringPoolGet(data, pEntry->unk4);
            break;
        case 11: {
            SBSectionHeader* sectionHeader = header->pluginImportsOfs.sectionHeaderPtr;
            void* sectionData = getSectionDataPointer(sectionHeader);
            PluginImportEntry* pluginImport = &((PluginImportEntry*)sectionData)[pEntry->unk4];
            pEntry->unk2 = pluginImport->unk0;
            pEntry->unk4 = pluginImport->unk2;
            break;
        }
        case 10:
            if (pEntry->unk2 == 0) {
                pEntry->unk2 = vmPackageSearchIdx(data);
                pEntry->unk4 = pEntry->unk4; //???
            }
            else {
                SBSectionHeader* sectionHeader = header->pluginImportsOfs.sectionHeaderPtr;
                void* sectionData = getSectionDataPointer(sectionHeader);
                FunctionImportEntry* funcImport = &((FunctionImportEntry*)sectionData)[pEntry->unk4];
                pEntry->unk2 = funcImport->unk0;
                pEntry->unk4 = funcImport->unk2;
            }
            break;
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
    if (!vmPackageRegist(pData)) {
        return FALSE;
    }

    //Check if the file has already been loaded
    if (header->vmFlags & SB_FLAG_LOADED) {
        return TRUE;
    }

    //If not, mark that this file has been loaded by setting the corresponding flag
    header->vmFlags |= SB_FLAG_LOADED;

    //TODO: maybe they used an array for all the section offsets? It would make this code cleaner

    //Convert all the offset values in the header to pointers to make accessing section data easier
    header->codeOfs.offset += (u32)pData;
    header->idPoolOfs.offset += (u32)pData;
    header->intPoolOfs.offset += (u32)pData;
    header->fixedPoolOfs.offset += (u32)pData;
    header->stringPoolOfs.offset += (u32)pData;
    header->functionPoolOfs.offset += (u32)pData;
    header->pluginImportsOfs.offset += (u32)pData;
    header->ocImportsOfs.offset += (u32)pData;
    header->functionImportsOfs.offset += (u32)pData;
    header->staticVarsOfs.offset += (u32)pData;
    header->localPoolOfs.offset += (u32)pData;
    header->sysAttrPoolOfs.offset += (u32)pData;
    header->userAttrPoolOfs.offset += (u32)pData;
    header->debugSymbolsOfs.offset += (u32)pData;

    //Decrypt the script data if encrypted
    if (header->flags & SB_FLAG_ENCRYPTED) {
        encodeScramble(pData);
    }

    //Load plugin imports
    SBSectionHeader* pluginImportsHeader = header->pluginImportsOfs.sectionHeaderPtr;
    PluginImportEntry* pluginImportPtr = (PluginImportEntry*)getSectionDataPointer(pluginImportsHeader);

    for (int i = 0; i < pluginImportsHeader->entries; i++){
        //Search for the plugin entry
        int id1 = vmIdPoolGet(pData, pluginImportPtr->unk0);
        int id2 = vmIdPoolGet(pData, pluginImportPtr->unk2);
        int index = vmPluginSearch(id1, id2);

        if (index == -1) {
            return FALSE;
        }

        pluginImportPtr->unk0 = index >> 16;
        pluginImportPtr->unk2 = index & 0xFFFF;
        pluginImportPtr++;
    }

    //Load OC imports
    SBSectionHeader* ocImportsHeader = header->ocImportsOfs.sectionHeaderPtr;
    OCImportEntry* ocImportEntryPtr = (OCImportEntry*)getSectionDataPointer(ocImportsHeader);

    for (int i = 0; i < ocImportsHeader->entries; i++){
        //Search for the OC entry
        int id = vmIdPoolGet(pData, ocImportEntryPtr->unk0);
        int index = vmOCSearch((char*)id);

        if (index == -1) {
            return FALSE;
        }

        ocImportEntryPtr->unk0 = (u16)index;
        ocImportEntryPtr++;
    }

    //Load function imports
    SBSectionHeader* funcImportsHeader = header->functionImportsOfs.sectionHeaderPtr;
    FunctionImportEntry* funcImportEntryPtr = (FunctionImportEntry*)getSectionDataPointer(funcImportsHeader);

    for (int i = 0; i < funcImportsHeader->entries; i++){
        //Search for the function entry
        int id1 = vmIdPoolGet(pData, funcImportEntryPtr->unk0);
        int id2 = vmIdPoolGet(pData, funcImportEntryPtr->unk2);
        int index = vmFuncFarSearch(id1, id2);

        if (index == -1) {
            return FALSE;
        }

        funcImportEntryPtr->unk0 = index >> 16;
        funcImportEntryPtr->unk2 = index & 0xFFFF;
        funcImportEntryPtr++;
    }

    //Load static var data
    SBSectionHeader* staticVarsHeader = header->staticVarsOfs.sectionHeaderPtr;
    StaticVarsEntry* staticVarEntryPtr = (StaticVarsEntry*)getSectionDataPointer(staticVarsHeader);

    for (int i = 0; i < staticVarsHeader->entries; i++) {
        vmInitDataLink(pData,(void*)staticVarEntryPtr);
        staticVarEntryPtr++;
    }

    //Load local pool data
    SBSectionHeader* localPoolHeader = header->localPoolOfs.sectionHeaderPtr;

    for (int i = 0; i < localPoolHeader->entries; i++) {
        int* uVar4 = (int*)vmLocalPoolGet(pData, i);
        UnkStruct1* tempPtr = (UnkStruct1*)(uVar4 + *uVar4);

        for (int j = 0; j < uVar4[1]; j++) {
            vmInitDataLink(pData, tempPtr);
            tempPtr++;
        }
    }

    int iVar14 = vmSysAtrSearch(pData, 1);
    u8* puVar2 = vmPackageSearch(pData);
    *(int *)(puVar2 + 4) = iVar14;

    return TRUE;
}

void vmUnlink(){
}

void vmThreadCreate(){
}

void vmStart(){
}

/*

void vmSchedule(){
}

void vmCodeExec(){
}

void vmDebModeGet(){}
void vmDebBpCodeGet(){}
void vmDebModeSet(){}

void vmThreadSearch(){
}

void vmThreadRemove(){
}

void vmThreadExec(){
}
*/

void vmExec(){
}

/*
void vmPluginModuleSearch(){
}
*/

BOOL vmPluginRegist(const char* name, PluginFuncData* plugin_funcs){
    return FALSE;
}

/*
void vmArgCntGet(){
}
*/

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

/*
void vmArraySet(){
}
*/

void* vmArgOCGet(VMThread* pThread, int r4){
    return NULL;
}

/*
void vmPush(){
}
*/

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
    pThread->unkC = 1;
    pThread->unk10 = pThread->unk0;
    vmExceptionProc(pThread);
}

void vmBuiltinOCRegist(){
}

void vmOCRegist(){
}

void vmOCExceptionThrow(VMThread* pThread){
    RetVal* retVal = &pThread->unk3C[pThread->unk4];
    pThread->unk14 = retVal->type;
    pThread->unk15 = retVal->unk1;
    pThread->unk16 = retVal->unk2_U32;
    pThread->unk1A = retVal->unk6;
    pThread->unkC = 2;
    pThread->unk10 = pThread->unk0;

    vmExceptionProc(pThread);
}

void* vmOCPropertyGet(VMThread* pThread){
    return &pThread->unk3C[pThread->unk4 - 1];
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

void vmStackPrevGet(){
}

RetVal* vmStackNextGet(VMThread* pThread){
    return &pThread->unk3C[pThread->unk4++];
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

    //Descramble ID section
    SBSectionHeader* sectionHeader = header->idPoolOfs.sectionHeaderPtr;
    u32 idSectionAddr = (u32)sectionHeader + sectionHeader->offset + (sectionHeader->entries * sectionHeader->length);
    int idSectionSize = header->intPoolOfs.offset - idSectionAddr;
    encodeScrambleSub((u8*)idSectionAddr, (idSectionSize/4)*4);

    //Descramble string section
    sectionHeader = header->stringPoolOfs.sectionHeaderPtr;
    u32 strSectionAddr = (u32)sectionHeader + sectionHeader->offset + (sectionHeader->entries * sectionHeader->length);
    int strSectionSize = header->functionPoolOfs.offset - strSectionAddr;
    encodeScrambleSub((u8*)strSectionAddr, (strSectionSize/4)*4);
}

inline u32 vmDataGet(VMThread* pThread, int startIndex, int length){
    //param2 -> r4, param3 -> r6
    int i = 1;
    int index = startIndex;
    u32 result = pThread->unk34[index];

    while(i < length){
        result <<= 8;
        result |= pThread->unk34[++index];
        i++;
    }

    return result;
}

void vmExceptionProc(VMThread* pThread){
    int temp1 = pThread->unk10;
    vmDataGet(pThread, temp1 + 1, vmcOpcodes[pThread->unk34[pThread->unk10]].paramSize);
    pThread->unk0 = pThread->unk10;
    vmHalt();
}

void vmExceptionThrow(VMThread* pThread, int r4){
    pThread->unkC = r4;
    pThread->unk10 = pThread->unk0;
    vmExceptionProc(pThread);
}


inline int vmSysAtrPoolGet(u8* data, int no){
    SBHeader* header = (SBHeader*)data;
    SBSectionHeader* sectionHeader = header->sysAttrPoolOfs.sectionHeaderPtr;
    u32 temp1 = sectionHeader->offset;
    u32 temp2 = sectionHeader->length * no;

    void* entryPtr = (void*)((int)sectionHeader + temp2 + temp1);

    u16 uVar3 = *(u16 *)entryPtr;
    return uVar3;
}

inline int vmIdPoolGet(u8* data, int no){
    SBHeader* header = (SBHeader*)data;
    SBSectionHeader* idPoolSectionHeader = header->idPoolOfs.sectionHeaderPtr;
    u32 iVar23 = idPoolSectionHeader->offset;
    u32 iVar22 = idPoolSectionHeader->length * no;
    u32 result;

    void* idEntryPtr = (void*)((u32)idPoolSectionHeader + iVar22 + iVar23);

    if (idPoolSectionHeader->length == 2) {
        result = *(u16*)idEntryPtr;
    }
    else {
        result = *(u32*)idEntryPtr;
    }

    return result;
}

inline void vmIntPoolGet(){
}

inline void vmFixedPoolGet(){
}

inline int vmStringPoolGet(u8* data, int no){
    SBHeader* header = (SBHeader*)data;
    SBSectionHeader* stringPoolHeader = header->stringPoolOfs.sectionHeaderPtr;
    u32 iVar22 = stringPoolHeader->offset;
    u32 iVar14 = stringPoolHeader->length * no;
    u32 result;

    void* stringPoolEntryPtr = (void*)((u32)stringPoolHeader + iVar14 + iVar22);

    if (stringPoolHeader->length == 2) {
        result = *(u16*)stringPoolEntryPtr;
    }
    else {
        result = *(u32*)stringPoolEntryPtr;
    }

    return result;
}


inline int vmLocalPoolGet(u8* data, int no){
    SBHeader* header = (SBHeader*)data;
    SBSectionHeader* stringPoolHeader = header->localPoolOfs.sectionHeaderPtr;
    u32 iVar22 = stringPoolHeader->offset;
    u32 iVar14 = stringPoolHeader->length * no;
    u32 result;

    void* stringPoolEntryPtr = (void*)((u32)stringPoolHeader + iVar14 + iVar22);

    if (stringPoolHeader->length == 2) {
        result = *(u16*)stringPoolEntryPtr;
    }
    else {
        result = *(u32*)stringPoolEntryPtr;
    }

    return result;
}

inline int vmFunctionPoolGet(){
}

int vmSysAtrSearch(u8* data, int param_2){
    int uVar3 = vmSysAtrPoolGet(data, param_2);
    if (uVar3 == -1) return 0;
    else return vmIdPoolGet(data, uVar3);
}

inline int vmPluginSearch(int param1, int param2){
    VMState* state = &vmState;

    for(int i = 0; i < MAX_PLUGINS; i++){
        if (state->plugins[i].unk0 != NULL && strcmp(state->plugins[i].unk0, (char*)param1) == 0) {
            int j = 0;
            char** ppcVar19 = (char**)state->plugins[i].unk4;
            char** ppcVar20 = ppcVar19;

            while(*ppcVar19 != NULL) {
                if (strcmp(*ppcVar20,(char*)param2) == 0) {
                    return (i << 16) | j;
                }

                ppcVar20 += 2;
                ppcVar19 += 2;
                j++;
            }
        }
    }

    return -1;
}

inline int vmOCSearch(char* name){
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

int vmFuncFarSearch(int r3, int r4){
    return r3 + r4;
}

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

static void getArray(){
}

int vmc_ld_ar(VMThread* pThread, u8 opcodeIndex){
    return VMC_RESULT_0;
}

static void setArray(){
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
