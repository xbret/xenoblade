#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectModel.hpp"

namespace cf{
	//size: 0x2F50
	class CfObjectMap : public CfObjectModel{
	public:
		//0x0: vtable
		//0x0-BE: CfObjectModel
		u8 unkBE[0x2E92];
	};
}
