#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectMove.hpp"

namespace cf{
	//size: 0x71C
	class CfObjectNpc : public CfObjectMove{
	public:
		//0x0: vtable
		//0x0-718: CfObjectMove
		u8 unk718[4];
	};
}
