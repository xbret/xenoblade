#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/chain/CChainTemp.hpp"
#include "kyoshin/appgame/cf/chain/CChainEffect.hpp"
#include <cstring>

namespace cf {
	//size: 0x80
	class CChainActor {
	public:
		u32 unk0;
		CChainTemp mChainTemp; //0x4?
		u16 unk6C;
		//0x70: vtable

		CChainActor() : unk6C(0) {
			unk0 = 0;
		}
		virtual ~CChainActor();

		CChainEffect mChainEffect; //0x74
	};
}
