#include "monolib/device.hpp"

CDeviceVICb::CDeviceVICb(){
    CDeviceVI::addCallback(this);
}

CDeviceVICb::~CDeviceVICb(){
    CDeviceVI::removeCallback(this);
}
