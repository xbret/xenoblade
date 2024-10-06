#pragma once

#include "types.h"
#include "monolib/Math.hpp"

namespace cf{
using namespace ml;

class CfCam{

};

class CfCamFollow : CfCam{

};

class CfCamEvent : CfCamFollow{
public:
    u8 unk0[0x28];
    CVec3 unk28;
    u8 unk34[0x264-0x34];
    float unk264;
    CVec3 lookat;
    CVec3 unk274;
};


class CfCamIntf{
public:
    virtual void update() = 0;
    virtual void setPos() = 0;
    virtual void setDir() = 0;
    virtual void setLookat() = 0;
};

class CfCamLookatIntf : CfCamIntf{
public:
    virtual void update(CfCamEvent*);
    virtual void setPos(CfCamEvent*, CVec3 const&);
    virtual void setDir(CfCamEvent*, CVec3 const&);
    virtual void setLookat(CfCamEvent*, CVec3 const&);
};


}
