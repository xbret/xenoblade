#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CObjectParam.hpp"

namespace cf{
	//min size: 0x70
	class CfObject : public CObjectParam{
	public:
		//vtable 1 (CfObject)
		virtual ~CfObject(); //0x54
		virtual void CfObject_vtableFunc2() = 0;
		virtual void CfObject_vtableFunc3();
		virtual void CfObject_vtableFunc4() = 0;
		virtual void CfObject_vtableFunc5();
		virtual void CfObject_vtableFunc6();
		virtual void CfObject_vtableFunc7() = 0;
		virtual void CfObject_vtableFunc8() = 0;
		virtual void CfObject_vtableFunc9();
		virtual void CfObject_vtableFunc10();
		virtual void CfObject_vtableFunc11();
		virtual void CfObject_vtableFunc12();
		virtual void CfObject_vtableFunc13();
		virtual void CfObject_vtableFunc14();
		virtual void CfObject_vtableFunc15();
		virtual void CfObject_vtableFunc16();
		virtual void CfObject_vtableFunc17();
		virtual void CfObject_vtableFunc18();
		virtual void CfObject_vtableFunc19();
		virtual void CfObject_vtableFunc20();
		virtual void CfObject_vtableFunc21();
		virtual void CfObject_vtableFunc22();
		virtual void CfObject_vtableFunc23();
		virtual void CfObject_vtableFunc24();
		virtual void CfObject_vtableFunc25();
		virtual void CfObject_vtableFunc26();
		virtual void CfObject_vtableFunc27();
		virtual void CfObject_vtableFunc28();
		virtual void CfObject_vtableFunc29();
		virtual void CfObject_vtableFunc30();
		virtual void CfObject_vtableFunc31();
		virtual void CfObject_vtableFunc32();
		virtual void CfObject_vtableFunc33();
		virtual void CfObject_vtableFunc34();
		virtual void CfObject_vtableFunc35();
		virtual void CfObject_vtableFunc36();
		virtual void CfObject_vtableFunc37();
		virtual void CfObject_vtableFunc38();
		virtual void CfObject_vtableFunc39();
		virtual void CfObject_vtableFunc40();
		virtual void CfObject_vtableFunc41();
		virtual void CfObject_vtableFunc42();
		virtual void CfObject_vtableFunc43();
		virtual void CfObject_vtableFunc44();
		virtual void CfObject_vtableFunc45();
		virtual void CfObject_vtableFunc46();
		virtual void CfObject_vtableFunc47();
		virtual void CfObject_vtableFunc48();
		virtual void CfObject_vtableFunc49();
		virtual void CfObject_vtableFunc50();
		virtual void CfObject_vtableFunc51();
		virtual void CfObject_vtableFunc52();
		virtual void CfObject_vtableFunc53();
		virtual void CfObject_vtableFunc54();
		virtual void CfObject_vtableFunc55();
		virtual void CfObject_vtableFunc56();
		virtual void CfObject_vtableFunc57();
		virtual void CfObject_vtableFunc58();
		virtual void CfObject_vtableFunc59();
		virtual void CfObject_vtableFunc60();
		virtual void CfObject_vtableFunc61();
		virtual void CfObject_vtableFunc62();
		virtual void CfObject_vtableFunc63();
		virtual void CfObject_vtableFunc64();
		virtual void CfObject_vtableFunc65();
		virtual void CfObject_vtableFunc66() = 0;
		virtual void CfObject_vtableFunc67();
		virtual void CfObject_vtableFunc68() = 0;
		virtual void CfObject_vtableFunc69();
		virtual void CfObject_vtableFunc70();
		virtual void CfObject_vtableFunc71();
		virtual void CfObject_vtableFunc72();
		virtual void CfObject_vtableFunc73();

		//not sure if belongs here? (can be in any class from CObjectState to CfObjectMove)
		void func_800BE898(int, u32, float, float);


		//0x0: vtable
		//0x0-38: CObjectParam
		u8 unk38_3[0x38];
	};
}
