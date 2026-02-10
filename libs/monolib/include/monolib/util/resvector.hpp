#pragma once

#include <types.h>
#include "monolib/util/MemManager.hpp"

template <typename T>
class resvector {
public:
    resvector() : mArray(nullptr), mCount(0) {
    }
    resvector(mtl::ALLOC_HANDLE handle) : mArray(nullptr), mCount(0), mHandle(handle) {
    }
    ~resvector(){   
        destroy();
    }
    
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

    void reserve(mtl::ALLOC_HANDLE handle, u32 size){
        mHandle = handle;
        mArray = static_cast<T*>(mtl::MemManager::allocate_head(handle, size * sizeof(T), 4));
        mCount = 0;
        mSize = size;
    }

    void push_back(T item){
        //NOTE: no bounds check
        mArray[mCount++] = item;
    }

    void destroy(){
        mCount = 0;
        if(mHandle != mtl::INVALID_HANDLE){
            DELETE_OBJ(mArray);
        }

        mArray = nullptr;
        mSize = 0;
        mHandle = mtl::INVALID_HANDLE;
    }

    void clearList(){
        T* ptr = mArray;
        while(ptr != &mArray[mCount]){
            DELETE_OBJ(*ptr);
            ptr++;
        }
    }

    void resetCount(){
        mCount = 0;
    }

private:
    T* mArray; //0x0
    u32 mCount; //0x4
    u32 mSize; //0x8
    u32 mHandle; //0xC
};
