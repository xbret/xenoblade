#pragma once

#include "monolib/work/CWorkThread.hpp"

class CProcRoot : public CWorkThread {
public:
    CProcRoot(const char* pName, CWorkThread* pParent);

    static CProcRoot* create(CWorkThread* pParent);
    static CProcRoot* getInstance();
};

//Possibly member of CWorkThread?
extern bool hasChild(CWorkThread* pThread);
