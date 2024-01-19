#include "monolib/Random.hpp"
#include "monolib/MTRand.hpp"

namespace ml{

	void mtInit(u32 seed){
		MTRand::getInstance()->srand(seed);
	}

	int mtRand(){
		return MTRand::getInstance()->rand();
	}


	//Random range (max only)
	//Max is exclusive
	int mtRand(int max){
		return MTRand::getInstance()->rand(max);
	}

	//Random range (min and max)
	//Min is inclusive, max is exclusive
	int mtRand(int min, int max){
		return MTRand::getInstance()->rand(min, max);
	}

}
