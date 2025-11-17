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
Shared work memory data
*/
namespace wroot {

//Highest allowed work ID
static const WORK_ID MAX_WORK_ID = 2048;

//Handle for all work memory allocations
extern mtl::ALLOC_HANDLE sAllocHandle;

//Work thread registration flags, by ID
extern u32* sAllocFlags;
//One registration bit flag per work ID
static const u32 ALLOC_FLAGS_COUNT = MAX_WORK_ID / (sizeof(u32) * 8);

//Registered work threads, by ID
extern CWorkThread** sWorkThreads;

} // namespace wroot
