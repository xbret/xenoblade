#pragma once

#include "types.h"
#include "monolib/MemManager.hpp"
#include "monolib/work/wroot.hpp"

//Forward declarations
class CWorkThread;

class CWorkThreadSystem {
public:
    static void initialize();
    static void destroy();

    static WORK_ID allocWID(CWorkThread* thread);
    static void freeWID(WORK_ID wid) {
        wroot::sAllocFlags[wid / 32] &= ~(1 << wid % 32);
        wroot::sWorkThreads[wid] = nullptr;
    }

    static mtl::ALLOC_HANDLE getWorkMem();

private:
    static const u32 REGION_SIZE = 0x6FFE0;

    static const char* scRegionName;
    static BOOL sMemAvailable;
};
