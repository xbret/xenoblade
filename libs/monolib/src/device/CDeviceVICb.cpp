#include "monolib/device.hpp"

CDeviceVICb::CDeviceVICb(){
    CDeviceVI::entryCb(this);
}

CDeviceVICb::~CDeviceVICb(){
    CDeviceVI::removeCb(this);
}
