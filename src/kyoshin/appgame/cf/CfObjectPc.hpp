#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectActor.hpp"

namespace cf{
	//size: 0x45C0
	class CfObjectPc : public CfObjectActor{
	public:
		virtual ~CfObjectPc();
		virtual void func_800BFF20();
		virtual void func_800C0080();
		virtual void func_800C0524();
		virtual void func_800BFFEC();
		virtual void func_800C00C0();
		virtual void func_800C0174();
		virtual void func_800C02C4();
		virtual void func_800C02EC();
		virtual void func_800C032C();
		virtual void func_800C03A8();
		virtual void func_800C0474();
		virtual void func_800C0504();
		virtual void func_800C0514();
		virtual void func_800C11CC();

		//0x0: vtable
		//0x0-45BC: CfObjectActor
		u8 unk45BC[0x4];
	};
}
