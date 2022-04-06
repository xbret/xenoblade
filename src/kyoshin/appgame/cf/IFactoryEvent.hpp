#pragma once

#include "types.h"

namespace cf{

	class IFactoryEvent{
	public:
		virtual void FactoryEvent1(){}
		virtual void FactoryEvent2() = 0;
		virtual void FactoryEvent3(){}
		virtual void FactoryEvent4(){}
	};

}
