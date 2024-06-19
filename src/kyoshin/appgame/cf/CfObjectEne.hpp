#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectActor.hpp"

namespace cf{
	class CfObjectEne : public CfObjectActor{
	public:
		virtual ~CfObjectEne();
		virtual void func_800ADB2C();
		virtual void func_800ADBD4();
		virtual void func_800ADDA8();
		virtual void func_800AEC68();
	};
}
