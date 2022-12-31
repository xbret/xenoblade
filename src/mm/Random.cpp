#include "mm/Random.hpp"
#include "mm/MTRand.hpp"

//Part of monolithlib? (namespace according to XCDE)
namespace ml{

    int mtRand(){
        return mm::mtl::getInstanceMTRand()->randInt();
    }


    //Random range (max only)
    //Max is exclusive
    int mtRand(int max){
        if(max != 0){
    	    int randVal = mm::mtl::getInstanceMTRand()->randInt();
    	    return randVal % max;
        }else{
    	    return 0;
        }
    }

    //Random range (min and max)
    //Min is inclusive, max is exclusive
    int mtRand(int min, int max){
        int range = max - min;

        if(range != 0){
    	    int randVal = mm::mtl::getInstanceMTRand()->randInt();
    	    return (randVal % range) + min;
        }else{
    	    return min;
        }
    }

}