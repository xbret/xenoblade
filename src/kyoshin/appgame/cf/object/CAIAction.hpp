#pragma once

#include "types.h"

namespace cf {

    //size: 0xB1C?
    class CAIAction {
    public:
        CAIAction();
        virtual void CAIAction_vtableFunc1(); //0x8
        virtual void CAIAction_vtableFunc2(); //0xC

        //0x0: vtable
        u8 unk4[0xB18]; //temporary
    };
}
