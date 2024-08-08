#pragma once

#include "types.h"

namespace cf{
	//min size: 0xC
	class CHelp {
	public:
		virtual void CHelp_vtableFunc1();
		virtual void CHelp_vtableFunc2();
		virtual bool CHelp_vtableFunc3();
		virtual void CHelp_vtableFunc4();
		virtual void CHelp_vtableFunc5();
	
		//0x0: vtable
		u8 unk4[0x8];
		int unkC;
	};
}
