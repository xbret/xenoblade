#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectObj.hpp"

namespace cf{
	//size: 0x738
	class CfObjectTbox : public CfObjectObj{
	public:
		//0x0: vtable
		//0x0-718: CfObjectObj
		u8 unk718[0x20];
	};
}
