#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/MemManager.hpp"

//size: 0x1f0
class CDeviceFont : public CDeviceBase {
public:
	CDeviceFont(const char* name, CWorkThread* workThread);
	static CDeviceFont* getInstance();

	static inline CDeviceFont* init(const char* name, CWorkThread* workThread){
		CDeviceFont* device = new (WorkThreadSystem::getHeapIndex()) CDeviceFont(name, workThread);
		device->func_80438BD8(workThread, 0);
		return device;
	}

	//0x0: vtable
	//0x0-1c8: CDeviceBase
	u8 unk1C8[0x1F0 - 0x1C8];
};
