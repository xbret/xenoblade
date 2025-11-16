#pragma once

#include "types.h"
#include "monolib/MemManager.hpp"

//Forward declarations
class CWorkThread;

/*
Handle to a work memory region
*/
typedef u32 WORK_ID;
static const WORK_ID INVALID_WORK_ID = 0xFFFFFFFF;

/*
Work memory utilities
*/
class CWorkUtil {
public:
    static void initialize();
    static void destroy();

    static WORK_ID allocWID(CWorkThread* thread);
    static mtl::ALLOC_HANDLE getWorkMem();

private:
    static const WORK_ID MAX_WORK_ID = 2048;

    //One alloc bit flag per work ID
    static const u32 BITS_PER_WORD = sizeof(u32) * 8;
    static const u32 ALLOC_FLAGS_COUNT = MAX_WORK_ID / BITS_PER_WORD;

private:
    static const char* scRegionName;

    static mtl::ALLOC_HANDLE sWorkMemHandle;
    static BOOL sMemAvailable;

    static u32* sAllocFlags;
    static CWorkThread** sWorkThreads;
};
