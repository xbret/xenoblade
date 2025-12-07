#pragma once

#include "monolib/monolib_types.hpp"

class CWorkRoot{
public:
    static void initialize();
    static void destroy();

    static void entryWork(CWorkThread* pChild, CWorkThread* pParent, bool dontNotify);
    static bool func_80443D80(CWorkThread* pThread);
    static void standbyWork(CWorkThread* pThread, bool arg1);
    static void updateWork(CWorkThread* pThread, bool arg1);

    static void run();
    static void exit();
};
