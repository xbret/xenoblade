#pragma once

#include "types.h"

namespace cf {
    //size: 0x68
    class CChainTemp {
    public:
        u8 unk0[0x64];
        //0x64: vtable

        virtual ~CChainTemp(){}
        virtual void vtableFunc2(); //0
    };
}
