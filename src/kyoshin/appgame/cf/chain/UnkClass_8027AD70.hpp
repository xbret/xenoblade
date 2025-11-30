#pragma once

#include <types.h>
#include "kyoshin/appgame/cf/chain/CChainActorPc.hpp"
#include "kyoshin/appgame/cf/chain/CChainActorEne.hpp"

namespace cf {
    //size: 0x1d80?
    class UnkClass_8027AD70 {
    public:
        UnkClass_8027AD70(){}
        ~UnkClass_8027AD70(){}

        CChainActorPc mPlayerActors[3]; //0x0
        CChainActorEne mEnemyActors[56]; //0x180
    };
}
