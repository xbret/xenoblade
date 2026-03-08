#pragma once

#include <types.h>
#include "monolib/core.hpp"

namespace cf{
    struct CfPadData {
        CPad mPad; //0x0
        u32 unkF8;
        u32 unkFC;
    };
}
