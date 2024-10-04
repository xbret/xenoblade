#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/chain/CChainTemp.hpp"
#include "kyoshin/appgame/cf/chain/CChainTime.hpp"
#include "kyoshin/appgame/cf/chain/CChainTimer.hpp"

namespace cf {
    //size: 0xA4
    class UnkClass_800D8DBC {
	public:
        UnkClass_800D8DBC();
		~UnkClass_800D8DBC(){}

        u8 unk0[0x1C];
        //Flusher<CfObjectActor> mObjectActorFlusher; //0x10
        CChainTemp mChainTemp; //0x1C
        CChainTime mChainTime; //0x84
		CChainTimer mChainTimer; //0x9C
	};
}
