#include "mm/MTRand.hpp"

namespace mm{
namespace mtl{

    //func_8043539C
    MTRand* getInstance(){
        //lbl_806593E0
        static MTRand instance; //stays the same after the first call
        return &instance;
    }

    //nonmatching
    //https://decomp.me/scratch/u24zw
    void MTRand::nextMt(){
        if(!initialized){
            mtInit(0x1571);
        }

        count = 624;

        for(int i = 0; i < 624; i++){
            u32 temp = twister[(i + 1) % 624];
    	    u32 r8 = (twister[i] & 0x80000000) + (temp & 0x7FFFFFFF);
            twister[i] = twister[(i + 397) % 624] ^ (r8 >> 1);
            if (temp % 2) twister[i] ^= 0x9908B0DF;
        }
    }

    u32 MTRand::rand() {
        count--;
         //If count is 0 or less, then regenerate the twister
        if(count <= 0) nextMt();

        u32 r4 = *twisterPtr++;
        r4 ^= (r4 >> 0xB);
        r4 ^= (r4 << 7) & 0x9D2C5680;
        r4 ^= (r4 << 0xF) & 0xEFC60000;
        r4 ^= r4 >> 0x12;

        return r4 >> 1;
    }

}
}