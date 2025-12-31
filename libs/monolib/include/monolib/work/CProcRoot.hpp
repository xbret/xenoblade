#pragma once

#include "monolib/work/CWorkThread.hpp"

class CProcRoot : public CWorkThread {
public:
    CProcRoot(const char* pName, CWorkThread* pParent);

    static CProcRoot* create(CWorkThread* pParent);
};

//Possibly member of CWorkThread?
extern bool func_80439AD4(CWorkThread* pThread);
