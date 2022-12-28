#ifndef _MM_MTRAND_HPP
#define _MM_MTRAND_HPP

#include "types.h"

namespace mm{
namespace mtl{
//Implementation of the Mersenne Twister RNG algorithm (MT19937)

//https://gist.github.com/yuikns/10017640
class MTRand{
public:
    static const int N = 624; //length

protected:
    static const int M = 397; //period
    u32 state[N]; //twister
    int left; //0x9C0
    BOOL initialized; //0x9C4
    u32* pNext; //0x9C8

public:
    MTRand() {
        mtInit(0x012BD6AA);
        pNext = state;
    }
    

    void mtInit(u32);
    void func_804355D4();
    void func_804357E8();
    void nextMt();
    u32 randInt();
    float func_80435B5C();
    float func_80435BF8();
    void func_80435C9C(); //may not be part of the class

protected:
    inline u32 hiBit(u32 u) { return u & 0x80000000; }
    inline u32 loBit(u32 u) { return u & 0x00000001; }
    inline u32 loBits(u32 u) { return u & 0x7fffffff; }
    inline u32 mixBits(u32 u, u32 v) { return hiBit(u) | loBits(v); }
    inline u32 magic(u32 u) { return loBit(u) ? 0x9908b0dfUL : 0x0UL; }
    inline u32 twist(u32 m, u32 s0, u32 s1) {
        const u32 y = mixBits(s0, s1);
        const u32 mask = magic(s1);
        return m ^ (mask ^ (y >> 1));
    }
};

}
}

#endif