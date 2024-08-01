#pragma once

#include "types.h"
#include "kyoshin/appgame/plugin/pluginMain.hpp"
#include "monolib/lib/CLibHbm.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDeviceGX.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/code_80450B14.hpp"
#include "monolib/Unknown1.hpp"
#include "monolib/vm/yvm.h"

struct FunctionStruct{
    const char* name;
    void* function;
    u32 unk8;
    u32 uckC;
};

struct StaticArcFile{
    const char* unk0;
    const char* filename;
    u32 unk8;
    void (*function1)(int);
    void* function2;
};

extern "C"{
extern void func_80057CDC();
extern void CWorkRoot_Run();
extern void CDesktop_SaveStartFunctionCallback(FunctionStruct*, u32);
extern void CLibStaticData_saveStaticFileArray(StaticArcFile*);
extern void CLibVM_SetCallbacks(void*, void*);
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

void func_80039EFC(int);
void func_80039F34();
void func_80039F5C(int);
void func_80039F60();
void func_80039F64(int);
void func_80039F68();
void vmInitPluginRegistCallback();
void vmInitCallback();
void main(int argc, char* argv[]);
