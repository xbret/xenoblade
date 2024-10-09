#include "kyoshin/appgame/cf/object/CfObjectActor.hpp"

namespace cf {
    /* TODO: find out what base class the static cast is
    casting down to */
    CfObjectActor::CfObjectActor() :
    CActorParam(static_cast<CObjectParam*>(this), nullptr) {
        
    }
}
