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

#ifdef NONMATCHING  
    //nonmatching
    //https://decomp.me/scratch/LSSIh
    void MTRand::func_804355D4(u32 seed) {
        if(seed == 0) seed = 0x012BD6AA;
        mtInit(seed);
    }
#else
    asm void MTRand::func_804355D4(u32 seed){
        nofralloc
        stwu r1, -0x10(r1)
        cmpwi r4, 0
        stw r31, 0xc(r1)
        bne lbl_804355EC
        lis r4, 0x012BD6AA@ha
        addi r4, r4, 0x012BD6AA@l
    lbl_804355EC:
        lis r5, 0x6C078965@ha
        li r6, 0x4d
        stw r4, 0(r3)
        addi r0, r5, 0x6C078965@l
        addi r4, r3, 4
        li r5, 1
        mtctr r6
    lbl_80435608:
        lwz r7, -4(r4)
        srwi r6, r7, 0x1e
        xor r6, r7, r6
        mullw r6, r6, r0
        add r7, r5, r6
        stw r7, 0(r4)
        srwi r6, r7, 0x1e
        xor r6, r7, r6
        mullw r6, r6, r0
        add r6, r5, r6
        addi r7, r6, 1
        stw r7, 4(r4)
        srwi r6, r7, 0x1e
        xor r6, r7, r6
        mullw r6, r6, r0
        add r6, r5, r6
        addi r7, r6, 2
        stw r7, 8(r4)
        srwi r6, r7, 0x1e
        xor r6, r7, r6
        mullw r6, r6, r0
        add r6, r5, r6
        addi r7, r6, 3
        stw r7, 0xc(r4)
        srwi r6, r7, 0x1e
        xor r6, r7, r6
        mullw r6, r6, r0
        add r6, r5, r6
        addi r7, r6, 4
        stw r7, 0x10(r4)
        srwi r6, r7, 0x1e
        xor r6, r7, r6
        mullw r6, r6, r0
        add r6, r5, r6
        addi r7, r6, 5
        stw r7, 0x14(r4)
        srwi r6, r7, 0x1e
        xor r6, r7, r6
        mullw r6, r6, r0
        add r6, r5, r6
        addi r7, r6, 6
        stw r7, 0x18(r4)
        srwi r6, r7, 0x1e
        xor r6, r7, r6
        mullw r6, r6, r0
        add r6, r5, r6
        addi r5, r5, 8
        addi r6, r6, 7
        stw r6, 0x1c(r4)
        addi r4, r4, 0x20
        bdnz lbl_80435608
        addi r0, r5, -1
        lis r4, 0x6C078965@ha
        slwi r0, r0, 2
        slwi r11, r5, 2
        lwzx r6, r3, r0
        addi r10, r5, 1
        addi r9, r5, 2
        addi r8, r5, 3
        srwi r0, r6, 0x1e
        addi r7, r5, 4
        xor r6, r6, r0
        addi r0, r4, 0x6C078965@l
        add r4, r3, r11
        mullw r12, r6, r0
        slwi r11, r10, 2
        slwi r10, r9, 2
        slwi r9, r8, 2
        slwi r8, r7, 2
        addi r6, r5, 5
        add r31, r5, r12
        slwi r7, r6, 2
        srwi r12, r31, 0x1e
        stw r31, 0(r4)
        xor r12, r31, r12
        li r6, 1
        mullw r12, r12, r0
        add r12, r5, r12
        addi r12, r12, 1
        stw r12, 4(r4)
        lwzx r12, r3, r11
        srwi r11, r12, 0x1e
        xor r11, r12, r11
        mullw r11, r11, r0
        add r11, r5, r11
        addi r11, r11, 2
        stw r11, 8(r4)
        lwzx r11, r3, r10
        srwi r10, r11, 0x1e
        xor r10, r11, r10
        mullw r10, r10, r0
        add r10, r5, r10
        addi r10, r10, 3
        stw r10, 0xc(r4)
        lwzx r10, r3, r9
        srwi r9, r10, 0x1e
        xor r9, r10, r9
        mullw r9, r9, r0
        add r9, r5, r9
        addi r9, r9, 4
        stw r9, 0x10(r4)
        lwzx r9, r3, r8
        srwi r8, r9, 0x1e
        xor r8, r9, r8
        mullw r8, r8, r0
        add r8, r5, r8
        addi r8, r8, 5
        stw r8, 0x14(r4)
        lwzx r8, r3, r7
        srwi r7, r8, 0x1e
        xor r7, r8, r7
        mullw r0, r7, r0
        add r5, r5, r0
        addi r0, r5, 6
        stw r0, 0x18(r4)
        stw r6, 0x9c0(r3)
        stw r6, 0x9c4(r3)
        lwz r31, 0xc(r1)
        addi r1, r1, 0x10
    }
#endif


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