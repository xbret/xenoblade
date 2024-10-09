#pragma once

#include "types.h"

namespace cf {
    class CActorState {
    public:
        virtual void CActorState_vtableFunc1(); //0x8

        CActorState(UNKTYPE* r4){
            unk4 = r4;
        }

        UNKTYPE* unk4;
    };
}
