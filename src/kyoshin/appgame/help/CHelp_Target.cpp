#include "kyoshin/appgame/help/CHelp_Target.hpp"
#include "kyoshin/appgame/UnkClass_80574F50.hpp"
#include "kyoshin/appgame/cf/CfObjectPc.hpp"

extern cf::CfObjectMove* func_80082D54(int playerIndex);
extern cf::CfObjectPc* func_800BFC68(cf::CfObjectMove* objMove);
extern UNKWORD func_800829B8();
extern UNKWORD func_8006EF04(UNKWORD r3);

namespace cf{
	bool CHelp_Target::CHelp_vtableFunc3(){
		CfObjectMove* objMove = func_80082D54(0);
		CfObjectPc* objPc = func_800BFC68(objMove);
		if(func_800829B8() != 0) return false;
		
		UnkClass_80574F50* unused = UnkClass_80574F50::getInstance(); //sure, just don't use it
		
		if(func_8006EF04(0x4000000) != 0) return false;
		if(objPc == nullptr) return false;
		if(objPc->CObjectParam_vtableFunc5() == false) return false;
		
		switch(unkC){
			case 1:
				if(objPc->unkInline1() == nullptr) return false;
			break;
			case 2:
				UNKTYPE* smthElse = objPc->unkInline1();
				if(smthElse == nullptr) return false;
				if(*(int*)((u32)smthElse + 0x15F0) == 2) break;
				else return false;
			break;
			case 3:
				UNKTYPE* smthElse1 = objPc->unkInline2();
				if(smthElse1 == nullptr) return false;
				if(*(s8*)((u32)smthElse1 + 0x91) == 0xC) break;
				else return false;
			break;
		}

		return true;
	}
}
