#pragma once

#include "types.h"

namespace mtl{

template <typename T>
class PtrSingleton{
public:
    PtrSingleton(){
        instance = this;
    }

    ~PtrSingleton(){
        instance = nullptr;
    }

    static T* getPtr(){
        return instance;
    }

    //static ? get(){}

protected:
    static T* instance;
};

}
