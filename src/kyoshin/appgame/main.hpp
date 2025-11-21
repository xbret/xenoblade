#pragma once

#include "types.h"
#include "monolib/code_80450B14.hpp"

struct FunctionStruct{
    const char* mName;
    void (*function)();
    u32 unk8;
    u32 unkC;
};

struct StaticArcFile{
    const char* mName;
    const char* mPath;
    u32 unk8;
    void (*function1)(int);
    void (*function2)();
};

extern "C"{
    extern void func_80057CDC();
    extern void CDesktop_SaveStartFunctionCallback(FunctionStruct*, u32);
    extern void CLibStaticData_saveStaticFileArray(StaticArcFile*);
    extern void CLibVM_SetCallbacks(void (*callback1)(), void (*callback2)());
    extern void func_804DAA90(const wchar_t*);
    extern void func_804DAA98(const wchar_t*);
    extern void func_804DAAA0(const wchar_t*);
    extern void SavePkhFilenamesArrayPtr(const char* const[]);
    extern void SaveStaticArcFilenameStringPtr(const char* const*);
    extern void func_8003AA50();
    extern void func_8003AA78(u32, s32);
    extern void func_8003AA8C(u32);
    extern void func_8014A86C(int);
    extern void func_8014A8F8();
    extern void func_8045D480(int);
    extern void func_8045D4FC();
}

//Callbacks
void bdatFileCallback1(int);
void bdatFileCallback2();
void aidatCallback1(int);
void aidatCallback2();
void hbmstopCallback1(int);
void hbmstopCallback2();
void vmInitPluginRegistCallback();
void vmInitCallback();
