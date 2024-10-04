#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/IObjectInfo.hpp"

namespace cf{
	class CVision : public IObjectInfo {
	public:
		CVision();
		virtual ~CVision();
		virtual void IObjectInfo_vtableFunc1();
		void func_801A929C(u32 r4);
	};

}
