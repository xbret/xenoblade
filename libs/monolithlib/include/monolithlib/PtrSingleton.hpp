#pragma once

#include "types.h"

namespace mtl{

template <typename T>
class PtrSingleton{
public:
    static T* getInstance();
};

}
