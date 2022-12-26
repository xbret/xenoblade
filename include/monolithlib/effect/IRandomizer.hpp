#ifndef _MLIB_IRANDOMIZER_HPP
#define _MLIB_IRANDOMIZER_HPP

#include "types.h"

class IRandomizer{
public:
    virtual u32 rand();
    virtual float randF();
    virtual float randFHalf();
    virtual float randSign();
};

#endif