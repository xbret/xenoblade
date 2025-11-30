#pragma once

#include <types.h>
#include <monolib/work.hpp>
#include <monolib/util.hpp>

class CTaskGame : public CTTask<CTaskGame> {
public:
    void func_80040A3C(u16 r4, u16 r5, const char* r6, s16 r7);
    static bool func_800426F0(); //maybe a member?
    void func_80042710();
    void func_80042720();
    static CTaskGame* getInstance();

    //0x0: vtable
    //0x4-3C: CProcess
    //0x3C-54: CTTask
    u8 unk54[0x68 - 0x54];
    u32 unk68;

protected:
    static CTaskGame* spInstance;
};
