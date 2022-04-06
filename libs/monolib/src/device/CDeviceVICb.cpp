#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/device/CDeviceVI.hpp"

CDeviceVICb::CDeviceVICb(){
	CDeviceVI::addCallback(this);
}

CDeviceVICb::~CDeviceVICb(){
	CDeviceVI::removeCallback(this);
}
