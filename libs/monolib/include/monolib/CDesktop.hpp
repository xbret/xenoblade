#pragma once

#include "types.h"
#include "monolib/CProc.hpp"

class CDesktop : public CProc {
public:
	CDesktop(const char* name, CWorkThread* workThread);

	static CDesktop* getInstance();
};

extern UNKTYPE* func_80455AA0();
