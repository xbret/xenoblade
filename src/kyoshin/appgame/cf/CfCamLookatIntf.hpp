#include "monolib_mm/Vector3.hpp"

namespace cf{
using namespace mm;

class CfCam{

};

class CfCamFollow : CfCam{

};

class CfCamEvent : CfCamFollow{
public:
    u8 unk0[0x28];
    Vec3 unk28;
    u8 unk34[0x264-0x34];
    float unk264;
    Vec3 lookat;
    Vec3 unk274;
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
    virtual void setPos(CfCamEvent*, Vec3 const&);
    virtual void setDir(CfCamEvent*, Vec3 const&);
    virtual void setLookat(CfCamEvent*, Vec3 const&);
};


}