#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectModel.hpp"

namespace cf{
	//min size: 0x715
	class CfObjectMove : public CfObjectModel{
	public:
		//vtable 1 (CfObject)
		virtual ~CfObjectMove();
		//vtable 1 (CfObjectMove)
		virtual void CfObjectMove_vtableFunc1();
		virtual void CfObjectMove_vtableFunc2();
		virtual void CfObjectMove_vtableFunc3();
		virtual void CfObjectMove_vtableFunc4();
		virtual void CfObjectMove_vtableFunc5();
		virtual void CfObjectMove_vtableFunc6();
		virtual void CfObjectMove_vtableFunc7();
		virtual void CfObjectMove_vtableFunc8();
		virtual void CfObjectMove_vtableFunc9();
		virtual void CfObjectMove_vtableFunc10();
		virtual void CfObjectMove_vtableFunc11();
		virtual void CfObjectMove_vtableFunc12();
		virtual void CfObjectMove_vtableFunc13();
		virtual void CfObjectMove_vtableFunc14();
		virtual void CfObjectMove_vtableFunc15();
		virtual void CfObjectMove_vtableFunc16();
		virtual void CfObjectMove_vtableFunc17();
		virtual void CfObjectMove_vtableFunc18();
		virtual void CfObjectMove_vtableFunc19();
		virtual void CfObjectMove_vtableFunc20();
		virtual void CfObjectMove_vtableFunc21();
		virtual void CfObjectMove_vtableFunc22();
		virtual void CfObjectMove_vtableFunc23();

		//0x0: vtable
		//0x0-BE: CfObjectModel
		u8 unkBE_3[0x657];
		u8 unk715[3]; //might not belong here
	};
}
