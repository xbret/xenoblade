#pragma once

#include "types.h"

namespace cf{
	//min size: 0x10
	class CObjectState{
	public:
		virtual void CObjectState_vtableFunc1();
		virtual void CObjectState_vtableFunc2();
		virtual void CObjectState_vtableFunc3();
		virtual void CObjectState_vtableFunc4();
		virtual void CObjectState_vtableFunc5();
		virtual void CObjectState_vtableFunc6();
		virtual void CObjectState_vtableFunc7();
		virtual void CObjectState_vtableFunc8();
		virtual void CObjectState_vtableFunc9();
		virtual void CObjectState_vtableFunc10();
		virtual void CObjectState_vtableFunc11();
		virtual void CObjectState_vtableFunc12();
		virtual void CObjectState_vtableFunc13();

		//0x0: vtable
		u8 unk4_3[0xC];
	};
}
