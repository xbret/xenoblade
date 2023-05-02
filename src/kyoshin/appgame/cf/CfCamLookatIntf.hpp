#include "mm/Vector.hpp"

namespace cf{
using namespace mm;

class CfCam{

};

class CfCamFollow : CfCam{

};

class CfCamEvent : CfCamFollow{
public:
    u8 unk0[0x28];
    Vec3i unk28;
    u8 unk34[0x264-0x34];
    float unk264;
    Vec3i lookat;
    Vec3i unk274;
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
    virtual void setPos(CfCamEvent*, Vec3i const&);
    virtual void setDir(CfCamEvent*, Vec3i const&);
    virtual void setLookat(CfCamEvent*, Vec3i const&);
};


}
