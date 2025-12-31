#pragma once

#include "monolib/work/CWorkThread.hpp"

class CScriptCode : public CWorkThread {
public:
    CScriptCode(const char* pName, CWorkThread* pParent);

    static CScriptCode* create(CWorkThread* pParent);

    static CScriptCode* getInstance();
};
