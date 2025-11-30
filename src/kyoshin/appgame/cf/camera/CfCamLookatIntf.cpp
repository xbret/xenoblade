#include "kyoshin/appgame/cf/camera/CfCamLookatIntf.hpp"

using namespace ml;

namespace cf{
    void CfCamLookatIntf::update(CfCamEvent* camEvent){
    }

    void CfCamLookatIntf::setPos(CfCamEvent* camEvent, CVec3 const& v) {
        camEvent->unk28 = v;
        camEvent->unk274 = v;
        camEvent->unk264 = 0;
    }

    void CfCamLookatIntf::setDir(CfCamEvent* camEvent, CVec3 const& v) {
    }

    void CfCamLookatIntf::setLookat(CfCamEvent* camEvent, CVec3 const& v) {
        camEvent->mLookat = v;
        camEvent->unk264 = 0;
    }
}
