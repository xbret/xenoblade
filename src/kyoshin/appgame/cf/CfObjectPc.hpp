#pragma once

#include "kyoshin/appgame/cf/CfObjectActor.hpp"

namespace cf{
	class CfObjectPc : public CfObjectActor{
	public:
		//vtable 4 (CfObjectActor)
		virtual ~CfObjectPc();
		//vtable 4 (CfObjectPc)
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

		u8 unk3EA0[0x88];
		u16 unk3F28;
	};
}
