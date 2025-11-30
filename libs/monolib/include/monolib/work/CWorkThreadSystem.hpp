#pragma once

#include "types.h"
#include <monolib/monolib_types.hpp>
#include <monolib/util.hpp>

/*
Handle to a work memory region
*/
typedef u32 WORK_ID;
static const WORK_ID INVALID_WORK_ID = 0xFFFFFFFF;

class CWorkThreadSystem{
    friend class CWorkThread;

public:
    static void initialize();
    static void destroy();

    static WORK_ID allocWID(CWorkThread* thread);
    static void freeWID(WORK_ID wid){
        sAllocFlags[wid / 32] &= ~(1 << wid % 32);
        sWorkThreads[wid] = nullptr;
    }

    static mtl::ALLOC_HANDLE getWorkMem();

private:
    static const u32 REGION_SIZE = 0x6FFE0;

    //Highest allowed work ID
    static const WORK_ID MAX_WORK_ID = 2048;
    //One registration bit flag per work ID
    static const u32 ALLOC_FLAGS_COUNT = MAX_WORK_ID / (sizeof(u32) * 8);

    static const char* scRegionName;
    static BOOL sMemAvailable;

    //Handle for all work memory allocations
    static mtl::ALLOC_HANDLE sAllocHandle;

    //Work thread registration flags, by ID
    static u32* sAllocFlags;

    //Registered work threads, by ID
    static CWorkThread** sWorkThreads;
};
