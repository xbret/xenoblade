#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"

/*
Main game framework class. It handles setting up/cleaning up most of the framework
components, and contains the core program loop, which is responsible for managing/
updating all of the threads/processes the game uses as well as other things. This
includes the main game process, which gets ran by CDesktop, which itself is ran
by this class.
*/
class CWorkRoot{
public:

    static void initialize();
    static void destroy();

    static void entryWork(CWorkThread* pChild, CWorkThread* pParent, bool dontNotify);
    static bool isThreadRunning(CWorkThread* pThread);
    static void standbyWork(CWorkThread* pThread, bool arg1);
    static bool func_80443F30();
    static void updateWork(CWorkThread* pThread, bool arg1);
    static void func_8044406C();

    static bool update();
    static void exit();
    static void run();
    static void preRetraceCallback(u32 retraceCount);

private:
    enum ExitMode {
        EXIT_PROG_END,
        EXIT_WII_MENU,
        EXIT_RESTART,
        EXIT_SHUTDOWN
    };

    static ExitMode sExitMode;
};
