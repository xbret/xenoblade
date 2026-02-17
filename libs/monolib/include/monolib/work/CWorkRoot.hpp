#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/util.hpp"

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

    static void entryWork(CWorkThread* pChild, CWorkThread* pParent, bool prepend);
    static void standbyWork(CWorkThread* pThread, bool arg1);
    static void updateWork(CWorkThread* pThread, bool arg1);
    static void standbyWork();
    static void renderWork();

    static bool runSingle();
    static void exit();
    static void run();
    static void preRetraceCallback(u32 retraceCount);

    static void setException(CException* pException);
    static CException* func_80444384();

private:
    enum ExitMode {
        EXIT_PROG_END,
        EXIT_WII_MENU,
        EXIT_RESTART,
        EXIT_SHUTDOWN
    };

    static bool dummy1(CWorkThread* pThread);
    static inline bool isShutdownAll();
    static inline void initializeComponents();
    static inline void destroyComponents();

    static ExitMode sExitMode;
    static CException* sException;
    static CErrorWii sErrorWii;
};
