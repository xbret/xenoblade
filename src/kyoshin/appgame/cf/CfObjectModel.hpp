#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObject.hpp"

namespace cf{
	//min size: 0xbe
	class CfObjectModel : public CfObject{
	public:
		//vtable 1 (CfObject)
		virtual ~CfObjectModel();
		//vtable 1 (CfObjectModel)
		virtual void CfObjectModel_vtableFunc1();
		virtual void CfObjectModel_vtableFunc2();
		virtual void CfObjectModel_vtableFunc3();
		virtual void CfObjectModel_vtableFunc4();
		virtual void CfObjectModel_vtableFunc5();
		virtual void CfObjectModel_vtableFunc6();
		virtual void CfObjectModel_vtableFunc7();
		virtual void CfObjectModel_vtableFunc8();
		virtual void CfObjectModel_vtableFunc9();
		virtual void CfObjectModel_vtableFunc10();
		virtual void CfObjectModel_vtableFunc11();
		virtual void CfObjectModel_vtableFunc12();
		virtual void CfObjectModel_vtableFunc13();
		virtual void CfObjectModel_vtableFunc14();
		virtual void CfObjectModel_vtableFunc15();
		virtual void CfObjectModel_vtableFunc16();
		virtual void CfObjectModel_vtableFunc17();
		virtual void CfObjectModel_vtableFunc18();
		virtual void CfObjectModel_vtableFunc19();
		virtual void CfObjectModel_vtableFunc20();

		//0x0: vtable
		//0x0-70: CfObject
		u8 unk70_3[0x1C];
		u16 unk8C_3;
		u8 unk8E_3[0x30];
	};
}
