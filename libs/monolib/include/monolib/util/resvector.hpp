#pragma once

#include <types.h>
#include "monolib/util/MemManager.hpp"

template<typename T>
class resvector {
public:
    resvector() : mArray(nullptr), mCount(0) {
    }
    ~resvector(){   
        mCount = mHandle;
        if(mHandle != mtl::INVALID_HANDLE && mArray != nullptr){
            mtl::MemManager::deallocate(mArray);
            mArray = nullptr;
        }

        mArray = nullptr;
        mSize = 0;
        mHandle = mtl::INVALID_HANDLE;
    }

    void reserve(mtl::ALLOC_HANDLE handle, u32 size){
        mHandle = handle;
        mArray = static_cast<T*>(mtl::MemManager::allocate_head(handle, size * sizeof(T), 4));
        mCount = 0;
        mSize = size;
    }

    //push_back
    //destroy

    T* begin() const {
        return &mArray[0];
    }

    T* end() const {
        return &mArray[mCount];
    }

    u32 size() const {
        return mCount;
    }

    T operator[](int index){
        return mArray[index];
    }

private:
    T* mArray; //0x0
    u32 mCount; //0x4
    u32 mSize; //0x8
    u32 mHandle; //0xC
};
