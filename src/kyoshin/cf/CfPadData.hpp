#pragma once

#include <types.h>
#include "monolib/core.hpp"

namespace cf{
    //TODO: unsure if it inherits CPad or not
    struct CfPadData {
        CPad mPad; //0x0
        u32 unkF8;
        u32 unkFC;
        u32 unk100;
        u32 unk104;
        u8 unk108;
        
    };
}
