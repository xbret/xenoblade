#pragma once

#include <types.h>

namespace cf {
    //size: 0x8
    class CChainTimer {
    public:
        u16 unk0;
        u8 unk2[2];
        //0x4: vtable
        virtual ~CChainTimer(){}
    };
}
