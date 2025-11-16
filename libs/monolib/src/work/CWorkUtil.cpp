#include "monolib/work/CWorkUtil.hpp"
#include "monolib/MemManager.hpp"

const char* CWorkUtil::scRegionName = "WorkThreadSystem";

mtl::ALLOC_HANDLE CWorkUtil::sWorkMemHandle = mtl::INVALID_HANDLE;
BOOL CWorkUtil::sMemAvailable = false;

u32* CWorkUtil::sAllocFlags = nullptr;
CWorkThread** CWorkUtil::sWorkThreads = nullptr;

void CWorkUtil::initialize() {
    sWorkMemHandle = mtl::MemManager::create(
        mtl::MemManager::getHandleMEM1(), 0x6FFE0, scRegionName);

    sMemAvailable = true;

    sAllocFlags = new (sWorkMemHandle) u32[ALLOC_FLAGS_COUNT];

    sWorkThreads = static_cast<CWorkThread**>(
        mtl::MemManager::allocate_head(sWorkMemHandle,
            sizeof(CWorkThread*) * MAX_WORK_ID, 4));

    for (WORK_ID i = 0; i < ALLOC_FLAGS_COUNT; i++) {
        sAllocFlags[i] = 0;
    }
}

WORK_ID CWorkUtil::allocWID(CWorkThread* thread) {
    //Find the first set of alloc flags with a free bit
    for (u32 flag = 0; flag < ALLOC_FLAGS_COUNT; flag++) {

        //All bits set means all IDs allocated
        if (sAllocFlags[flag] != 0xFFFFFFFF) {

            //Find the free bit in the flagset
            u32 bit = 1 << 0;
            u32 flags = sAllocFlags[flag];

            for (u32 i = 0; i < BITS_PER_WORD; i++, bit <<= 1) {
                //ID is already allocated
                if (flags & bit) {
                    continue;
                }

                //Convert bitset & bit index to an absolute index
                WORK_ID wid = flag * BITS_PER_WORD + i;

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


void CWorkUtil::destroy() {
    if (sAllocFlags != nullptr) {
        delete[] sAllocFlags;
        sAllocFlags = nullptr;
    }

    if (sWorkThreads != nullptr) {
        delete[] sWorkThreads;
        sWorkThreads = nullptr;
    }

    mtl::MemManager::erase(sWorkMemHandle);
    sWorkMemHandle = mtl::INVALID_HANDLE;

    sMemAvailable = false;
}

mtl::ALLOC_HANDLE CWorkUtil::getWorkMem() {
    return sWorkMemHandle;
}
