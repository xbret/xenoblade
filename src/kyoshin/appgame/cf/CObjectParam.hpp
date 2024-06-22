#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CObjectState.hpp"

namespace cf{
	//min size: 0x38
	class CObjectParam : public CObjectState{
	public:
		virtual void CObjectParam_vtableFunc1();
		virtual void CObjectParam_vtableFunc2();
		virtual void CObjectParam_vtableFunc3();
		virtual void CObjectParam_vtableFunc4();
		virtual void CObjectParam_vtableFunc5();
		virtual void CObjectParam_vtableFunc6();

		//0x0: vtable
		//0x0-10: CObjectState
		u8 unk10_3[0x28];
	};
}
