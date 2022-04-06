//Original copyright comments:

// Mersenne Twister random number generator -- a C++ class MTRand
// Based on code by Makoto Matsumoto, Takuji Nishimura, and Shawn Cokus
// Richard J. Wagner  v1.1  28 September 2009  wagnerr@umich.edu

// The Mersenne Twister is an algorithm for generating random numbers.  It
// was designed with consideration of the flaws in various other generators.
// The period, 2^19937-1, and the order of equidistribution, 623 dimensions,
// are far greater.  The generator is also fast; it avoids multiplication and
// division, and it benefits from caches and pipelines.  For more information
// see the inventors' web page at
// http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt.html

// Reference
// M. Matsumoto and T. Nishimura, "Mersenne Twister: A 623-Dimensionally
// Equidistributed Uniform Pseudo-Random Number Generator", ACM Transactions on
// Modeling and Computer Simulation, Vol. 8, No. 1, January 1998, pp 3-30.

// Copyright (C) 1997 - 2002, Makoto Matsumoto and Takuji Nishimura,
// Copyright (C) 2000 - 2009, Richard J. Wagner
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
// 
//   1. Redistributions of source code must retain the above copyright
//      notice, this list of conditions and the following disclaimer.
//
//   2. Redistributions in binary form must reproduce the above copyright
//      notice, this list of conditions and the following disclaimer in the
//      documentation and/or other materials provided with the distribution.
//
//   3. The names of its contributors may not be used to endorse or promote 
//      products derived from this software without specific prior written 
//      permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// The original code included the following notice:
// 
//     When you use this, send an email to: m-mat@math.sci.hiroshima-u.ac.jp
//     with an appropriate reference to your work.
// 
// It would be nice to CC: wagnerr@umich.edu and Cokus@math.washington.edu
// when you write.


/* Monolithsoft made slight modifications from the most commonly found version,
most notably changing function names.
This might be the version this is based on: https://gist.github.com/yuikns/10017640 */

#pragma once

#include "types.h"

namespace ml{

//Probably uses a singleton template

class MTRand{
protected:
    static const int N = 624; //length
    static const int M = 397; //period
    u32 state[N]; //twister
    int left; //0x9C0
    BOOL initialized; //0x9C4
    u32* pNext; //0x9C8
    u32 unk9D0;

public:
    MTRand() {
        srand(0x012BD6AA);
        pNext = state;
    }

    static MTRand* getInstance();
    void srand(u32);
    void nextMt();
    u32 rand32();
    u32 rand31();
    float randFloat();
    float randFloat1();

	inline u32 rand(){
		return rand31();
	}

	inline u32 rand(int max){
		if(max != 0){
			int randVal = rand();
			return randVal % max;
		}else{
			return 0;
		}
	}

	inline u32 rand(int min, int max){
		int range = max - min;
		int result = 0;

		if(range != 0){
			int randVal = rand();
			result = (randVal % range);
		}else{
			result = 0;
		}

		return min + result; //wtf? why not just add it before?
	}

protected:
    inline u32 hiBit(u32 u) { return u & 0x80000000; }
    inline u32 loBit(u32 u) { return u & 0x00000001; }
    inline u32 loBits(u32 u) { return u & 0x7fffffff; }
    inline u32 mixBits(u32 u, u32 v) { return hiBit(u) | loBits(v); }
    inline u32 magic(u32 u) { return loBit(u) ? 0x9908b0dfUL : 0x0UL; }
    inline u32 twist(u32 m, u32 s0, u32 s1) {
        const u32 y = mixBits(s0, s1);
        /* BUG?: Based on the standard implementation this should be magic(y),
        but this might've been an intentional change */
        const u32 mask = magic(s1);
        return m ^ (mask ^ (y >> 1));
    }
};

}
