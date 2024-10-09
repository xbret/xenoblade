#include "kyoshin/appgame/cf/CArtsSet.hpp"

namespace cf {
    CArtsParam lbl_80577580;

    CAttackParam::CAttackParam(){
        unk0 = 0;
        unk20 = 0;
        unk78 = 0;
        vtableFunc1();
    }

    CArtsParam::CArtsParam(){
        vtableFunc1();
    }

    void CArtsParam::vtableFunc1(){
        CAttackParam::vtableFunc1();
        unk88 = 0;
    }

    void CArtsParam::vtableFunc3(u8 r4){
        if(unk88 != nullptr){
            unk0 = r4;
        }
    }

    u8 CArtsParam::vtableFunc2(){
        if(unk88 != nullptr){
            return *(u8*)unk88;
        }
        return unk2A;
    }
}
