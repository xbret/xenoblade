#pragma once

#include <types.h>
#include "monolib/work/CWorkThread.hpp"

class CLibHbmControl : public CWorkThread {
public:
    CLibHbmControl(const char* pName, CWorkThread* pParent);
    ~CLibHbmControl();

    DECL_WORKTHREAD_CREATE(CLibHbmControl);

    static void create();
    static bool isInitialized();
    static CLibHbmControl* getInstance();
    static bool func_8045E530();

private:

private:
    static const int MAX_CHILD = 1;

    static CLibHbmControl* spInstance;
};
