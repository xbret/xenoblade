#include "monolib/MemManager.hpp"
#include <revolution/OS.h>
#include <cstddef>
#include <cstring>
#include <cmath>

namespace mtl {

//End address of the root MEM2 region
static void* const MEM2_REGION_END = reinterpret_cast<void*>(0x935E0000);

//Dummy value to represent an unused 'aligned' field in memory blocks
static MemBlock* const BLOCK_ALIGNED_NULL = reinterpret_cast<MemBlock*>(0xA7FB94C7);

//Name of the root MEM1 region
const char* MemManager::scRegionNameMEM1 = "Mem1";
//Name of the root MEM2 region
const char* MemManager::scRegionNameMEM2 = "Mem2";

//Handle to the root MEM1 region
ALLOC_HANDLE MemManager::sHandleMEM1 = INVALID_HANDLE;
//Handle to the root MEM2 region
ALLOC_HANDLE MemManager::sHandleMEM2 = INVALID_HANDLE;

//Buffer for memory region structures
u8 MemManager::sRegionBuffer[MAX_ALLOC_REGION * sizeof(MemRegion)];
//Unique ID for the next created region
u32 MemManager::sRegionUniqueId = 0;

bool MemManager::lbl_80667E54 = false;
bool MemManager::lbl_80665E38 = true;
bool MemManager::lbl_80665E39 = true;

//Whether optimal memory allocation is enabled
bool MemManager::sIsOptimalAlloc = false;

//Maximum size of the root MEM1 region
u32 MemRegion::sMaxSizeMEM1 = OS_MEM_MB_TO_B(6);
//Maximum size of the root MEM2 region (unused)
u32 MemRegion::sMaxSizeMEM2 = 0;

MemRegion::MemRegion() :
    mHead(nullptr),
    mTail(nullptr),
    mOldest(nullptr),
    mYoungest(nullptr),
    mStartAddress(nullptr),
    mEndAddress(nullptr),
    mNumAlloc(0),
    mSize(0),
    mFreeBytes(0),
    mHandle(INVALID_HANDLE),
    unk6C(0) {}

MemRegion::~MemRegion() {
    //Must deallocate if this region is not the MEM1/MEM2 region
    if (mHandle != MemManager::getHandleMEM1()
        && mHandle != MemManager::getHandleMEM2()) {
        MemManager::deallocate(mStartAddress);
    }

    //Invalidate handles if this region is the MEM1/MEM2 region
    if (mHandle == MemManager::getHandleMEM1()) {
        MemManager::setHandleMEM1(INVALID_HANDLE);
    } else if (mHandle == MemManager::getHandleMEM2()) {
        MemManager::setHandleMEM2(INVALID_HANDLE);
    }

    mOldest = nullptr;
    mYoungest = nullptr;

    mHead = nullptr;
    mTail = nullptr;

    mStartAddress = nullptr;
    mEndAddress = nullptr;
    
    mSize = 0;
    mNumAlloc = 0;
    mFreeBytes = 0;
}

/*
Configures the maximum size of the root memory regions.
*/
void MemRegion::setRegionMaxSize(u32 maxMEM1, u32 maxMEM2) {
    sMaxSizeMEM1 = maxMEM1;
    sMaxSizeMEM2 = maxMEM2;
}

/*
Gets the maximum root MEM1 memory region size, in bytes.
*/
u32 MemRegion::getMEM1MaxSize() {
    return sMaxSizeMEM1;
}

/*
Gets the maximum root MEM2 memory region size, in bytes.
*/
u32 MemRegion::getMEM2MaxSize() {
    return sMaxSizeMEM2;
}

/*
Attempts to allocate memory from the specified block,
of the specified size and alignment.

Optionally a buffer can be passed in to specify where the allocation
should reside.
*/
void* MemRegion::allocateImpl(MemBlock* block, void* buffer, u32 size, int align) {
    /* Validate the buffer before doing anything.
    If the user didn't specify a buffer, we try to use the block. */
    if (buffer != nullptr) {
        //Can't use buffer because it contains this block
        if (block->getStartAddr() > buffer ||
            block->getEndAddr() < reinterpret_cast<u8*>(buffer) + size) {
            return nullptr;
        }
    } else {
        //Try to get a good address in block memory
        u8* start = block->getStartAddr();
        u32 misalign = reinterpret_cast<u32>(start) % align;
        u8* end = block->getEndAddr();

        //Align address to specified amount
        if (misalign != 0) {
            start = reinterpret_cast<u8*>(block) + align +
                sizeof(MemBlock) - misalign;
        }

        //Block is too small
        if (end < start + size) {
            return nullptr;
        }
    }

    MemBlock* inputBlock = block;

    /* If the user specifies a buffer, we will need to create a header.
    However, it's possible that the block contains the buffer,
    in which case we can skip creating the header structure. */
    if (buffer != nullptr) {
        MemBlock* targetBlock;

        //The block owns the user buffer
        if (reinterpret_cast<u8*>(block) +
            sizeof(MemBlock) + MemBlock::MIN_SIZE > buffer) {
            targetBlock = block;
        } 
        /* The block does not own the user buffer.
        So, we need to split off a chunk of it to use as our own block. */
        else {
            targetBlock = MemBlock::getBlockAddr(buffer);
            std::memcpy(targetBlock, block, sizeof(MemBlock));

            //Input (host) block owns everything up to the buffer address
            u32 newSize = block->size;
            u32 hostSize = reinterpret_cast<u8*>(targetBlock) -
                reinterpret_cast<u8*>(block);

            block->size = hostSize;
            newSize -= hostSize;

            targetBlock->prev = nullptr;
            targetBlock->next = nullptr;
            targetBlock->size = newSize;
        }

        //Now we will use this orphan block for the allocation
        block = targetBlock;
    }

    //If the block address is misaligned, we must offset the data start
    u32 misalign = reinterpret_cast<u32>(block->getStartAddr()) % align;
    u32 offset = misalign != 0 ? align - misalign : 0;

    u32 blockSize = offset + size;
    blockSize += sizeof(MemBlock);

    /* If the size is specified to be zero, we will allocate
    everything in the block, assuming this is a block (not buffer) alloc. */
    if (buffer != nullptr && size == 0) {
        blockSize = block->size;
    }
    /* The block is too small to partition anything away.
    Just remove it from the list and use the entire block. */
    else if (block->size < blockSize + MemBlock::MIN_SIZE) {
        if (block->prev != nullptr) {
            block->prev->next = block->next;
        }
        if (block->next != nullptr) {
            block->next->prev = block->prev;
        }

        if (mHead == block) {
            mHead = block->next;
        }
        if (mTail == block) {
            mTail = block->prev;
        }

        blockSize = block->size;
    } 
    /* Split off the rest of the block that we will not use,
    which first involves creating a new block header. */
    else {
        MemBlock* afterBlock = reinterpret_cast<MemBlock*>(
            reinterpret_cast<u8*>(block) + blockSize);

        std::memcpy(afterBlock, block, sizeof(MemBlock));
        afterBlock->size -= blockSize;
        afterBlock->aligned = afterBlock;

        if (afterBlock->prev != nullptr) {
            afterBlock->prev->next = afterBlock;
        }
        if (afterBlock->next != nullptr) {
            afterBlock->next->prev = afterBlock;
        }

        if (block == mHead) {
            mHead = afterBlock;
        }
        if (block == mTail) {
            mTail = afterBlock;
        }

        /* If we created an orphan block to hold the user buffer,
        insert it into the block list right after the original input block. */
        if (buffer != nullptr && inputBlock != block) {
            if (inputBlock->next != nullptr) {
                afterBlock->next = inputBlock->next;
                inputBlock->next->prev = afterBlock;
            }

            inputBlock->next = afterBlock;
            afterBlock->prev = inputBlock;

            //If the original block was the tail, we need to correct it now
            for (MemBlock* it = mHead; it != nullptr; it = it->next) {
                if (it->next == nullptr) {
                    mTail = it;
                }
            }
        }
    }

    /* Record the aligned header. When it is time to destroy the block,
    we may have a handle to the original (unaligned) header.
    If 'aligned' is ever set, we will know to use that header instead. */
    block->size = blockSize;
    block->aligned = block;

    //Move the header if we created an aligned one
    if (offset != 0) {
        MemBlock* alignedBlock = reinterpret_cast<MemBlock*>(
            reinterpret_cast<u8*>(block) + offset);

        std::memmove(alignedBlock, block, sizeof(MemBlock));
        block = alignedBlock;
    } 

    //Maintain allocation history
    if (mYoungest != nullptr) {
        mYoungest->next = block;
        
        block->prev = mYoungest;
        block->next = nullptr;

        mYoungest = block;
    } else {
        mOldest = block;
        mYoungest = block;

        block->prev = nullptr;
        block->next = nullptr;
    }
    
    return block->getStartAddr();
}

/*
Repositions a memory block inside of its region.
If the block contains an aligned "sub-block" (see 'aligned'), it is collapsed.
*/
MemBlock* MemRegion::reallocate(MemBlock* block) {
    MemBlock* workBlock = block;
    MemBlock* alignedBlock = workBlock->aligned;

    //Use the aligned header instead
    if (alignedBlock != workBlock) {
        std::memmove(alignedBlock, workBlock, sizeof(MemBlock));
        workBlock = alignedBlock;
    }

    workBlock->aligned = BLOCK_ALIGNED_NULL;

    //Re-insert block into sorted list
    for (MemBlock* it = mHead; it != nullptr; it = it->next) {
        //List is sorted ascending by block address
        if (workBlock >= it) {
            continue;
        }

        if (it->prev != nullptr) {
            it->prev->next = workBlock;
        }

        workBlock->prev = it->prev;
        it->prev = workBlock;
        workBlock->next = it;

        //Only need to fix head because we are inserting before 'it'
        if (it == mHead) {
            mHead = workBlock;
        }

        return workBlock;
    }

    //Correct block links
    if (mHead == nullptr) {
        mHead = workBlock;
        mTail = workBlock;
        workBlock->prev = nullptr;
        workBlock->next = nullptr;
    } else {
        mTail->next = workBlock;
        workBlock->prev = mTail;
        workBlock->next = nullptr;
        mTail = workBlock;
    }

    return workBlock;
}

/*
Recursively coalesces a memory block, until it cannot be merged further.
*/
MemBlock* MemRegion::coalesceRecursive(MemBlock* block) {
    MemBlock* prev = block->prev;

    if (block->prev != nullptr) {
        //Blocks must be contiguous in memory
        if (reinterpret_cast<u8*>(block) ==
            reinterpret_cast<u8*>(prev) + prev->size) {

            //Previous block takes ownership
            prev->size += block->size;

            if (block == mTail) {
                mTail = prev;
            }

            prev->next = block->next;

            if (block->next != nullptr) {
                block->next->prev = prev;
                block = prev;
            }
        }
    }

    if (block->next != nullptr) {
        coalesceRecursive(block->next);
    }

    return block;
}

/*
Attempts to allocate memory of the specified size and alignment.
Optionally a buffer can be passed in to specify where the allocation
should reside.
*/
void* MemRegion::allocate(void* buffer, u32 size, int align) {
    MemBlock* it = mHead;

    //The region is empty
    if (it == nullptr) {
        return NULL;
    }

    //Force alignment to four bytes
    if (size != 0 && size % 4 != 0) {
        size = (size + 4) - (size % 4);
    }

    void* resultBuf = nullptr;

    /* "Optimal" allocation tries to find the best fit,
    or the block that will waste the least amount of memory.
    May be MEM2 only for the purpose of assets? */
    if (MemManager::isOptimalAlloc()
        && mHandle == MemManager::getHandleMEM2()
        && buffer == nullptr) {

        //Reasonable minimum block size
        u32 minSize = align + size;
        minSize += MemBlock::MIN_SIZE;

        //Best block found so far
        MemBlock* bestBlock = nullptr;

        //Look for the block which best fits the allocation
        for (; it != nullptr; it = it->next) {
            bool newBest;

            //Block is too small
            if (it->size < minSize) {
                newBest = false;
            } else {
                //Bytes that will be wasted
                u32 overSize = it->size - minSize;

                //First usable result
                if (bestBlock == nullptr || bestBlock->size < minSize) {
                    newBest = true;
                }
                //Potentially best result yet
                else {
                    newBest = overSize < bestBlock->size - minSize;
                }
            }

            if (newBest) {
                bestBlock = it;
            }
        }

        if (bestBlock != nullptr) {
            resultBuf = allocateImpl(bestBlock, buffer, size, align);
        }
    } else {
        //Fast allocation just tries every block until something works
        for (; it != nullptr; it = it->next) {
            resultBuf = allocateImpl(it, buffer, size, align);
            
            if (resultBuf != nullptr) {
                break;
            }
        }
    }

    if (resultBuf == nullptr) {
        return nullptr;
    }

    mFreeBytes -= MemBlock::getBlockAddr(resultBuf)->size;
    mNumAlloc++;

    return resultBuf;
}

/*
Initializes the memory region structures,
and creates the main program regions in MEM1 and MEM2.
*/
void MemManager::initialize() {
    sRegionUniqueId = 0;
    lbl_80665E39 = true;

    for (int i = 0; i < MAX_ALLOC_REGION; i++) {
        ALLOC_HANDLE handle = static_cast<ALLOC_HANDLE>(i);
        MemRegion* region = getRegion(handle);
        new (region) MemRegion();
    }

    //Why assume that it starts from 0x80000000?
    void* mem1RegionLo = OSGetMEM1ArenaLo();
    void* mem1RegionMax = (u8*)0x80000000 + MemRegion::getMEM1MaxSize();
    
    (void)OSGetMEM1ArenaHi(); //unused

    u32 mem1RegionSize = (u8*)mem1RegionMax - (u8*)mem1RegionLo;
    if (mem1RegionMax < mem1RegionLo) {
        mem1RegionSize = (u8*)mem1RegionLo - (u8*)mem1RegionMax;
    }

    //Remaining program region %x / maximum %x
    OSReport("プログラム領域残り %x / 最大 %x\n", mem1RegionSize,
        MemRegion::getMEM1MaxSize());

    if (mem1RegionLo >= mem1RegionMax) {
        //Program region exceeded the limit
        OSReport("プログラム領域が限界を超えました");
    }

    lbl_80665E38 = true;

    (void)OSGetMEM2ArenaHi(); //unused

    sHandleMEM1 = create(mem1RegionLo,
        (u8*)OSGetMEM1ArenaHi() - (u8*)mem1RegionMax, scRegionNameMEM1);

    sHandleMEM2 = create(OSGetMEM2ArenaLo(),
        (u8*)MEM2_REGION_END - (u8*)OSGetMEM2ArenaLo(), scRegionNameMEM2);
}

/*
Destroys all active memory regions.
*/
void MemManager::finalize() {
    for (int i = MAX_ALLOC_REGION - 1; i >= 0; i--) {
        ALLOC_HANDLE handle = static_cast<ALLOC_HANDLE>(i);
        MemRegion* region = getRegion(handle);

        if (region->mStartAddress != nullptr) {
            region->~MemRegion();
        }
    }
}

/*
Attempts to create a root-level memory region beginning at
the specified head address, with the specified size and name.
*/
ALLOC_HANDLE MemManager::create(void* head, u32 size, const char* name) {
    //Find the first unused region
    for (ALLOC_HANDLE handle = 0; handle < MAX_ALLOC_REGION; handle++) {
        MemRegion* region = getRegion(handle);

        //Region is already in-use
        if (region->mStartAddress != nullptr) {
            continue;
        }

        //Allocation handle encodes a unique ID
        handle = static_cast<ALLOC_HANDLE>(sRegionUniqueId++ << 8 | handle);

        region->mHandle = handle;
        region->mStartAddress = head;
        region->mEndAddress = static_cast<u8*>(head) + size;
        region->mOldest = nullptr;
        region->mYoungest = nullptr;

        //One memory block for the entire region
        MemBlock* block = static_cast<MemBlock*>(head);
        std::memset(block, 0, sizeof(MemBlock));
        block->prev = nullptr;
        block->next = nullptr;
        block->size = size;
        block->aligned = BLOCK_ALIGNED_NULL;
        block->region = ALLOC_HANDLE_REGION(handle);
        
        region->mHead = block;
        region->mTail = block;
        region->mNumAlloc = 0;
        region->mSize = size;
        region->mFreeBytes = size;
        region->unk6C = 0;
        region->mName = name;

        return handle;
    }

    return INVALID_HANDLE;  //No available slot was found
}

/*
Attempts to create a memory region as a child of the region
indicated by 'handle', with the specified size and name.

Specify zero size to allocate the largest block in the parent region.
*/
ALLOC_HANDLE MemManager::create(ALLOC_HANDLE handle, u32 size, const char* name) {
    //Extra space for the root block header
    u32 dataSize = size + sizeof(MemBlock);

    //Zero specified size means maximum allocation in this region
    if (size == 0) {
        dataSize = getMaxAllocSize(handle);
    }

    ALLOC_HANDLE child = create(
        allocate_ex(dataSize, handle, 16), dataSize, name);
    
    lbl_80667E54 = false;
    return child;
}

/*
Attempts to create a memory region as a child of the region
indicated by 'handle', with the specified size and name.

The new region is allocated from the tail (or end) of the parent region.

Specify zero size to allocate the largest block in the parent region.
*/
ALLOC_HANDLE MemManager::create_tail(ALLOC_HANDLE handle, u32 size, const char* name) {
    //Extra space for the root block header
    u32 dataSize = size + sizeof(MemBlock);

    //Zero specified size means maximum allocation in this region
    if (size == 0) {
        dataSize = getMaxAllocSize(handle);
    }

    //Negative alignment to signify tail allocation
    ALLOC_HANDLE child = create(
        allocate_ex(dataSize, handle, -16), dataSize, name);
    
    lbl_80667E54 = false;
    return child;
}

/*
Gets the largest block in the memory region indicated by 'handle'.

The data size of this block represents the largest possible allocation,
as heap defragmentation never occurs until something is deallocated. 
*/
MemBlock* MemManager::getMaxBlock(ALLOC_HANDLE handle) {
    MemBlock* maxBlock = getRegion(handle)->mHead;
    
    //Region is empty
    if (maxBlock == nullptr) {
        return nullptr;
    }

    for (MemBlock* it = maxBlock; it != nullptr; it = it->next) {
        if (maxBlock->size < it->size) {
            maxBlock = it;
        }
    }

    return maxBlock;
}

/*
Gets the allocation handle for the root MEM1 region.

MEM1 is used for most object-related allocations
where performance is a priority.
*/
ALLOC_HANDLE MemManager::getHandleMEM1() {
    return sHandleMEM1;
}

/*
Sets the allocation handle for the root MEM1 region.

MEM1 is used for most object-related allocations
where performance is a priority.
*/
void MemManager::setHandleMEM1(ALLOC_HANDLE handle) {
    sHandleMEM1 = handle;
}

/*
Gets the allocation handle for the root MEM2 region.
MEM2 is used for assets and other large allocations.
*/
ALLOC_HANDLE MemManager::getHandleMEM2() {
    return sHandleMEM2;
}

/*
Sets the allocation handle for the root MEM2 region.
MEM2 is used for assets and other large allocations.
*/
void MemManager::setHandleMEM2(ALLOC_HANDLE handle) {
    sHandleMEM2 = handle;
}

/*
Gets the allocation handle for the region intended to hold static data.
*/
ALLOC_HANDLE MemManager::getHandleStatic() {
    return getHandleMEM2();
}

/*
Sets the allocation handle for the region intended to hold static data.
*/
void MemManager::setHandleStatic(ALLOC_HANDLE handle) {
    setHandleMEM2(handle);
}

/*
Attempts to destroy the memory region indicated by 'handle'.
Returns whether the operation was successful.
*/
bool MemManager::erase(ALLOC_HANDLE handle) {
    if (!empty(handle)) {
        return false;
    }

    MemRegion* region = getRegion(handle);
    region->~MemRegion();
    
    return true;
}

/*
Tests whether the memory region indicated by 'handle'
contains any allocations.
*/
bool MemManager::empty(ALLOC_HANDLE handle) {
    //Handle specifies an invalid region
    if (ALLOC_HANDLE_REGION(handle) >= MAX_ALLOC_REGION) {
        return false;
    }

    if (getRegion(handle)->mStartAddress == nullptr) {
        return false;
    }

    return true;
}

/*
Allocates memory from the head (or start) of the region indicated by 'handle'.
The buffer's size and alignment can be configured.
*/
void* MemManager::allocate_head(ALLOC_HANDLE handle, u32 size, int align) {
    MemRegion* region = getRegion(handle);
    return region->allocate(nullptr, size, align);
}

/*
Allocates memory from the tail (or end) of the region indicated by 'handle'.
The buffer's size and alignment can be configured.
*/
void* MemManager::allocate_tail(ALLOC_HANDLE handle, u32 size, int align) {
    MemRegion* region = getRegion(handle);
    void* buffer = nullptr;

    //Allocate a tail-aligned buffer
    if (MemManager::getTailBuffer(region, size, align, &buffer) == nullptr) {
        //TODO: This nullptr gets optimized out
        return nullptr;
    }

    //Setup the block header in this custom buffer
    return region->allocate(buffer, size, align);
}

/*
Attempts to deallocate an allocation of memory.
Returns whether the operation was successful.
*/
bool MemManager::deallocate(void* p) {
    if (p == nullptr) {
        return true;
    }

    //Something is very wrong
    if (sHandleMEM1 == INVALID_HANDLE) {
        return true;
    }

    //Memory region that this allocation belongs to
    MemBlock* block = MemBlock::getBlockAddr(p);
    MemRegion* region = getRegion(block->region);

    //Block should never be this big
    if (block->size - sizeof(MemBlock) - 1 >
        MemBlock::MAX_SIZE - sizeof(MemBlock) - 1) {

        //Since monolithsoft removed their log function, this calls the math log lol
        log(true);
    } else {
        region->mFreeBytes += block->size;

        //Remove the entry from the linked list
        if (block->prev != nullptr) {
            block->prev->next = block->next;
        }
        if (block->next != nullptr) {
            block->next->prev = block->prev;
        }

        //Maintain allocation history
        if (region->mOldest == block) {
            region->mOldest = block->next;
        }
        if (region->mYoungest == block) {
            region->mYoungest = block->prev;
        }

        //Re-position and collapse any aligned blocks
        MemBlock* entry = region->reallocate(block);

        region->coalesceRecursive(entry);

        region->mNumAlloc--;
    }

    return true;
}

/*
Gets a pointer to the memory region indicated by 'handle'.
*/
MemRegion* MemManager::getRegion(ALLOC_HANDLE handle) {
    return reinterpret_cast<MemRegion*>(
        sRegionBuffer + ALLOC_HANDLE_REGION(handle) * sizeof(MemRegion));
}

/*
Gets the size of the memory region indicated by 'handle'.
*/
u32 MemManager::getRegionSize(ALLOC_HANDLE handle) {
    MemRegion* region = getRegion(handle);
    return region->mSize;
}

/*
Gets the total size of all blocks in the memory region indicated by 'handle'.

NOTE: This is NOT the same thing as the region size, due to manual alignment
and other things that can waste bytes during allocation.
*/
u32 MemManager::getBlockSize(ALLOC_HANDLE handle) {
    MemRegion* region = getRegion(handle);
    MemBlock* it = region->mOldest;

    //Region is empty
    if (it == nullptr) {
        return 0;
    }

    u32 total = 0;

    for (; it != nullptr; it = it->next) {
        total += it->size;
    }

    return total;
}

/*
Allocates a tail-aligned buffer from the specified memory region.

Returns the memory block which owns the buffer, while 'buffer'
will be set to the memory allocation.
*/
MemBlock* MemManager::getTailBuffer(MemRegion* region, u32 size, int align, void** buffer) {
    //Region is empty
    if (region->mHead == nullptr) {
        return nullptr;
    }

    /* We will be creating a MemBlock inside of another block's data buffer,
    so we want a little bit of leeway (0x100?). */
    u32 minSize = size + 0x100;

    for (MemBlock* it = region->mTail; it != nullptr; it = it->prev) {
        if (it->size < minSize) {
            continue;
        }

        /* Aligning from the tail now means we start from
        the back of the parent MemBlock. */
        u8* blockData = reinterpret_cast<u8*>(it) + it->size - size;

        //Work backwards to align the address
        u32 misalign = reinterpret_cast<u32>(blockData) % align;
        if (misalign > 0) {
            blockData -= misalign;
        }

        *buffer = blockData;

        //Make sure we have enough room to create the MemBlock later
        if (it <= MemBlock::getBlockAddr(blockData)) {
            return it;
        }
    }

    return nullptr;
}

/*
Gets the largest possible allocation in the region indicated by 'handle'.

Because allocations cannot be split between blocks,
this is always the data size of the largest block in the region.
*/
u32 MemManager::getMaxAllocSize(ALLOC_HANDLE handle) {
    MemBlock* maxBlock = getMaxBlock(handle);

    //Region is empty
    if (maxBlock == nullptr) {
        return 0;
    }

    return maxBlock->getDataSize();
}

/*
Gets the data buffer of the largest block in the region indicated by 'handle'.
*/
void* MemManager::getMaxAllocData(ALLOC_HANDLE handle) {
    MemBlock* it;
    u32 maxSize;
    u32 size;
    MemBlock* maxBlock;
    
    maxBlock = getRegion(handle)->mHead;

    //Region is empty
    if (maxBlock == nullptr) {
        return 0;
    }

    maxSize = maxBlock->size;

    //You wrote getMaxBlock, why not use it???
    for (it = maxBlock; it != nullptr; it = it->next) {
        size = it->size;

        if (maxSize < size) {
            maxSize = size;
            maxBlock = it;
        }
    }

    return maxBlock->getStartAddr();
}

/*
Gets the percentage of memory allocated in the region indicated by 'handle'.
*/
f32 MemManager::getPercentAlloc(ALLOC_HANDLE handle) {
    MemRegion* region = getRegion(handle);

    //No allocations have ever been performed
    if (region->mOldest == nullptr) {
        return 0.0f;
    }

    return static_cast<f32>(region->mSize - region->mFreeBytes) /
        static_cast<f32>(region->mSize) * 100.0f;
}

void MemManager::func_804348A4(ALLOC_HANDLE handle, u8 value) {
    MemRegion* region = getRegion(handle);
    region->unk6C = value;
}

/*
Calculates a custom CRC-16 code for the specified memory buffer.
*/
u16 MemManager::calculateCrc(const void* data, u32 len) {
    if (data == nullptr) {
        return 0xFFFF;
    }

    u32 crc = 0;
    const s8* current = static_cast<const s8*>(data);

    for (int i = 0; i < len; i++, current++) {
        crc |= *current;

        for (int j = 0; j < 8; j++) {
            crc <<= 1;
            if (crc & 0x01000000) {
                crc ^= 0x01100000 ^ 0x2100;
            }
        }
    }

    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 8; j++) {
            crc <<= 1;
            if (crc & 0x01000000) {
                crc ^= 0x01100000 ^ 0x2100;
            }
        }
    }

    return crc >> 8;
}

void MemManager::func_80434A4C(bool value) {
    lbl_80665E39 = value;
}

/*
Tests whether optimal memory allocation is enabled.
*/
bool MemManager::isOptimalAlloc() {
    return sIsOptimalAlloc;
}

/*
Sets whether optimal memory allocation is enabled.
*/
void MemManager::setOptimalAlloc(bool enable) {
    sIsOptimalAlloc = enable;
}

/*
Allocates object memory from the specified region.
*/
void* MemManager::allocate(u32 size, ALLOC_HANDLE handle) {
    return allocate_head(handle, size, 4);
}

/*
Allocates array memory from the specified region.
*/
void* MemManager::allocate_array(u32 size, ALLOC_HANDLE handle) {
    return allocate_head(handle, size, 4);
}

/*
Allocates aligned object memory from the specified region.
Specify negative alignment to perform a tail allocation.
*/
void* MemManager::allocate_ex(u32 size, ALLOC_HANDLE handle, int align) {
    if (align < 0) {
        return allocate_tail(handle, size, -align);
    }

    return allocate_head(handle, size, align);
}

/*
Allocates aligned array memory from the specified region.
Specify negative alignment to perform a tail allocation.
*/
void* MemManager::allocate_array_ex(u32 size, ALLOC_HANDLE handle, int align) {
    if (align < 0) {
        return allocate_tail(handle, size, -align);
    }

    return allocate_head(handle, size, align);
}

} // namespace mtl

//No way they did this shit
#pragma ecplusplus on

//Stub global new operator. Why not just hand off to MemManager?
void* operator new(size_t size) {
    return nullptr;
}

void operator delete(void* p) {
    (void)mtl::MemManager::deallocate(p);
}

void operator delete[](void* p) {
    (void)mtl::MemManager::deallocate(p);
}

#pragma ecplusplus off
