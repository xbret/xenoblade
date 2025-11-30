#pragma once

#include <types.h>
#include "kyoshin/appgame/cf/chain/CChainActorList.hpp"
#include "kyoshin/appgame/cf/chain/CChainMember.hpp"
#include "kyoshin/appgame/cf/chain/CChainTimer.hpp"
#include "kyoshin/appgame/cf/chain/CChainTime.hpp"
#include "kyoshin/appgame/cf/chain/CChainChance.hpp"
#include "kyoshin/appgame/cf/chain/CChainCombo.hpp"

namespace cf {
    //size: 0x1F0C?
    class CChain {
    public:
        CChain();
        ~CChain(){}
        void func_8027728C();

        u8 unk0[0x18];
        CChainActorList mChainActorList; //0x18
        CChainMember mChainMember; //0x1DC8
        CChainTimer mChainTimer1; //0x1EB4
        CChainTimer mChainTimer2; //0x1EBC
        CChainTime mChainTime; //0x1EC4
        CChainChance mChainChance; //0x1EDC
        CChainCombo mChainCombo; //0x1EF4
        u8 unk1F0C[0x14];
    };
}
