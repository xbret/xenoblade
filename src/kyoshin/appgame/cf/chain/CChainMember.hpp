#pragma once

#include "types.h"

namespace cf {
    //size: 0xEC
    class CChainMember {
    public:
        u8 unk0[0xE8];
        //0xE8: vtable

        virtual ~CChainMember(){}
    };
}
