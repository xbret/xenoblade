#include "mm/Math.hpp"
#include "mm/MTRand.hpp"

//Namespace according to XCDE
namespace mm{
namespace mtl{

    MTRand* getInstanceMTRand(){
        static MTRand instance;
        return &instance;
    }

    //FUN_003e4740
    //FUN_002c29e4
    //FUN_0027229c
    void MTRand::mtInit(u32 seed) {
        if(seed == 0) seed = 0x012BD6AA;

        state[0] = seed;

        for(int i = 1; i < 624; i++){
            state[i] = 0x6C078965 * (state[i - 1] ^ (state[i - 1] >> 30)) + i;
        }

        left = 1;
        initialized = true;
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
	        state[i] = twist(state[(i + M) % N],state[i],state[(i + 1) % N]);
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

    inline u32 MTRand::randInt() {
        left--;
        //If left reached 0, then regenerate the twister
        if(left <= 0) nextMt();

        u32 r4 = *pNext++;
        r4 ^= (r4 >> 0xB);
        r4 ^= (r4 << 7) & 0x9D2C5680;
        r4 ^= (r4 << 0xF) & 0xEFC60000;
        r4 ^= r4 >> 0x12;
        return r4;
    }

    u32 MTRand::rand(){
        return randInt() >> 1;
    }

    /* Could also be 1/4294967296, but since it doesn't make a difference there's
        no way to know */

    //func_80435B5C
    float MTRand::randFloat() {
        return float(randInt()) * float(1.0/4294967295.0);
    }

    //func_80435BF8
    float MTRand::randFloat1() {
        return (float(randInt()) + 0.5f) * float(1.0/4294967295.0);
    }

    //unused variable
    static Rect lbl_80667E68;

    //This function is only used in CViewFrame, so it was probably meant to go there.

    //Checks whether a point is within the given rect
    bool PointInRect(Rect* rect, Rect* point) {
        if(point->x < rect->x) return false;
        s16 maxX =  rect->x + rect->width;
        if(point->x >= maxX) return false;
        if(point->y < rect->y) return false;
        s16 maxY = rect->y + rect->height;
        if(point->y >= maxY) return false;

        return true;
    }



}
}
