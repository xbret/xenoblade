#pragma once

#include "kyoshin/appgame/cf/CfObjectActor.hpp"

namespace cf{
	class CfObjectPc : public CfObjectActor{
	public:
		//vtable 2 (CActorParam)
		//virtual void CActorParam_vtableFunc4();
		//virtual void CActorParam_vtableFunc86();
		//virtual void CActorParam_vtableFunc88();
		//virtual void CActorParam_vtableFunc166();
		//virtual void CActorParam_vtableFunc167();
		//virtual void CActorParam_vtableFunc173();
		//virtual void CActorParam_vtableFunc176();
		//virtual void CActorParam_vtableFunc178();
		//vtable 4 (CObjectParam)
		//virtual void CObjectParam_virtualFunc4();
		//vtable 4 (CfObject)
		//virtual void func_800C1220(); (thunk for dtor)
		//virtual void CfObject_vtableFunc2();
		//virtual void CfObject_vtableFunc3();
		//virtual void CfObject_vtableFunc4();
		//virtual void CfObject_vtableFunc6();
		//vtable 4 (CfObjectMove)
		//virtual void CfObjectMove_vtableFunc16();
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
