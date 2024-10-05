#pragma once

#include "types.h"

namespace cf{
	class IObjectInfo{
	public:
		virtual ~IObjectInfo(){}
		virtual void IObjectInfo_vtableFunc1() = 0; //not sure if this exists
	};
}
