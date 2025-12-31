#pragma once

#include "monolib/work/CWorkThread.hpp"

class CViewRoot : public CWorkThread {
public:
    CViewRoot(const char* pName, CWorkThread* pParent);

    static CViewRoot* create(CWorkThread* pParent);
};
