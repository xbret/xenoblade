#include "mm/MTRand.hpp"

namespace mm{
namespace mtl{

    inline void MTRand::mtInit(u32 seed){
        state[0] = seed;

        for(int i = 1; i < 624; i++){
            state[i] = 0x6C078965 * (state[i - 1] ^ (state[i - 1] >> 30)) + i;
        }

        left = 1;
        initialized = true;
    }

    //func_8043539C
    MTRand* getInstance(){
        //lbl_806593E0
        static MTRand instance; //stays the same after the first call
        return &instance;
    }

    void MTRand::nextMt(){
        if(!initialized){
            mtInit(0x1571);
        }

        left = N;
        pNext = state;

        /*
        Same as:
        for(int i = 0; i < N; i++){
            u32 r8 = (state[i] & 0x80000000) | (state[(i + 1) % N] & 0x7FFFFFFF);
	        u32 r6 = (state[(i + 1) % N] % 2) == 1 ? 0x9908B0DF : 0;
	        state[i] = state[(i + M) % N] ^ (r6 ^ (r8 >> 1));
        }
        */

        //Stupid
        int i;
        u32* p = state;

        for(i = N - M + 1; --i; ++p) {
	    	*p = twist(p[M], p[0], p[1]);
        }
	    for(i = M; --i; ++p) {
	    	*p = twist(p[M - N], p[0], p[1]);
        }
	    *p = twist(p[M - N], p[0], state[0]);
    }

    u32 MTRand::randInt() {
        left--;
         //If left is 0 or less, then regenerate the twister
        if(left <= 0) nextMt();

        u32 r4 = *pNext++;
        r4 ^= (r4 >> 0xB);
        r4 ^= (r4 << 7) & 0x9D2C5680;
        r4 ^= (r4 << 0xF) & 0xEFC60000;
        r4 ^= r4 >> 0x12;
        return r4 >> 1;
    }

}
}