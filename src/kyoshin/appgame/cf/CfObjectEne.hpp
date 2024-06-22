#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectActor.hpp"

namespace cf{
	//size: 0x45CC
	class CfObjectEne : public CfObjectActor{
	public:
		virtual ~CfObjectEne();
		virtual void func_800ADB2C();
		virtual void func_800ADBD4();
		virtual void func_800ADDA8();
		virtual void func_800AEC68();

		//0x0: vtable
		//0x0-45BC: CfObjectActor
		u8 unk45BC[0x10];
	};
}
