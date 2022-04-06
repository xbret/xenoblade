#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObject.hpp"

namespace cf{
	//size: 0xC0
	class CfObjectEff : public CfObject{
	public:
		//0x0: vtable
		//0x0-70: CfObject
		u8 unk70[0x50];
	};
}
