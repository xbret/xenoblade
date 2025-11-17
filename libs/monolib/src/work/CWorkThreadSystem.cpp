#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/wroot.hpp"
#include "monolib/MemManager.hpp"

using namespace wroot;

const char* CWorkThreadSystem::scRegionName = "WorkThreadSystem";
BOOL CWorkThreadSystem::sMemAvailable = false;

void CWorkThreadSystem::initialize() {
    sAllocHandle = mtl::MemManager::create(
        mtl::MemManager::getHandleMEM1(), REGION_SIZE, scRegionName);

    sMemAvailable = true;

    sAllocFlags = new (sAllocHandle) u32[ALLOC_FLAGS_COUNT];

    sWorkThreads = static_cast<CWorkThread**>(
        mtl::MemManager::allocate_head(sAllocHandle, sizeof(CWorkThread*) * MAX_WORK_ID, 4));

    for (WORK_ID i = 0; i < ALLOC_FLAGS_COUNT; i++) {
        sAllocFlags[i] = 0;
    }
}

WORK_ID CWorkThreadSystem::allocWID(CWorkThread* thread) {
    //Find the first set of alloc flags with a free bit
    for (u32 flag = 0; flag < ALLOC_FLAGS_COUNT; flag++) {

        //All bits set means all IDs allocated
        if (sAllocFlags[flag] != 0xFFFFFFFF) {

            //Find the free bit in the flagset
            u32 bit = 1 << 0;
            u32 flags = sAllocFlags[flag];

            for (u32 i = 0; i < 32; i++, bit <<= 1) {
                //ID is already allocated
                if (flags & bit) {
                    continue;
                }

                //Convert bitset & bit index to an absolute index
                WORK_ID wid = flag * 32 + i;

                //Save thread information
                sAllocFlags[flag] |= bit;
                sWorkThreads[wid] = thread;

                return wid;
            }

            break;
        }
    }

    return INVALID_WORK_ID;
}


void CWorkThreadSystem::destroy() {
    if (sAllocFlags != nullptr) {
        delete[] sAllocFlags;
        sAllocFlags = nullptr;
    }

    if (sWorkThreads != nullptr) {
        delete[] sWorkThreads;
        sWorkThreads = nullptr;
    }

    mtl::MemManager::erase(sAllocHandle);
    sAllocHandle = mtl::INVALID_HANDLE;

    sMemAvailable = false;
}

mtl::ALLOC_HANDLE CWorkThreadSystem::getWorkMem() {
    return sAllocHandle;
}
