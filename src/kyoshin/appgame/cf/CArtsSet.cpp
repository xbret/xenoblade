#include "kyoshin/appgame/cf/CArtsSet.hpp"

namespace cf {
    _sArtsSet::_sArtsSet(){
        vtableFunc1();
    }

    void CArtsSet::vtableFunc1(){
        _sArtsSet::vtableFunc1();

        for(int i = 0; i < 24; i++){
            mArtsParams[i].vtableFunc1();
        }
    }
}
