#pragma once

#include "types.h"
#include "monolib/CProc.hpp"

//Forward declarations
class CView;

class CDesktop : public CProc {
public:
    CDesktop(const char* name, CWorkThread* workThread);

    static CDesktop* getInstance();
};

//Not sure if this is CView. It at least inherits from CWorkThread
extern CWorkThread* func_80455AA0();
