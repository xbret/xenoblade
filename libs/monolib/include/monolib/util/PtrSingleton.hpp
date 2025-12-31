#pragma once

#include <types.h>

namespace mtl{

template <typename T>
class PtrSingleton{
public:
    PtrSingleton(){
        spInstance = static_cast<T*>(this);
    }

    ~PtrSingleton(){
        spInstance = nullptr;
    }

    static T* getInstance(){
        return spInstance;
    }

protected:
    static T* spInstance;
};

template <typename T> T* PtrSingleton<T>::spInstance;

}
