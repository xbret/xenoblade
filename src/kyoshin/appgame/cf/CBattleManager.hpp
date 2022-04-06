#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/IFactoryEvent.hpp"
#include "kyoshin/appgame/cf/CVision.hpp"

namespace cf{
	class CBattleManager : public IFactoryEvent{
	public:
		static CBattleManager* getInstance();

		u8 unk4[0x2198];
		CVision vision; //0x219c
	};
}