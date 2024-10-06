#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"

class CWorkSystemPack : public CWorkThread {
public:
    static bool func_804DDFBC(UNKWORD r3);
    static bool func_804DDDF4(const char* r3, u32* r4, u32* r5);
    static bool func_804DE100();
};
