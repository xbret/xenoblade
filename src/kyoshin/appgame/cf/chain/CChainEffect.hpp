#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/IObjectInfo.hpp"

namespace cf {
	//size: 0xC
	class CChainEffect : public IObjectInfo {
	public:
		CChainEffect();
		virtual ~CChainEffect(){}
		virtual void IObjectInfo_vtableFunc1();

		//0x0: vtable
		//0x0-4: IObjectInfo
		u32 unk4;
		u32 unk8;
	};
}
