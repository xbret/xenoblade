#ifndef _MM_MTRAND_HPP
#define _MM_MTRAND_HPP

#include "types.h"

namespace mm{
namespace mtl{
//Implementation of the Mersenne Twister RNG algorithm (MT19937)

struct MTRand{
public:
    u32 twister[624];
    int count; //0x9C0
    BOOL initialized; //0x9C4
    u32* twisterPtr; //0x9C8
    
    MTRand() {
        mtInit(0x012BD6AA);
    }
    
    //This gets inlined
    void mtInit(u32 seed){
        twister[0] = seed;
    
        for(int i = 1; i < 624; i++){
            twister[i] = 0x6C078965 * (twister[i - 1] ^ (twister[i - 1] >> 30)) + i;
        }
    
        count = 1;
        initialized = true;
        twisterPtr = twister;
    }
    
    void func_804355D4();
    void func_804357E8();
    void nextMt();
    u32 rand();
    float func_80435B5C();
    float func_80435BF8();
    void func_80435C9C(); //may not be part of the class
};

}
}

#endif