#pragma once

#include "types.h"
#include "monolib/CProc.hpp"

class CDesktop : public CProc {
	CDesktop(const char* name, CWorkThread* workThread);
};

extern UNKTYPE* func_80455AA0();
extern CDesktop* getCDesktopInstancePtr();
