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

    static T* getInstance(){
        return instance;
    }

protected:
    static T* instance;
};

}
