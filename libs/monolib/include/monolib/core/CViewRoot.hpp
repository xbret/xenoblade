#pragma once

#include "monolib/monolib_types.hpp"
#include "monolib/work/CWorkThread.hpp"

class CViewRoot : public CWorkThread {
public:
    CViewRoot(const char* pName, CWorkThread* pParent);

    static CViewRoot* create(CWorkThread* pParent);
    static CViewRoot* getInstance();
    static void destroyProc(CProc* pProc);
    static void func_80442DA8();
    static void renderView();
    static CView* getView(WORK_ID id);
};
