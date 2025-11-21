#pragma once

#include "types.h"

//Forward declarations
class CWorkThread;

class CWorkRoot {
public:
    static void initialize();
    static void destroy();

    static void entryWork(CWorkThread* pChild, CWorkThread* pParent, bool dontNotify);
    static bool func_80443D80(CWorkThread* pThread);
    static void standbyWork(CWorkThread* pThread, bool arg1);
    static void updateWork(CWorkThread* pThread, bool arg1);

    static void run();
    static void exit();

private:
    enum ExitType {
        EXIT_TYPE_PROGRAM_END,
        EXIT_TYPE_WII_MENU,
        EXIT_TYPE_WII_RESTART,
        EXIT_TYPE_WII_POWEROFF,
    };

private:
    static ExitType sExitType;
};
