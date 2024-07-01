#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/device/CDeviceVICb.hpp"

class CDeviceGX : public CDeviceBase, public CDeviceVICb {
public:
	static bool func_80455368();
};

