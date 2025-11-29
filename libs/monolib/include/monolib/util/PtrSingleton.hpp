#pragma once

#include "types.h"

namespace mtl{

template <typename T>
class PtrSingleton{
public:
    PtrSingleton(){
        sInstance = this;
    }

    ~PtrSingleton(){
        sInstance = nullptr;
    }

    static T* getPtr(){
        return sInstance;
    }

    static T* getInstance(){
        static T sInstance;
        return &sInstance;
    }


    //static ? get(){}

protected:
    static T* sInstance;
};

}
