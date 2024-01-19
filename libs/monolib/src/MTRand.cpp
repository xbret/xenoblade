#include "monolib/MTRand.hpp"

namespace ml{

	MTRand* MTRand::getInstance(){
		static MTRand instance;
		return &instance;
	}

	void MTRand::srand(u32 seed) {
		if(seed == 0) seed = 0x012BD6AA;

		state[0] = seed;

		for(int i = 1; i < N; i++){
			state[i] = 0x6C078965 * (state[i - 1] ^ (state[i - 1] >> 30)) + i;
		}

		left = 1;
		initialized = true;
	}

	void MTRand::nextMt(){
		if(!initialized){
			srand(0x1571);
		}

		left = N;
		pNext = state;

		/* Same as:
		for(int i = 0; i < N; i++){
			state[i] = twist(state[(i + M) % N],state[i],state[(i + 1) % N]);
		} */

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

	inline u32 MTRand::rand32() {
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

	u32 MTRand::rand31(){
		return rand32() >> 1;
	}

	/* Could also be 1/4294967296, but since it doesn't make a difference there's
	no way to know */

	//func_80435B5C
	float MTRand::randFloat() {
		return float(rand32()) * float(1.0/4294967295.0);
	}

	//func_80435BF8
	float MTRand::randFloat1() {
		return (float(rand32()) + 0.5f) * float(1.0/4294967295.0);
	}

}
