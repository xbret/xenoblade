#pragma once

#include "types.h"

namespace cf {
    //size: 0x80
    class CChainActor {
        u8 unk0[0x70];
        //0x70: vtable

        virtual ~CChainActor();

        u8 unk74[0x80 - 0x74];
    };
}
