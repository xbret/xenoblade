#include "kyoshin/appgame/cf/CfCamLookatIntf.hpp"

namespace cf{
using namespace ml;

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
    camEvent->lookat = v;
    camEvent->unk264 = 0;
}
}
