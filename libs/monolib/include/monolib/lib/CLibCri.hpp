#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/device/UnkClass_80447FDC.hpp"

//size: 0x1d0
class CLibCri : public CWorkThread, public CDeviceVICb, public UnkClass_80447FDC {

	//0x0: vtable
	//0x0-1c4: CWorkThread
	//0x1c4-1c8: CDeviceVICb
	//0x1c8-1d0: UnkClass_80447FDC
};
