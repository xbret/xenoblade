#pragma once

#include "decomp.h"
#include <types.h>
#include "monolib/util/FixStr.hpp"
#include "monolib/util/RawArray.hpp"
#include <cstring>
#include <cstddef>

namespace mtl {
    
    /*
    Handle to an allocation region (MemRegion).
    Bits 16-23: Region UID
    Bits 24-31: Region index
    */
    typedef u32 ALLOC_HANDLE;
    static const ALLOC_HANDLE INVALID_HANDLE = 0xFFFFFFFF;

    #define ALLOC_HANDLE_UID(handle) ((handle) >> 8 & 0xFF)
    #define ALLOC_HANDLE_REGION(handle) ((handle) & 0xFF)

    static const int MAX_ALLOC_REGION = 80;

    /*
    Allocatable block inside of a memory region.
    */
    struct MemBlock {
        //Minimum size of allocated data
        static const int MIN_SIZE = 64;
        //Maximum size of allocated data
        static const int MAX_SIZE = 0x7FFFFFF;

        MemBlock* prev; //0x0
        MemBlock* next; //0x4
        MemBlock* aligned; //0x8
        u32 size; //0xC
        u16 region; //0x10
        u8 padding[32 - 0x12]; //0x12

        u8* getStartAddr() {
            return reinterpret_cast<u8*>(this) + sizeof(MemBlock);
        }
        u8* getEndAddr() {
            return reinterpret_cast<u8*>(this) + size;
        }

        u32 getDataSize() const {
            return size - sizeof(MemBlock);            
        }

        static MemBlock* getBlockAddr(void* p) {
            return reinterpret_cast<MemBlock*>(
                static_cast<u8*>(p) - sizeof(MemBlock));
        }
    };

    /*
    Region or section of the memory heap.
    */
    class MemRegion {
        friend class MemManager;

    public:
        MemRegion();
        ~MemRegion();

        static void setRegionMaxSize(u32 maxMEM1, u32 maxMEM2);
        static u32 getMEM1MaxSize();
        static u32 getMEM2MaxSize();

        void* allocate(void* buffer, u32 size, int align);

        MemBlock* reallocate(MemBlock* block);
        MemBlock* coalesceRecursive(MemBlock* block);

        MemBlock* getTailBuffer(u32 size, int align, void** buffer);

        static inline void initialize(){
            setRegionMaxSize(MEM1_MAX_SIZE, MEM2_MAX_SIZE);
        }

    private:
        void* allocateImpl(MemBlock* block, void* buffer, u32 size, int align);

        MemBlock* mHead; //0x0
        MemBlock* mTail; //0x4
        MemBlock* mOldest; //0x8
        MemBlock* mYoungest; //0xC
        void* mStartAddress; //0x10
        void* mEndAddress; //0x14
        u32 mNumAlloc; //0x18
        u32 mSize; //0x1C
        u32 mFreeBytes; //0x20
        ml::FixStr<64> mName; //0x24
        ALLOC_HANDLE mHandle; //0x68
        u8 unk6C;

        static u32 sMaxSizeMEM1;
        static u32 sMaxSizeMEM2;

        static const int MEM1_MAX_SIZE = 0x680000;
        static const int MEM2_MAX_SIZE = 0;
    };

    class MemManager {
    public:
        static void initialize();
        static void finalize();

        static DECOMP_INLINE ALLOC_HANDLE create(void* head, u32 size, const char* name);
        static ALLOC_HANDLE create(ALLOC_HANDLE handle, u32 size, const char* name);
        static ALLOC_HANDLE create_tail(ALLOC_HANDLE handle, u32 size, const char* name);

        static ALLOC_HANDLE getHandleMEM1();
        static void setHandleMEM1(ALLOC_HANDLE handle);

        static ALLOC_HANDLE getHandleMEM2();
        static void setHandleMEM2(ALLOC_HANDLE handle);
        
        static ALLOC_HANDLE getHandleStatic();
        static void setHandleStatic(ALLOC_HANDLE handle);

        static bool erase(ALLOC_HANDLE handle);
        static bool empty(ALLOC_HANDLE handle);

        static void* allocate_head(ALLOC_HANDLE handle, u32 size, int align);
        static void* allocate_tail(ALLOC_HANDLE handle, u32 size, int align);
        static bool deallocate(void* p);
        static bool deallocateImpl(void* p);

        static MemRegion* getRegion(ALLOC_HANDLE handle);
        static u32 getRegionSize(ALLOC_HANDLE handle);
        static u32 getBlockSize(ALLOC_HANDLE handle);
        static MemBlock* getTailBuffer(MemRegion* region, u32 size, int align, void** buffer);
        static MemBlock* getMaxBlock(ALLOC_HANDLE handle);
        static u32 getMaxAllocSize(ALLOC_HANDLE handle);
        static void* getMaxAllocData(ALLOC_HANDLE handle);
        static f32 getPercentAlloc(ALLOC_HANDLE handle);
        static void func_804348A4(ALLOC_HANDLE handle, u8 val);

        static u16 calculateCrc(const void* data, u32 len);
        static void func_80434A4C(bool value);

        static bool isOptimalAlloc();
        static void setOptimalAlloc(bool enable);

        static void* allocate(u32 size, ALLOC_HANDLE handle);
        static void* allocate_array(u32 size, ALLOC_HANDLE handle);

        static void* allocate_ex(u32 size, ALLOC_HANDLE handle, int align);
        static void* allocate_array_ex(u32 size, ALLOC_HANDLE handle, int align);

        /* Commented out log function, which would have printed debug messages. It seems like
        monolithsoft had log functions for many classes in addition to this one. */
        //static void log(int something);

    private:
        static const char* scRegionNameMEM1;
        static const char* scRegionNameMEM2;

        static ALLOC_HANDLE sHandleMEM1;
        static ALLOC_HANDLE sHandleMEM2;

        static RawArray<MemRegion, MAX_ALLOC_REGION> sRegionArray;
        static u32 sRegionUniqueId;

        static bool lbl_80667E54;
        static bool lbl_80665E38;
        static bool lbl_80665E39;        
        static bool sIsOptimalAlloc;
    };

}

/*
Allocates object memory from the specified region.
*/
inline void* operator new(size_t size, mtl::ALLOC_HANDLE handle) {
    return mtl::MemManager::allocate(size, handle);
}

/*
Allocates aligned object memory from the specified region.
Specify negative alignment to perform a tail allocation.
*/
inline void* operator new(size_t size, int align, mtl::ALLOC_HANDLE handle) {
    return mtl::MemManager::allocate_ex(size, handle, align);
}

/*
Allocates array memory from the specified region.
*/
inline void* operator new[](size_t size, mtl::ALLOC_HANDLE handle) {
    return mtl::MemManager::allocate_array(size, handle);
}

/*
Allocates aligned array memory from the specified region.
Specify negative alignment to perform a tail allocation.
*/
inline void* operator new[](size_t size, mtl::ALLOC_HANDLE handle, int align) {
    return mtl::MemManager::allocate_array_ex(size, handle, align);
}

//Utility macros

#define DELETE_OBJ(p)                   \
    {                                   \
    if (p != nullptr){                  \
        mtl::MemManager::deallocate(p); \
        p = nullptr;                    \
    }                                   \
    }                                   \


#define DELETE_ARRAY(p)                   \
    {                                     \
    if (p != nullptr){                    \
        delete[] p;                       \
        p = nullptr;                      \
    }                                     \
    }                                     \
