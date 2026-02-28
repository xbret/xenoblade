#pragma once

#include <types.h>

namespace mtl {
    template <typename T, size_t N>
    struct fixed_vector {

        fixed_vector(){
            mCount = 0;
        }

        void erase(T& value){
            for(int i = 0; i < size(); i++){
                if(mArray[i] == value){
                    while(i < mCount - 1){
                        mArray[i] = mArray[i + 1];
                        i++;
                    }
                
                    mCount--;
                    return;
                }
            }
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
