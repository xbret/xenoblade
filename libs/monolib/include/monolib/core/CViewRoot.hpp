#pragma once

#include "monolib/work/CWorkThread.hpp"

class CViewRoot : public CWorkThread {
public:
    CViewRoot(const char* pName, CWorkThread* pParent);

    static CViewRoot* create(CWorkThread* pParent);
    static CViewRoot* getInstance();
    static void func_804430C4();
};
