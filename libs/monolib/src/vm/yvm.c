#include "monolib/vm/yvm.h"
#include "monolib/vm/yvm_debug.h"
#include "monolib/vm/yvm_util.h"
#include "monolib/vm/yvm_opcode_data.h"
#include <string.h>
#include <stdbool.h>
#include <revolution/OS.h>

//TODO: this entire file still needs major cleanup

//Opcode data
VMCOpcode vmcOpcodes[VMC_MAX] = {
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

//VM type names
const char* vmTypeNames[VM_MAX_TYPE] = {
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

inline void vmInitDataLink(SBHeader* data, VMArg* pEntry){
    switch(pEntry->type){
        case VM_TYPE_STRING: {
            pEntry->value.pointerVal = vmStringPoolGet(data, pEntry->value.uintVal);
            break;
        }
        case VM_TYPE_PLUGIN: {
            void* sectionData = getSectionEntriesPtr(data->pluginImportsOfs);
            PluginImportEntry* pluginImport = &((PluginImportEntry*)sectionData)[pEntry->value.uintVal];
            pEntry->unk2 = pluginImport->unk0;
            pEntry->value.uintVal = pluginImport->unk2;
            break;
        }
        case VM_TYPE_FUNCTION: {
            int index = pEntry->value.uintVal;
            if (pEntry->unk2 == 0) {
                pEntry->unk2 = vmPackageSearchIdx(data);
                pEntry->value.uintVal = index; //???
            } else {
                void* sectionData = getSectionEntriesPtr(data->functionImportsOfs);
                FunctionImportEntry* funcImport = &((FunctionImportEntry*)sectionData)[index];
                pEntry->unk2 = funcImport->unk0;
                pEntry->value.uintVal = funcImport->unk2;
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
    adjustSectionPtr(pData, &header->sysAtrPoolOfs);
    adjustSectionPtr(pData, &header->usrAtrPoolOfs);
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
    VMArg* staticVarEntryPtr = (VMArg*)getSectionEntriesPtr(header->staticVarsOfs);

    for (u32 i = 0; i < header->staticVarsOfs->entries; i++) {
        vmInitDataLink(header,staticVarEntryPtr);
        staticVarEntryPtr++;
    }

    //Load local pool data
    for (u32 i = 0; i < header->localPoolOfs->entries; i++) {
        LocalPoolEntry* uVar4 = (LocalPoolEntry*)vmLocalPoolGet(header, i);
        VMArg* tempPtr = (VMArg*)getRelativePtr(uVar4);

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

/* Updates the thread pointer list to have pointers to currently active threads while maintaining
the order from the main thread list. */
inline void vmSchedule(){
    int total = 0;

    //Search for non empty thread slots, and save pointers to each in the pointer list in order
    for(int i = 0; i < MAX_THREADS; i++){
        if (vmState.threads[i].scriptData != NULL) {
            vmState.unk48[total++] = &vmState.threads[i];
        }
    }

    //Set all remaining entries to null
    for(int i = total; i < MAX_THREADS; i++){
        vmState.unk48[i] = NULL;
    }

}

//Executes a single instruction on the given thread.
inline int vmCodeExec(VMThread* pThread){
    //Set this thread as the active thread
    vmState.activeThread = pThread;

    int pc = pThread->reg.pc;
    u8 code = pThread->codeData[pc];
    //Call the corresponding opcode handler function
    OpcodeFunc func = vmcOpcodeFuncs[pThread->codeData[pc]];
    int result = func(pThread, code);

    if (result == VMC_RESULT_1) {
        pThread->unk48 = 1;
        pThread->reg.pc = pc;
    }else {
        pThread->unk48 = 0;
        vmWkIdxSet(pThread, 0);
    }

    if (pThread->scriptData == NULL) {
      result = VMC_RESULT_3;
    }

    return result;
}

//Finds a thread based on its ID.
VMThread* vmThreadSearch(u32 id){
    for(int i = 0; i < MAX_THREADS; i++){
        if (vmState.threads[i].scriptData != NULL && id == vmState.threads[i].id) {
            return &vmState.threads[i];
        }
    }

    return NULL;
}

//Removes a thread based on its ID.
void vmThreadRemove(u32 id){
    VMThread* threadToRemove = vmThreadSearch(id);

    if (threadToRemove != NULL) {
        threadToRemove->scriptData = NULL;
    }
}

inline void vmThreadExec(VMThread* pThread){
    int result = 0;

    do{
        result = vmCodeExec(pThread);
    }while(result == VMC_RESULT_0);

    if(result == VMC_RESULT_3) vmThreadRemove(pThread->id); //Search for the thread we already have... :)
}

inline bool someInline(VMThread* pThread){
    return (pThread->unk48 & 0x80000000) == 0;
}

void vmExec(){
    //Update the thread pointer list
    vmSchedule();

    //Clear the active thread pointer
    vmState.activeThread = NULL;

    //Update all active threads using the updated pointer list
    for(int i = 0; i < MAX_THREADS; i++){
        VMThread* thread = vmState.unk48[i];

        if (thread != NULL && thread->scriptData != NULL && someInline(thread)) {
            vmThreadExec(thread);
        }
    }
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
            vmState.plugins[i].unk4 = plugin_funcs;
            return TRUE;
        }
    }

    return FALSE;
}

/* TODO: These two functions are accessing the value at offset 4 in the entry at index sp - 1,
but doing it normally doesn't match. There has to be a better way, right?? */

inline u8 vmArgCntGet(VMThread* pThread){
    return ((u32*)&pThread->stack[pThread->reg.sp])[-1]; //???
}

//Not official
inline void vmArgCntSet(VMThread* pThread, u32 value){
    ((u32*)&pThread->stack[pThread->reg.sp])[-1] = value; //???
}

VMArg* vmArgPtrGet(VMThread* pThread, int r4){
    if(vmArgCntGet(pThread) < r4 || r4 == 0){
        vmHalt();
    }

    return (VMArg*)&pThread->stack[pThread->reg.sp - 1 - r4];
}

BOOL vmArgOmitChk(VMThread* pThread, int r4){
    int count = vmArgCntGet(pThread);

    if(r4 == 0){
        vmHalt();
    }

    if(count < r4){
        return TRUE;
    }

    return pThread->stack[(pThread->reg.sp - 1) - r4].type == VM_TYPE_NIL;
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

    return (pArg->unk2 << 16) | (pArg->value.uintVal & 0xFFFF);
}

void* vmArgArrayGet(u32 index, VMArg* pArg){
    int type = pArg->type;

    if(type != VM_TYPE_ARRAY){
        vmArgErr();
    }

    return pArg;
}

static BOOL getArray(VMThread* pThread, VMArg* r4, int r5, void** pArray);
static BOOL setArray(VMThread* pThread, VMArg* r4, int r5, VMArg* value);

void* vmArrayGet(VMThread* pThread, VMArg* r4, int r5){
    void* array;
    if(!getArray(pThread, r4, r5, &array)) vmHalt();
    return array;
}

void vmArraySet(VMThread* pThread, VMArg* r4, int r5, VMArg* value){
    if(!setArray(pThread, r4, r5, value)) vmHalt();
}

void* vmArgOCGet(u32 index, VMArg* pArg){
    int type = pArg->type;

    if(type != VM_TYPE_OC){
        vmArgErr();
    }

    return pArg;
}

void vmPush(VMThread* pThread, VMArg* pArg){
    VMArg* r3 = &pThread->stack[pThread->reg.sp++];
    copyArg(r3, pArg);
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
    vmExceptionThrow(pThread, VM_EXCEPTION_PLUGIN);
}

void vmBuiltinOCRegist(OCData* pOC){
    if(pOC->selectors != NULL){
        //Set the name length for each entry
        for(OCSelector* it = pOC->selectors; it->name != NULL; it++){
            it->nameLength = strlen(it->name);
        }
    }

    vmState.builtinOC = pOC;
}

BOOL vmOCRegist(OCData* pOC){
    u32 index = vmOCSearch(pOC->name);

    if(index != -1) return TRUE;

    for(int i = 0; i < MAX_OCS; i++){
        if(vmState.ocs[i].unk0 == NULL){
            vmState.ocs[i].unk0 = pOC;

            if(pOC->properties != NULL){
                //Set the name length for each entry
                for(OCProperty* it = pOC->properties; it->name != NULL; it++){
                    it->nameLength = strlen(it->name);
                }
            }

            if(pOC->selectors != NULL){
                //Set the name length for each entry
                for(OCSelector* it = pOC->selectors; it->name != NULL; it++){
                    it->nameLength = strlen(it->name);
                }
            }

            return TRUE;
        }
    }

    return FALSE;
}

void vmOCExceptionThrow(VMThread* pThread){
    VMArg* arg = &pThread->stack[pThread->reg.sp];
    saveArg(pThread, arg, 0);
    vmExceptionThrow(pThread, VM_EXCEPTION_OC);
}

void* vmOCPropertyGet(VMThread* pThread){
    return &pThread->stack[pThread->reg.sp - 1];
}

/*
void vmThreadNumGet(){
}
*/

void vmThreadSleepAll(u8* pScriptData){
    for(int i = 0; i < MAX_THREADS; i++){
        if(vmState.threads[i].scriptData == (SBHeader*)pScriptData){
            setThreadSleepFlag(&vmState.threads[i], TRUE);
        }
    }
}

//unused
void vmThreadWakeupAll(u8* pScriptData){
    for(int i = 0; i < MAX_THREADS; i++){
        if(vmState.threads[i].scriptData == (SBHeader*)pScriptData){
            setThreadSleepFlag(&vmState.threads[i], FALSE);
        }
    }
}

//unused
BOOL vmThreadIsFinish(u8* pScriptData){
    for(int i = 0; i < MAX_THREADS; i++){
        if(vmState.threads[i].scriptData == (SBHeader*)pScriptData){
            return FALSE;
        }
    }

    return TRUE;
}

BOOL vmThreadGetOC(VMThread* pThread, int r4, u32* outId){
#pragma unused(pThread)

    int packageIndex = r4 >> 16;
    int otherIndex = r4 & 0xFFFF;

    VMThread* thread = vmThreadCreate(vmState.packages[packageIndex].scriptDataPtr, otherIndex);
    if(thread != NULL){
        setThreadSleepFlag(thread, TRUE);
        *outId = thread->id;
        return TRUE;
    }

    return FALSE;
}

void vmThreadStart(VMThread* pThread, u32 r4){
    VMThread* thread = vmThreadSearch(r4);
    u8 argCount = vmArgCntGet(pThread);
    u32 total = argCount + 1;

    memcpy(&thread->stack[thread->reg.sp], &pThread->stack[pThread->reg.sp - total], total * sizeof(VMArg));

    thread->reg.sp += total;
    vmArgCntSet(thread, argCount);
    vmc_call_entry(thread, thread->unk28, thread->unk2C, 0);

    setThreadSleepFlag(thread, FALSE);
}

BOOL vmThreadEnd(u32 r3){
    VMThread* thread = vmThreadSearch(r3);

    if(thread != NULL){
        thread->scriptData = NULL;
        return TRUE;
    }

    return FALSE;
}

BOOL vmThreadIsAlive(u32 r3){
    if(vmThreadSearch(r3) != NULL) return TRUE;
    return FALSE;
}

BOOL vmThreadSleep(u32 r3){
    VMThread* thread = vmThreadSearch(r3);
    if(thread != NULL){
        setThreadSleepFlag(thread, TRUE);
        return TRUE;
    }

    return FALSE;
}

BOOL vmThreadWakeup(u32 r3){
    VMThread* thread = vmThreadSearch(r3);
    if(thread != NULL){
        setThreadSleepFlag(thread, FALSE);
        return TRUE;
    }

    return FALSE;
}

/* NOTE: In XCX, both of these functions have bounds checks for the stack pointer, but they aren't present here.
It's possible they did exist, but were debug only. */

VMArg* vmStackPrevGet(VMThread* pThread){
    return &pThread->stack[--pThread->reg.sp];
}

VMArg* vmStackNextGet(VMThread* pThread){
    return &pThread->stack[pThread->reg.sp++];
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

u32 vmDataGet(VMThread* pThread, int startIndex, int length){
    //BUG: This code assumes the length is at least 1. Why??
    int i = 1;
    int index = startIndex;
    u32 result = pThread->codeData[index];

    while(i < length){
        result <<= 8;
        result |= pThread->codeData[++index];
        i++;
    }

    return result;
}

//TODO: how can this be set to not be inlined while letting it inline functions? DECOMP_DONT_INLINE doesn't
//work sadly...
#pragma dont_inline on
void vmExceptionProc(VMThread* pThread){
    int temp1 = pThread->reg.unk10;
    vmDataGet(pThread, temp1 + 1, vmcOpcodes[pThread->codeData[pThread->reg.unk10]].paramSize);
    pThread->reg.pc = pThread->reg.unk10;
    vmHalt();
}
#pragma dont_inline off

inline void vmExceptionThrow(VMThread* pThread, u32 exception){
    pThread->reg.exception = exception;
    pThread->reg.unk10 = pThread->reg.pc;
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

inline void* poolEntryOfsGet(SBSectionHeader* sectionHeader, u32 no){
    u8* entriesPtr = (u8*)sectionHeader + sectionHeader->entriesOffset;
    u32* uintPtr = (u32*)entriesPtr;
    return &uintPtr[no];
}

inline u32 poolEntryGetU32(SBSectionHeader* sectionHeader, u32 no){
    u8* entriesPtr = (u8*)sectionHeader + sectionHeader->entriesOffset;
    u32* uintPtr = (u32*)entriesPtr;
    return uintPtr[no];
}

inline const char* vmIdPoolGet(SBHeader* data, u32 no){
    return poolEntryGet(data->idPoolOfs, no);
}

inline int vmIntPoolGet(SBHeader* data, u32 no){
    return poolEntryGetU32(data->intPoolOfs, no);
}

inline int vmFixedPoolGet(SBHeader* data, u32 no){
    return poolEntryGetU32(data->fixedPoolOfs, no);
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

inline u16* vmSysAtrPoolGet(SBHeader* data, u32 no){
    return poolEntryOfsGet(data->sysAtrPoolOfs, no);
}

//unused
inline u16* vmUsrAtrPoolGet(SBHeader* data, u32 no){
    return poolEntryOfsGet(data->usrAtrPoolOfs, no);
}

u32 vmSysAtrSearch(SBHeader* data, u32 no){
    u16 uVar3 = *vmSysAtrPoolGet(data, no);
    if (uVar3 == 0xFFFF) return NULL;
    else return (u32)vmIdPoolGet(data, uVar3);
}

inline u32 vmPluginSearch(const char* param1, const char* param2){
    for(int i = 0; i < MAX_PLUGINS; i++){
        const char* name = vmState.plugins[i].unk0;
        if (name != NULL && strcmp(name, param1) == 0) {
            PluginFuncData* struct1 = vmState.plugins[i].unk4;
            PluginFuncData* struct2 = vmState.plugins[i].unk4;

            for(int j = 0; struct1->name != NULL; j++) {
                if (strcmp(struct2->name, param2) == 0) {
                    return (i << 16) | j;
                }

                struct2++;
                struct1++;
            }
        }
    }

    return -1;
}

u32 vmOCSearch(const char* name){
    VMState* state = &vmState;

    for(int i = 0; i < MAX_OCS; i++) {
        OCData* data = state->ocs[i].unk0;
        if (data != NULL && strcmp(data->name, name) == 0){
            return i;
        }
    }

    return -1;
}

u32 vmPropertySearch(OCData* pOC, const char* pName){
    int length = strlen(pName);

    if (pOC->properties != NULL) {
        OCProperty* it = pOC->properties;

        //Why the extra pointer iterator variable?
        for(u32 i = 0; it->name != NULL; it++, i++) {
            OCProperty* entry = &pOC->properties[i];

            if (length == entry->nameLength && strcmp(pName, entry->name) == 0) {
                return i;
            }
        }
    }

    return -1;
}

u32 vmSelectorSearch(OCData* pOC, const char* pName){
    int length = strlen(pName);

    if (pOC->selectors != NULL) {
        OCSelector* it = pOC->selectors;

        //Why the extra pointer iterator variable?
        for(u32 i = 0; it->name != NULL; it++, i++) {
            OCSelector* entry = &pOC->selectors[i];

            if (length == entry->nameLength && strcmp(pName, entry->name) == 0) {
                return i;
            }
        }
    }

    return -1;
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
    for(int i = 0; i < MAX_THREADS; i++){
        if(vmState.threads[i].scriptData == NULL){
            //Initialize the thread slot
            VMThread* thread = &vmState.threads[i];

            //Add the pointer to this thread in the first empty slot in the pointer list
            for(int j = 0; j < MAX_THREADS; j++) {
                if (vmState.unk48[j] == NULL) {
                    vmState.unk48[j] = thread;
                    break;
                }
            }

            //Initialize registers
            thread->reg.pc = ((FunctionPoolEntry*)getSectionEntriesPtr(param1->functionPoolOfs))[param2].unkC;
            thread->reg.sp = 0;
            thread->reg.unk8 = 0;
            thread->reg.exception = VM_EXCEPTION_NONE;
            thread->reg.unk10 = 0;
        
            int uVar2 = vmPackageSearchIdx(param1);

            thread->unk24 = uVar2;
            thread->unk28 = param2;
            thread->unk2C = uVar2;
            thread->scriptData = param1;
            thread->codeData = getSectionEntriesPtr(param1->codeOfs);
            thread->staticVarsEntries = getSectionEntriesPtr(param1->staticVarsOfs);
            thread->stack = vmState.threadStacks[i];
            thread->unk40 = 0x80; //0xC8
            thread->id = vmState.nextThreadId++;
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

inline int getOpcodeParam(VMThread* pThread, u8 code){
    int pc = pThread->reg.pc;
    return vmDataGet(pThread, pc + 1, vmcOpcodes[code].paramSize);
}

inline void incrementPc(VMThread* pThread, u8 code){
    //Increment PC by the number of bytes for the parameter plus 1 for the opcode byte
    pThread->reg.pc += vmcOpcodes[code].paramSize + 1;
}


//Opcode functions

int vmc_nop(VMThread* pThread, u8 code){
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_const(VMThread* pThread, u8 code){
    VMArg* r7 = vmStackNextGet(pThread);
    r7->type = VM_TYPE_INT;
    int index = code - VMC_OP_CONST_0;
    r7->value.intVal = index;
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_const_i(VMThread* pThread, u8 code){
    int val = getOpcodeParam(pThread, code);
    VMArg* arg = vmStackNextGet(pThread);
    arg->value.intVal = val;
    arg->type = VM_TYPE_INT;

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_pool_int(VMThread* pThread, u8 code){
    int no = getOpcodeParam(pThread, code);
    int val = vmIntPoolGet((SBHeader*)pThread->scriptData, no);

    VMArg* arg = vmStackNextGet(pThread);
    arg->value.intVal = val;
    arg->type = VM_TYPE_INT;

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_pool_fixed(VMThread* pThread, u8 code){
    int no = getOpcodeParam(pThread, code);
    int val = vmFixedPoolGet((SBHeader*)pThread->scriptData, no);

    VMArg* arg = vmStackNextGet(pThread);
    arg->value.intVal = val;
    arg->type = VM_TYPE_FIXED;

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_pool_string(VMThread* pThread, u8 code){
    int no = getOpcodeParam(pThread, code);
    const char* val = vmStringPoolGet((SBHeader*)pThread->scriptData, no);

    VMArg* arg = vmStackNextGet(pThread);
    arg->value.pointerVal = (void*)val;
    arg->unk2 = strlen(val);
    arg->type = VM_TYPE_INT;

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld(VMThread* pThread, u8 code){
    int val = getOpcodeParam(pThread, code);
    vmPush(pThread, &pThread->stack[pThread->reg.unk8 + val]);

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st(VMThread* pThread, u8 code){
    int val = getOpcodeParam(pThread, code);
    copyArg(&pThread->stack[pThread->reg.unk8 + val], vmStackPrevGet(pThread));

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_arg(VMThread* pThread, u8 code){
    int val = getOpcodeParam(pThread, code);
    vmPush(pThread, &pThread->stack[pThread->reg.unk8 - (val + 4)]);

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_arg(VMThread* pThread, u8 code){
    int val = getOpcodeParam(pThread, code);
    copyArg(&pThread->stack[pThread->reg.unk8 - (val + 4)], vmStackPrevGet(pThread));

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_arg_omit(VMThread* pThread, u8 code){
    int val = getOpcodeParam(pThread, code);
    int temp = val + 4;
    temp = -temp;
    int index = pThread->reg.unk8 + temp;
    VMArg* arg1 = &pThread->stack[index];
    VMArg* arg2 = vmStackPrevGet(pThread);
    
    if(arg1->type == VM_TYPE_NIL){
        copyArg(arg1, arg2);
    }

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_const(VMThread* pThread, u8 code){
    int offset = code - VMC_OP_LD_0;
    vmPush(pThread, &pThread->stack[pThread->reg.unk8 + offset]);
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_const(VMThread* pThread, u8 code){
    int offset = code - VMC_OP_ST_0;
    copyArg(&pThread->stack[pThread->reg.unk8 + offset], vmStackPrevGet(pThread));

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_arg_const(VMThread* pThread, u8 code){
    int offset = code - VMC_OP_LD_ARG_0 + 4;
    offset = -offset; //Won't match unless it's like this for some dumb reason
    vmPush(pThread, &pThread->stack[pThread->reg.unk8 + offset]);

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_arg_const(VMThread* pThread, u8 code){
    int offset = code - VMC_OP_ST_ARG_0 + 4;
    offset = -offset; //Won't match unless it's like this for some dumb reason
    copyArg(&pThread->stack[pThread->reg.unk8 + offset], vmStackPrevGet(pThread));

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_static(VMThread* pThread, u8 code){
    int iVar1 = getOpcodeParam(pThread, code);
    vmPush(pThread, (VMArg*)&pThread->staticVarsEntries[iVar1]);

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_st_static(VMThread* pThread, u8 code){
    int iVar1 = getOpcodeParam(pThread, code);
    copyArg(&pThread->stack[pThread->reg.unk8 + iVar1], vmStackPrevGet(pThread));

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

static BOOL getArray(VMThread* pThread, VMArg* r4, int r5, void** pArray){
    if(r4->type != VM_TYPE_ARRAY){
        saveArg(pThread, r4, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_INVALID_ARRAY);
        return FALSE;
    }

    if(r5 >= r4->unk2){
        saveArg(pThread, r4, 0);
        pThread->unk14[1].type = VM_TYPE_INT;
        pThread->unk14[1].value.intVal = r5;
        vmExceptionThrow(pThread, VM_EXCEPTION_INDEX_OOB);
        return FALSE;
    }

    u32 r4_1 = r4->value.uintVal;

    if(r4_1 & 0x80000000){
        r4_1 &= 0x7FFFFFFF;
        *pArray = &pThread->stack[r4_1 + r5];
    }else{
        *pArray = &pThread->staticVarsEntries[r4_1 + r5];
    }

    return TRUE;
}

int vmc_ld_ar(VMThread* pThread, u8 code){
    VMArg* iVar1 = vmStackPrevGet(pThread);
    VMArg* uVar2 = vmStackPrevGet(pThread);
    VMArg* arg;

    if(!getArray(pThread,uVar2, iVar1->value.uintVal, (void**)&arg)){
        return VMC_RESULT_0;
    }

    vmPush(pThread, arg);
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

static BOOL setArray(VMThread* pThread, VMArg* r4, int r5, VMArg* value){
    if(r4->type != VM_TYPE_ARRAY){
        saveArg(pThread, r4, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_INVALID_ARRAY);
        return FALSE;
    }

    if(r5 >= r4->unk2){
        saveArg(pThread, r4, 0);
        pThread->unk14[1].type = VM_TYPE_INT;
        pThread->unk14[1].value.intVal = r5;
        vmExceptionThrow(pThread, VM_EXCEPTION_INDEX_OOB);
        return FALSE;
    }

    u32 r4_1 = r4->value.uintVal;

    if(r4_1 & 0x80000000){
        r4_1 &= 0x7FFFFFFF;

        VMArg* arg = &pThread->stack[r4_1 + r5];
        if(arg->type == 6){
            saveArg(pThread, r4, 0);
            pThread->unk14[1].type = VM_TYPE_INT;
            pThread->unk14[1].value.intVal = r5;
            vmExceptionThrow(pThread, VM_EXCEPTION_INDEX_OOB);
            return FALSE;
        }

        copyArg(arg, value);

    }else{
        VMArg* arg = (VMArg*)&pThread->staticVarsEntries[r4_1 + r5];
        if(arg->type == 6){
            saveArg(pThread, r4, 0);
            pThread->unk14[1].type = VM_TYPE_INT;
            pThread->unk14[1].value.intVal = r5;
            vmExceptionThrow(pThread, VM_EXCEPTION_INDEX_OOB);
            return FALSE;
        }

        copyArg(arg, value);
    }

    return TRUE;
}

int vmc_st_ar(VMThread* pThread, u8 code){
    VMArg* iVar1 = vmStackPrevGet(pThread);
    VMArg* uVar2 = vmStackPrevGet(pThread);
    VMArg* uVar3 = vmStackPrevGet(pThread);
    
    if (!setArray(pThread, uVar2, iVar1->value.uintVal, uVar3)) {
        return VMC_RESULT_0;
    }

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_nil(VMThread* pThread, u8 code){
    int sp = pThread->reg.sp++;
    pThread->stack[sp].type = VM_TYPE_NIL;
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_true(VMThread* pThread, u8 code){
    int sp = pThread->reg.sp++;
    pThread->stack[sp].type = VM_TYPE_TRUE;
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_false(VMThread* pThread, u8 code){
    int sp = pThread->reg.sp++;
    pThread->stack[sp].type = VM_TYPE_FALSE;
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_func(VMThread* pThread, u8 code){
    int param = getOpcodeParam(pThread, code);
    VMArg* puVar3 = vmStackNextGet(pThread);
    puVar3->type = VM_TYPE_FUNCTION;
    s16 sVar1 = pThread->unk2C;
    puVar3->value.intVal = param;
    puVar3->unk2 = sVar1;

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_plugin(VMThread* pThread, u8 code){
    SBHeader* header = (SBHeader*)pThread->scriptData;
    SBSectionHeader* pluginImports = header->pluginImportsOfs;
    int val = getOpcodeParam(pThread, code);
    VMArg* puVar3 = vmStackNextGet(pThread);
    puVar3->type = VM_TYPE_PLUGIN;
    PluginImportEntry* entry = poolEntryOfsGet(pluginImports, val);
    puVar3->unk2 = entry->unk0;
    puVar3->value.intVal = entry->unk2;

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_ld_func_far(VMThread* pThread, u8 code){
    SBHeader* header = (SBHeader*)pThread->scriptData;
    SBSectionHeader* funcImports = header->functionImportsOfs;
    int uVar2 = getOpcodeParam(pThread, code);
    VMArg* puVar3 = vmStackNextGet(pThread);
    puVar3->type = VM_TYPE_FUNCTION;
    FunctionImportEntry* entry = poolEntryOfsGet(funcImports, uVar2);
    puVar3->unk2 = entry->unk0;
    puVar3->value.intVal = entry->unk2;

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_minus(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->stack[pThread->reg.sp + -1];
    int argType = arg->type;

    //Why not merge the two cases?
    switch(argType){
        case VM_TYPE_INT:
            arg->value.intVal = -arg->value.intVal;
            break;
        case VM_TYPE_FIXED:
            arg->value.intVal = -arg->value.intVal;
            break;
        default:
            saveArg(pThread, arg, 0);
            vmExceptionThrow(pThread, VM_EXCEPTION_MATH_INVALID_ARG);
            return VMC_RESULT_0;
    }

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_not(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->stack[pThread->reg.sp - 1];

    if((int)arg->type == VM_TYPE_INT){
        arg->value.intVal = ~arg->value.intVal;
    }else{
        saveArg(pThread, arg, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_MATH_INVALID_ARG);
        return VMC_RESULT_0;
    }

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_l_not(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->stack[pThread->reg.sp - 1];
    
    switch(arg->type){
        case VM_TYPE_TRUE:
            arg->type = VM_TYPE_FALSE;
            break;
        case VM_TYPE_FALSE:
            arg->type = VM_TYPE_TRUE;
            break;
        default:
            saveArg(pThread, arg, 0);
            vmExceptionThrow(pThread, VM_EXCEPTION_MATH_INVALID_ARG);
            return VMC_RESULT_0;
    }

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

inline BOOL vmc_op_nil(int code, VMArg* pArg1, VMArg* pArg2, VMArg* pResult){
    int type1 = pArg1->type;
    int type2 = pArg2->type;
    BOOL result = FALSE;

    switch(code){
        case VMC_OP_EQ:
            if(type1 == type2) result = TRUE;
            break;
        case VMC_OP_NE:
            if(type1 != type2) result = TRUE;
            break;
        default:
            return FALSE;
    }

    //if(!result) pResult->type = VM_TYPE_FALSE;
    //else pResult->type = VM_TYPE_TRUE;
    //TODO: please say i dont have to do this, if i do i'll be angy
    pResult->type = !result + VM_TYPE_TRUE;

    return TRUE;
}

BOOL vmc_op_bool(int code, VMArg* pArg1, VMArg* pArg2, VMArg* pResult){
    int type1 = pArg1->type;
    int type2 = pArg2->type;
    BOOL result = FALSE;

    switch(code){
        case VMC_OP_EQ:
            if(type1 == type2) result = TRUE;
            break;
        case VMC_OP_NE:
            if(type1 != type2) result = TRUE;
            break;
        case VMC_OP_L_OR:
            if(type1 == VM_TYPE_TRUE || type2 == VM_TYPE_TRUE) result = TRUE;
            break;
        case VMC_OP_L_AND:
            if(type1 == VM_TYPE_TRUE && type2 == VM_TYPE_TRUE) result = TRUE;
            break;
        default:
            return FALSE;
    }

    if(!result) pResult->type = VM_TYPE_FALSE;
    else pResult->type = VM_TYPE_TRUE;

    return TRUE;
}

BOOL vmc_op_int(int code, VMArg* pArg1, VMArg* pArg2, VMArg* pResult){
    int arg1 = pArg1->value.intVal;
    int arg2 = pArg2->value.intVal;

    if(code < VMC_OP_EQ){
        //Arithmetic operations
        int result;
        
        switch((int)code){
            case VMC_OP_ADD:
                result = arg1 + arg2;
                break;
            case VMC_OP_SUB:
                result = arg1 - arg2;
                break;
            case VMC_OP_MUL:
                result = arg1*arg2;
                break;
            case VMC_OP_DIV:
                //Check for division by zero
                if(arg2 == 0) return FALSE;
                result = arg1/arg2;
                break;
            case VMC_OP_MOD:
                if(arg2 == 0) return FALSE;
                result = arg1 % arg2;
                break;
            case VMC_OP_OR:
                result = arg1 | arg2;
                break;
            case VMC_OP_AND:
                result = arg1 & arg2;
                break;
            case VMC_OP_R_SHIFT:
                result = arg1 >> arg2;
                break;
            case VMC_OP_L_SHIFT:
                result = arg1 << arg2;
                break;
            default:
                return FALSE;
        }

        pResult->type = VM_TYPE_INT;
        pResult->value.intVal = result;
    }else{
        //Logic operations
        BOOL result = FALSE;

        switch((int)code){
            case VMC_OP_EQ:
                if(arg1 == arg2) result = TRUE;
                break;
            case VMC_OP_NE:
                if(arg1 != arg2) result = TRUE;
                break;
            case VMC_OP_GT:
                if(arg1 > arg2) result = TRUE;
                break;
            case VMC_OP_LT:
                if(arg1 < arg2) result = TRUE;
                break;
            case VMC_OP_GE:
                if(arg1 >= arg2) result = TRUE;
                break;
            case VMC_OP_LE:
                if(arg1 <= arg2) result = TRUE;
                break;
            default:
                return FALSE;
        }

        if(!result) pResult->type = VM_TYPE_FALSE;
        else pResult->type = VM_TYPE_TRUE;
    }

    return TRUE;
}

BOOL vmc_op_fixed(int code, VMArg* pArg1, VMArg* pArg2, VMArg* pResult){
    int arg1 = pArg1->value.intVal;
    int arg2 = pArg2->value.intVal;

    if(code < VMC_OP_EQ){
        //Arithmetic operations
        int result;
        
        switch((int)code){
            case VMC_OP_ADD:
                result = arg1 + arg2;
                break;
            case VMC_OP_SUB:
                result = arg1 - arg2;
                break;
            case VMC_OP_MUL:
                result = arg1*arg2;
                result = FIXED_TO_INT(result);
                break;
            case VMC_OP_DIV:
                //Check for division by zero
                if(arg2 == 0) return FALSE;
                result = INT_TO_FIXED(arg1)/arg2;
                break;
            default:
                return FALSE;
        }

        pResult->type = VM_TYPE_FIXED;
        pResult->value.intVal = result;
    }else{
        //Logic operations
        BOOL result = FALSE;

        switch((int)code){
            case VMC_OP_EQ:
                if(arg1 == arg2) result = TRUE;
                break;
            case VMC_OP_NE:
                if(arg1 != arg2) result = TRUE;
                //BUG: Someone forgot to add break here! (thankfully still works anyway since arg1 > arg2 can't be true if arg1 == arg2)
            #if defined(BUGFIX)
                break;
            #endif
            case VMC_OP_GT:
                if(arg1 > arg2) result = TRUE;
                break;
            case VMC_OP_LT:
                if(arg1 < arg2) result = TRUE;
                break;
            case VMC_OP_GE:
                if(arg1 >= arg2) result = TRUE;
                break;
            case VMC_OP_LE:
                if(arg1 <= arg2) result = TRUE;
                break;
            default:
                return FALSE;
        }

        if(!result) pResult->type = VM_TYPE_FALSE;
        else pResult->type = VM_TYPE_TRUE;
    }

    return TRUE;
}

inline BOOL vmc_op_string(int code, VMArg* pArg1, VMArg* pArg2, VMArg* pResult){
    const char* arg1 = pArg1->value.pointerVal;
    const char* arg2 = pArg2->value.pointerVal;
    BOOL result = FALSE;

    switch(code){
        case VMC_OP_EQ:
            if(strcmp(arg1, arg2) == 0) result = TRUE;
            break;
        case VMC_OP_NE:
            if(strcmp(arg1, arg2) != 0) result = TRUE;
            break;
        default:
            return FALSE;
    }

    //if(!result) pResult->type = VM_TYPE_FALSE;
    //else pResult->type = VM_TYPE_TRUE;
    //TODO: please say i dont have to do this, if i do i'll be angy
    pResult->type = !result + VM_TYPE_TRUE;

    return TRUE;
}

int vmc_calc(VMThread* pThread, u8 code){
    VMArg* arg1 = vmStackPrevGet(pThread);
    VMArg* arg2 = vmStackPrevGet(pThread);
    int arg1Type = arg1->type;
    int arg2Type = arg2->type;

    VMArg result;
    BOOL success = FALSE;

    //Determine what operation to do based on the argument types
    switch(arg1Type){
        case VM_TYPE_TRUE:
        case VM_TYPE_FALSE:
            if(arg2Type == VM_TYPE_TRUE || arg2Type == VM_TYPE_FALSE){
              success = vmc_op_bool(code,arg1,arg2,&result);
            }
            break;
        case VM_TYPE_INT:
            if(arg2Type == VM_TYPE_INT){
                success = vmc_op_int(code,arg1,arg2,&result);
            }else if(arg2Type == VM_TYPE_FIXED){
                int newVal = INT_TO_FIXED(arg1->value.intVal);
                arg1->type = VM_TYPE_FIXED;
                arg1->value.intVal = newVal;
                success = vmc_op_fixed(code,arg1,arg2,&result);
            }else if(arg2Type == VM_TYPE_NIL){
                success = vmc_op_nil(code, arg1, arg2, &result);
            }
            break;
        case VM_TYPE_FIXED:
          if (arg2Type == VM_TYPE_FIXED) {
            success = vmc_op_fixed(code,arg1,arg2,&result);
          }else if(arg2Type == VM_TYPE_INT){
            int newVal = INT_TO_FIXED(arg2->value.intVal);
            arg2->type = VM_TYPE_FIXED;
            arg2->value.intVal = newVal;
            success = vmc_op_fixed(code,arg1, arg2,&result);
          }else if(arg2Type == VM_TYPE_NIL){
            success = vmc_op_nil(code, arg1, arg2, &result);
          }
          break;
        case VM_TYPE_STRING:
          if(arg2Type == VM_TYPE_STRING){
            success = vmc_op_string(code, arg1, arg2, &result);
          }else if(arg2Type == VM_TYPE_NIL){
            success = vmc_op_nil(code, arg1, arg2, &result);
          }
        break;
        default:
            if(arg1Type == VM_TYPE_NIL || arg2Type == VM_TYPE_NIL){
                success = vmc_op_nil(code, arg1, arg2, &result);
            }
            break;
    }

    //If an error happened, throw an exception
    if (success == FALSE) {
        if((code == VMC_OP_DIV || code == VMC_OP_MOD)
        && ((arg2Type == VM_TYPE_INT && arg2->value.intVal == 0) || (arg2Type == VM_TYPE_FIXED && arg2->value.intVal == 0))){
            //Division by zero
            vmExceptionThrow(pThread, VM_EXCEPTION_DIV_BY_ZERO);
        }else{
            //Invalid argument
            saveArg(pThread, arg1, 0);
            saveArg(pThread, arg2, 1);
            vmExceptionThrow(pThread, VM_EXCEPTION_CALC_INVALID_ARG);
        }

        return FALSE;
    }

    vmPush(pThread, &result);
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_jmp(VMThread* pThread, u8 code){
    //int newPc = getOpcodeParam(pThread, code);

    int pc = pThread->reg.pc;
    int newPc = vmDataGet(pThread, pc + 1, vmcOpcodes[code].paramSize);
    
    //Sign extend to 32 bits if negative
    if ((newPc & 0x8000) != 0) {
      newPc |= 0xFFFF0000;
    }

    pThread->reg.pc += newPc;
    return VMC_RESULT_0;
}

int vmc_jpf(VMThread* pThread, u8 code){
    VMArg* arg = vmStackPrevGet(pThread);

    if(arg->type == VM_TYPE_FALSE){
        int pc = pThread->reg.pc;
        int newPC = vmDataGet(pThread, pc + 1,(int)vmcOpcodes[code].paramSize);

        //Sign extend to 32 bits
        //TODO: probably a macro/inline
        if((newPC & 0x8000) != 0){
            newPC |= 0xFFFF0000;
        }
        pThread->reg.pc += newPC;
    }else if (arg->type == VM_TYPE_TRUE){
        incrementPc(pThread, code);
    }else{
        saveArg(pThread, arg, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_JPF_INVALID_ARG);
        return VMC_RESULT_0;
    }

    return VMC_RESULT_0;
}

int vmc_call(VMThread* pThread, u8 code){
    int pc = pThread->reg.pc;
    u32 val = vmDataGet(pThread,pc + 1, vmcOpcodes[code].paramSize);
    return vmc_call_entry(pThread, val, pThread->unk2C, pc + vmcOpcodes[code].paramSize + 1);
}

int vmc_call_entry(VMThread* pThread, u32 r4, s16 r5, u32 r6){
    FunctionPoolEntry* poolEntry = vmFunctionPoolGet(pThread->scriptData, r4);
    int uVar11 = vmArgCntGet(pThread);

    if (poolEntry->unk4 > ((uVar11 >> 8) & 0xFF)) {
        vmExceptionThrow(pThread, VM_EXCEPTION_8);
        return VMC_RESULT_0;
    }

    int iVar10 = poolEntry->unk2 - (uVar11 & 0xFF);

    if(iVar10 > 0){
        int iVar12 = 0;
        int puVar8 = 0;

        if (poolEntry->unk2 != -1) {
            do {
                puVar8 -= (iVar12 + 1);
                if (iVar12 < (uVar11 & 0xFF) + 1) {
                  VMArg* pVVar9 = &pThread->stack[puVar8 + iVar10];
                  int iVar13 = 2;
                  VMArg* pVVar7 = &pThread->stack[puVar8];
                  copyArg(pVVar9, pVVar7);
                }else{
                  pThread->stack[puVar8 + iVar10].type = 0;
                }

                puVar8 = pThread->reg.sp;
                if(poolEntry->unk2 + 1 <= iVar12 + 1) break;
                iVar12++;
            }while(true);
        }

        pThread->reg.sp = puVar8 + iVar10;
        ((u32*)&pThread->stack[puVar8 + iVar10])[-1]  = (poolEntry->unk2 & 0xFF) | (uVar11 & 0xFF00);
    }

    VMArg* puVar4 = vmStackNextGet(pThread);
    puVar4->type = VM_TYPE_SYS;
    puVar4->unk2 = 0;
    puVar4->value.intVal = pThread->reg.unk8;

    VMArg* uVar14 = vmStackNextGet(pThread);
    uVar14->type = VM_TYPE_SYS;
    uVar14->unk2 = r5;
    uVar14->value.intVal = r6;

    pThread->reg.unk8 = pThread->reg.sp;
    pThread->reg.pc = uVar14[1].value.intVal; //is this right?
    u16 uVar11_1 = *(u16*)(&uVar14[1].type); //???

    if (uVar11_1 != 0xFFFF) {
        LocalPoolEntry* piVar5 = vmLocalPoolGet(pThread->scriptData,uVar11_1);
        memcpy(&pThread->stack[pThread->reg.unk8], getRelativePtr(piVar5),piVar5->unk4 * sizeof(VMArg));
        pThread->reg.sp += piVar5->unk4;

        for(int i = 0; i < piVar5->unk4; i++){
            VMArg* pVVar7 = &pThread->stack[pThread->reg.unk8 + iVar10];
            if (pVVar7->type == VM_TYPE_ARRAY) {
                pVVar7->value.uintVal = (pVVar7->value.uintVal + pThread->reg.unk8) - 0x80000000;
            }
        }
    }

    return VMC_RESULT_0;
}

int vmc_call_far_entry(VMThread* pThread, u16 param2, u16 param3, int param4){
    s16 sVar1 = pThread->unk2C;
    pThread->unk2C = param2;
    pThread->scriptData = vmState.packages[param2].scriptDataPtr;
    pThread->codeData = getRelativePtr(pThread->scriptData->codeOfs);
    pThread->staticVarsEntries = getRelativePtr(pThread->scriptData->staticVarsOfs);
    return vmc_call_entry(pThread, param3, sVar1, param4);
}

inline int vmc_plugin_sub(VMThread* pThread, u8 code, int param3, int param4){
    //pThread = r23, param3 = r27, param4 = r3
    if(pThread->reg.exception != 0){
        return VMC_RESULT_0;
    }

    if(pThread->waitMode == FALSE){
        if(param4 > 1 || ((param3 >> 8) & 0xFF) > param4){
            vmExceptionThrow(pThread, VM_EXCEPTION_8);
            return VMC_RESULT_0;
        }

        int r3 = pThread->reg.sp - 1;
        pThread->reg.sp -= param4 + (param3 & 0xFF) + 1;

        if(((param3 >> 8) & 0xFF) != 0){
            vmPush(pThread, &pThread->stack[r3]);
        }

        pThread->reg.pc += vmcOpcodes[code].paramSize + 1;

        return VMC_RESULT_0;

    }

    return VMC_RESULT_1;
}

int vmc_plugin_entry(VMThread* pThread, u8 code, u16 param3, u16 param4){
    int uVar2 = vmArgCntGet(pThread);

    pThread->waitMode = FALSE;

    VMPlugin* plugin = &vmState.plugins[param3];
    int result = plugin->unk4[param4].func(pThread);
    return vmc_plugin_sub(pThread, code, uVar2, result); //needs checking
}

int vmc_call_ind(VMThread* pThread, u8 code){
    VMArg* arg = vmStackPrevGet(pThread);

    if(arg->type == VM_TYPE_FUNCTION){
        if(pThread->unk2C != arg->unk2){
            return vmc_call_far_entry(pThread, arg->unk2, arg->value.intVal, 0);
        }
        return vmc_call_entry(pThread,arg->value.intVal,pThread->unk2C,pThread->reg.pc + 1);
    }

    if(arg->type != VM_TYPE_PLUGIN){
        saveArg(pThread, arg, 0);
        vmExceptionThrow(pThread,VM_EXCEPTION_CALLIND_INVALID_ARG);
        return VMC_RESULT_0;
    }

    return vmc_plugin_entry(pThread, code, 0, 0); //needs checking
}

int vmc_ret(VMThread* pThread, u8 code){
    int unk8 = pThread->reg.unk8;
    VMArg* arg1 = &pThread->stack[unk8 - 3];
    u32 r9 = arg1->value.uintVal;
    int r10 = pThread->reg.sp - 1;
    pThread->reg.sp = unk8 - ((r9 & 0xFF) + 3);

    VMArg* arg2 = &pThread->stack[unk8 - 1];
    VMArg* arg3 = &pThread->stack[unk8 - 2];
    pThread->reg.pc = arg2->value.intVal;
    int r8_1 = arg2->unk2;
    pThread->reg.unk8 = arg3->value.intVal;

    if(((r9 >> 8) & 0xFF) != 0){
        vmPush(pThread, &pThread->stack[r10]);
    }

    if(r8_1 != pThread->unk2C){
        pThread->unk2C = r8_1;
        pThread->scriptData = vmState.packages[r8_1].scriptDataPtr;
        pThread->codeData = getSectionEntriesPtr(pThread->scriptData->codeOfs);
        pThread->staticVarsEntries = getSectionEntriesPtr(pThread->scriptData->staticVarsOfs);
    }

    return VMC_RESULT_0;
}

int vmc_next(VMThread* pThread, u8 code){
    incrementPc(pThread, code);
    return VMC_RESULT_2;
}

int vmc_plugin(VMThread* pThread, u8 code){
    SBSectionHeader* pSVar3 = pThread->scriptData->pluginImportsOfs;
    PluginImportEntry* entryPtr = getRelativePtr(pThread->scriptData->pluginImportsOfs);
    int pc = pThread->reg.pc;
    int index = vmDataGet(pThread, pc + 1, vmcOpcodes[code].paramSize);
    return vmc_plugin_entry(pThread, code, entryPtr[index].unk0, entryPtr[index].unk2);
}

int vmc_call_far(VMThread* pThread, u8 code){
    SBSectionHeader* pSVar4 = pThread->scriptData->functionImportsOfs;
    int pc = pThread->reg.pc;
    FunctionImportEntry* funcImport = getRelativePtr(pSVar4);
    int iVar1 = vmDataGet(pThread,pc + 1,vmcOpcodes[code].paramSize);
    int address = pThread->reg.pc + vmcOpcodes[code].paramSize + 1;
    return vmc_call_far_entry(pThread, funcImport[iVar1].unk0, funcImport[iVar1].unk2, address);
}

int vmc_get_oc(VMThread* pThread, u8 code){
    int pc = pThread->reg.pc;
    int no = vmDataGet(pThread,pc + 1, vmcOpcodes[code].paramSize);
    SBSectionHeader* ocImports = pThread->scriptData->ocImportsOfs;
    int uVar4 = vmArgCntGet(pThread);

    pThread->waitMode = FALSE;

    OCImportEntry* entryPtr = poolEntryOfsGet(ocImports, no);
    u16 ocIndex = entryPtr->unk0;
    OCCtorFunc func = vmState.ocs[ocIndex].unk0->ctor;
    int result = func(pThread, 0, ocIndex);

    return vmc_plugin_sub(pThread, code, uVar4, result);
}

int vmc_getter(VMThread* pThread, u8 code){
    int pc = pThread->reg.pc;
    int no = vmDataGet(pThread, pc + 1,(int)vmcOpcodes[code].paramSize);

    VMArg* pVVar5 = vmStackPrevGet(pThread);

    if (pVVar5->type != VM_TYPE_OC) {
        saveArg(pThread, pVVar5, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_INVALID_OC);
        return VMC_RESULT_0;
    }

    OCData* ocData = vmState.ocs[pVVar5->unk2].unk0;
    const char* name = vmIdPoolGet(pThread->scriptData, no);
    int propertyIndex = vmPropertySearch(ocData, name);

    if (propertyIndex < 0) {
        saveArg(pThread, pVVar5, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_INVALID_PROPERTY);
        return VMC_RESULT_0;
    }

    OCGetSetFunc func = ocData->properties[propertyIndex].getFunc;

    if(func != NULL){
        func(pThread, pVVar5->value.intVal, ocData);
    }else{
        saveArg(pThread, pVVar5, 0);
        vmExceptionThrow(pThread,VM_EXCEPTION_INVALID_GETSET_FUNC);
        return VMC_RESULT_0;
    }

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_setter(VMThread* pThread, u8 code){
    int pc = pThread->reg.pc;
    int no = vmDataGet(pThread, pc + 1,(int)vmcOpcodes[code].paramSize);

    VMArg* pVVar5 = vmStackPrevGet(pThread);

    if (pVVar5->type != VM_TYPE_OC) {
        saveArg(pThread, pVVar5, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_INVALID_OC);
        return VMC_RESULT_0;
    }

    OCData* ocData = vmState.ocs[pVVar5->unk2].unk0;
    const char* name = vmIdPoolGet(pThread->scriptData, no);
    int propertyIndex = vmPropertySearch(ocData, name);

    if (propertyIndex < 0) {
        saveArg(pThread, pVVar5, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_INVALID_PROPERTY);
        return VMC_RESULT_0;
    }

    OCGetSetFunc func = ocData->properties[propertyIndex].setFunc;

    if(func != NULL){
        func(pThread, pVVar5->value.intVal, ocData);
    }else{
        saveArg(pThread, pVVar5, 0);
        vmExceptionThrow(pThread,VM_EXCEPTION_INVALID_GETSET_FUNC);
        return VMC_RESULT_0;
    }

    pThread->reg.sp--;
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_send(VMThread* pThread, u8 code){
    int pc = pThread->reg.pc;
    int no = vmDataGet(pThread, pc + 1, vmcOpcodes[code].paramSize);
    VMArg* arg = vmStackPrevGet(pThread);

    if (arg->type != VM_TYPE_OC) {
      saveArg(pThread, arg, 0);
      vmExceptionThrow(pThread,VM_EXCEPTION_INVALID_OC);
      return VMC_RESULT_0;
    }

    int uVar10 = pThread->stack[pThread->reg.sp - 1].value.intVal;
    OCData* iVar7 = vmState.ocs[arg->unk2].unk0;
    const char* funcName = vmIdPoolGet(pThread->scriptData, no);
    int selectorId = vmSelectorSearch(iVar7,funcName);
    OCData* pvVar3 = vmState.builtinOC;
    int result = VMC_RESULT_0;

    if (selectorId < 0) {
      if (vmState.builtinOC == NULL || vmSelectorSearch(vmState.builtinOC, funcName) < 0) {
        saveArg(pThread, arg, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_SEND_ERROR);
        return VMC_RESULT_0;
      }
    }

    OCSelectorFunc func = pvVar3->selectors->func;
    pThread->waitMode = FALSE;
    int uVar6 = func(pThread,arg->value.intVal);
    result = vmc_plugin_sub(pThread, code, uVar10, uVar6);

    if(result == VMC_RESULT_1) pThread->reg.sp++;

    return result;
}

int vmc_typeof(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->stack[pThread->reg.sp - 1];
    const char* typeName = vmTypeNames[arg->type];

    arg->type = VM_TYPE_STRING;
    arg->unk2 = strlen(typeName);
    arg->value.pointerVal = (void*)typeName;
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_sizeof(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->stack[pThread->reg.sp - 1];

    int size;
    if(arg->type != VM_TYPE_ARRAY) size = 1;
    else size = arg->unk2;

    arg->type = VM_TYPE_INT;
    arg->value.intVal = size;
    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_switch(VMThread* pThread, u8 code){
    int pc = pThread->reg.pc;
    int param = vmDataGet(pThread,pc + 1,vmcOpcodes[code].paramSize);
    VMArg* arg = vmStackPrevGet(pThread);
    int caseNum = arg->value.intVal;
    int paramsOffset = pThread->reg.pc + 6;
    int i = 0;
    int endIndex = param;

    //Do a binary search to quickly find the right case
    while(i < endIndex){
        int midIndex = (i + endIndex)/2;
        int offset = paramsOffset + (midIndex * 8);
        int midCaseNum = vmDataGet(pThread,offset,4);

        if(caseNum > midCaseNum){
            //Keep right half
            i = midIndex + 1;
        }else if(caseNum < midCaseNum){
            //Keep left half
            endIndex = i;
        }else{
            //The case was found, jump to it
            pThread->reg.pc += vmDataGet(pThread,offset + 4,4);
            return VMC_RESULT_0;
        }
    }

    //No case was found
    pThread->reg.pc += vmDataGet(pThread,paramsOffset - 4,4);
    return VMC_RESULT_0;
}

int vmc_inc(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->stack[pThread->reg.sp - 1];

    if((int)arg->type == VM_TYPE_INT){
        arg->value.intVal++;
    }else{
        saveArg(pThread, arg, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_MATH_INVALID_ARG);
        return VMC_RESULT_0;
    }

    incrementPc(pThread, code);
    return VMC_RESULT_0;
}

int vmc_dec(VMThread* pThread, u8 code){
    VMArg* arg = &pThread->stack[pThread->reg.sp - 1];

    if((int)arg->type == VM_TYPE_INT){
        arg->value.intVal--;
    }else{
        saveArg(pThread, arg, 0);
        vmExceptionThrow(pThread, VM_EXCEPTION_MATH_INVALID_ARG);
        return VMC_RESULT_0;
    }

    incrementPc(pThread, code);
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
/* This function is meant to print various information on the current state of the VM,
then halt. However, all of this is stubbed for release, so this function does nothing. */
void vmHalt(){
    //Get the currently running thread
    VMThread* thread = vmState.activeThread;

    //Print instruction at current address
    vmCodePut(thread, thread->codeData[thread->reg.pc]);
    /* Do something with stack/package/thread info (print/dump to file?). Not even XCX has anything
    for these functions, so there's sadly no way of knowing what they might've done... */
    vmStackDump(thread);
    vmPackageDump();
    vmThreadDump();

    /* BUG: As explained above, whatever code that would've handled halting was removed.
    In XC3D and XCX, it does properly halt: XC3D calls nn::dbg::Panic (possibly through a
    custom panic function that got inlined), while XC3D just has a while(true) loop. Given
    how similar XCX's yvm code is, it's likely they did that here too. */

#if defined(BUGFIX)
    //Loop forever
    while(true){}
#endif
}

//Error function called when an invalid argument is found
void vmArgErr(){
    //Get the currently running thread
    VMThread* thread = vmState.activeThread;
    u8 r3 = thread->codeData[thread->reg.pc];

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

/* TODO: this is placed here b/c the opcode functions are static and having a bunch
of forward declarations isn't ideal, but having all of this down here also isn't the best. Maybe
there's a better solution? */

//Opcode handler function table
OpcodeFunc vmcOpcodeFuncs[VMC_MAX] = {
    vmc_nop, //NOP
    vmc_const, //CONST_0
    vmc_const, //CONST_1
    vmc_const, //CONST_2
    vmc_const, //CONST_3
    vmc_const, //CONST_4
    vmc_const_i, //CONST_I
    vmc_const_i, //CONST_I_W
    vmc_pool_int, //POOL_INT
    vmc_pool_int, //POOL_INT_W
    vmc_pool_fixed, //POOL_FIXED
    vmc_pool_fixed, //POOL_FIXED_W
    vmc_pool_string, //POOL_STR
    vmc_pool_string, //POOL_STR_W
    vmc_ld, //LD
    vmc_st, //ST
    vmc_ld_arg, //LD_ARG
    vmc_st_arg, //ST_ARG
    vmc_st_arg_omit, //ST_ARG_OMIT
    vmc_ld_const, //LD_0
    vmc_ld_const, //LD_1
    vmc_ld_const, //LD_2
    vmc_ld_const, //LD_3
    vmc_st_const, //ST_0
    vmc_st_const, //ST_1
    vmc_st_const, //ST_2
    vmc_st_const, //ST_3
    vmc_ld_arg_const, //LD_ARG_0
    vmc_ld_arg_const, //LD_ARG_1
    vmc_ld_arg_const, //LD_ARG_2
    vmc_ld_arg_const, //LD_ARG_3
    vmc_st_arg_const, //ST_ARG_0
    vmc_st_arg_const, //ST_ARG_1
    vmc_st_arg_const, //ST_ARG_2
    vmc_st_arg_const, //ST_ARG_3
    vmc_ld_static, //LD_STATIC
    vmc_ld_static, //LD_STATIC_W
    vmc_st_static, //ST_STATIC
    vmc_st_static, //ST_STATIC_W
    vmc_ld_ar, //LD_AR
    vmc_st_ar, //ST_AR
    vmc_ld_nil, //LD_NIL
    vmc_ld_true, //LD_TRUE
    vmc_ld_false, //LD_FALSE
    vmc_ld_func, //LD_FUNC
    vmc_ld_func, //LD_FUNC_W
    vmc_ld_plugin, //LD_PLUGIN
    vmc_ld_plugin, //LD_PLUGIN_W
    vmc_ld_func_far, //LD_FUNC_FAR
    vmc_ld_func_far, //LD_FUNC_FAR_W
    vmc_minus, //MINUS
    vmc_not, //NOT
    vmc_l_not, //L_NOT
    vmc_calc, //ADD
    vmc_calc, //SUB
    vmc_calc, //MUL
    vmc_calc, //DIV
    vmc_calc, //MOD
    vmc_calc, //OR
    vmc_calc, //AND
    vmc_calc, //R_SHIFT
    vmc_calc, //L_SHIFT
    vmc_calc, //EQ
    vmc_calc, //NE
    vmc_calc, //GT
    vmc_calc, //LT
    vmc_calc, //GE
    vmc_calc, //LE
    vmc_calc, //L_OR
    vmc_calc, //L_AND
    vmc_jmp, //JMP
    vmc_jpf, //JPF
    vmc_call, //CALL
    vmc_call, //CALL_W
    vmc_call_ind, //CALL_IND
    vmc_ret, //RET
    vmc_next, //NEXT
    vmc_plugin, //PLUGIN
    vmc_plugin, //PLUGIN_W
    vmc_call_far, //CALL_FAR
    vmc_call_far, //CALL_FAR_W
    vmc_get_oc, //GET_OC
    vmc_get_oc, //GET_OC_W
    vmc_getter, //GETTER
    vmc_getter, //GETTER_W
    vmc_setter, //SETTER
    vmc_setter, //SETTER_W
    vmc_send, //SEND
    vmc_send, //SEND_W
    vmc_typeof, //TYPEOF
    vmc_sizeof, //SIZEOF
    vmc_switch, //SWITCH
    vmc_inc, //INC
    vmc_dec, //DEC
    vmc_exit, //EXIT
    vmc_bp //BP
};
