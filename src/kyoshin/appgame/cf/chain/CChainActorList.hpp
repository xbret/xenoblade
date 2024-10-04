#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/chain/UnkClass_8027AD70.hpp"
#include "monolib/reslist.hpp"

namespace cf {
    //size: 0x1DB0
    class CChainActorList {
    public:
        UnkClass_8027AD70 unk0; //0x0
        reslist<CChainActor> mChainActorList; //0x1D88
        //0x1DAC: vtable

        virtual ~CChainActorList();
    };
}
