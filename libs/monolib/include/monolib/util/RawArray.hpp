#pragma once

#include <types.h>

namespace mtl{

template <typename T>
struct RawArrayEntry {
    u8 data[sizeof(T)];

    void initialize(){
        T* element = getValue();
        new (element) T();
    }

    T* getValue(){
        return reinterpret_cast<T*>(data);
    }
};

template <typename T, size_t N>
class RawArray {
public:
    static const int MAX_ELEMENTS = N;

    void initialize(){
        for(int i = 0; i < MAX_ELEMENTS; i++){
            values[i].initialize();
        }
    }

    T* operator[](u32 index){
        return values[index].getValue();
    }

private:
    RawArrayEntry<T> values[N];
};

} //namespace mtl
