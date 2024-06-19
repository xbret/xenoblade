#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectMove.hpp"
#include "kyoshin/appgame/cf/CAIAction.hpp"
#include "kyoshin/appgame/cf/CActorParam.hpp"

namespace cf{
	class CfObjectActor : public CActorParam, public CAIAction, public CfObjectMove{
	public:
		//vtable 4 (CfObjectActor)
		virtual ~CfObjectActor();
		virtual void CfObjectActor_vtableFunc2();
		virtual void CfObjectActor_vtableFunc3();
		virtual void CfObjectActor_vtableFunc4();
		virtual void CfObjectActor_vtableFunc5();
		virtual void CfObjectActor_vtableFunc6();
		virtual void CfObjectActor_vtableFunc7();
		virtual void CfObjectActor_vtableFunc8();
		virtual void CfObjectActor_vtableFunc9();
		virtual void CfObjectActor_vtableFunc10();
		virtual void CfObjectActor_vtableFunc11();
		virtual void CfObjectActor_vtableFunc12();
		virtual void CfObjectActor_vtableFunc13();
	};
}
