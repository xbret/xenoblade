#include "mm/PtrSingleton.hpp"

template <typename T>
static T* PtrSingleton::GetInstance(){
    static T instance;
    return &instance;
}
