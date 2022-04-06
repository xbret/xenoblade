#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"

class CWorkSystem : public CWorkThread {
public:
	static CWorkSystem* getInstance();
};

void func_80444874(void* func);

