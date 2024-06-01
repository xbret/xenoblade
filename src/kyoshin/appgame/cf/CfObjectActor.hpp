#pragma once

#include "kyoshin/appgame/cf/CfObjectMove.hpp"
#include "kyoshin/appgame/cf/CAIAction.hpp"
#include "kyoshin/appgame/cf/CActorParam.hpp"

namespace cf{
	class CfObjectActor : public CActorParam, public CAIAction, public CfObjectMove{
	public:
		//vtable 2 (CBattleState)
		//virtual void CBattleState_virtualFunc1();
		//virtual void CBattleState_virtualFunc2();
		//virtual void CBattleState_virtualFunc3();
		//virtual void CBattleState_virtualFunc17();
		//virtual void CBattleState_virtualFunc18();
		//vtable 2 (CActorParam)
		//virtual void CActorParam_vtableFunc1();
		//virtual void CActorParam_vtableFunc2();
		//virtual void CActorParam_vtableFunc3();
		//virtual void CActorParam_vtableFunc4();
		//virtual void CActorParam_vtableFunc21();
		//virtual void CActorParam_vtableFunc23();
		//virtual void CActorParam_vtableFunc33();
		//virtual void CActorParam_vtableFunc34();
		//virtual void CActorParam_vtableFunc35();
		//virtual void CActorParam_vtableFunc54();
		//virtual void CActorParam_vtableFunc60();
		//virtual void CActorParam_vtableFunc140();
		//virtual void CActorParam_vtableFunc179();
		//virtual void CActorParam_vtableFunc180();
		//vtable 4 (CObjectParam)
		//virtual void CObjectParam_virtualFunc2();
		//vtable 4 (CfObject)
		//func_801725DC__Q22cf13CfObjectActorFv (thunk for dtor)
		//virtual void CfObject_vtableFunc14();
		//virtual void CfObject_vtableFunc31();
		//vtable 4 (CfObjectMove)
		//virtual void CfObjectMove_vtableFunc6();
		//virtual void CfObjectMove_vtableFunc15();
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
