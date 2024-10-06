#pragma once

#include "types.h"

namespace cf{
    class CAIAction{
    public:
        virtual void CAIAction_vtableFunc1(); //0x8
        virtual void CAIAction_vtableFunc2(); //0xC

        u8 unk3384[0xB18]; //temporary
    };
}
