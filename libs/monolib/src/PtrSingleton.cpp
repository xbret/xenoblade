#include "monolib/PtrSingleton.hpp"

template <typename T>
static T* PtrSingleton::getInstance(){
    static T instance;
    return &instance;
}
