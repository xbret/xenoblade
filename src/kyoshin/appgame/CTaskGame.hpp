#pragma once

#include "types.h"
#include "monolib/CTTask.hpp"
#include "monolib/FixStr.hpp"

using namespace ml;

class CTaskGame : CTTask<CTaskGame> {
public:
    void func_80040A3C(u16 r4, u16 r5, const char* r6, s16 r7);
    static bool func_800426F0();
    void func_80042720();
    static CTaskGame* getInstance();

protected:
    static CTaskGame* sInstance;
};
