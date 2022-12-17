#ifndef _CF_MAIN_HPP
#define _CF_MAIN_HPP

#include "types.h"
#include "kyoshin/appgame/code_802AEB74.hpp"
#include "monolithlib/code_80450B14.h"
#include "monolithlib/Unknown1.h"

//namespace cf {
extern void func_80057CDC();
extern void SetArenaMemorySize(u32, u32);
extern void func_804442D8();
extern void func_80448E78(u32);
extern void func_804559A8(u32, u32);
extern void func_80455FC8(u32*, u32);
extern void func_8045D5C8(u32);
extern void func_8045FBB0(u32*);
extern void func_8046023C(void*, void*);
extern void func_804DAA90(u32**);
extern void func_804DAA98(u32**);
extern void func_804DAAA0(u32**);
extern void SavePkhFilenamesArrayPtr(char*[]);
extern void SaveStaticArcFilenameStringPtr(const char* const*);
extern void func_80039F6C();
extern void func_80039F90();

void main(int argc, char* argv[]);
//}

#endif
