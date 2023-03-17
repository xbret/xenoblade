#include "types.h"

template <typename T>
class PtrSingleton{
    public:
    static T* GetInstance();
};