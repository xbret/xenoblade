#pragma once

#include <types.h>

namespace mtl {
    template <typename T, size_t N>
    struct fixed_vector {

        fixed_vector(){
            mCount = 0;
        }

        //T* begin()
        //T* end()
        //T& at(u32 index)
        //T* find(const T& value)
        //T* erase(T* value)

        int size() const {
            return mCount;
        }

        bool empty() const {
            return mCount == 0;
        }

        T& operator[](u32 index){
            return mArray[index];
        }

        void push_back(const T& value){
            mArray[mCount++] = value;
        }

        T mArray[N];
        int mCount;
    };
} //namespace mtl
