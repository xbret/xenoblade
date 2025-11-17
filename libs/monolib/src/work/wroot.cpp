#include "monolib/work/wroot.hpp"

namespace wroot {

//Handle for all work memory allocations
mtl::ALLOC_HANDLE sAllocHandle = mtl::INVALID_HANDLE;

//Work thread registration flags, by ID
u32* sAllocFlags = nullptr;

//Registered work threads, by ID
CWorkThread** sWorkThreads = nullptr;

} // namespace wroot
