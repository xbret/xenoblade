#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/MemManager.hpp"

//size: 0x1f0
class CDeviceFile : public CDeviceBase {
public:
	CDeviceFile(const char* name, CWorkThread* workThread);
	static CDeviceFile* getInstance();

	static inline CDeviceFile* init(const char* name, CWorkThread* workThread){
		CDeviceFile* device = new (WorkThreadSystem::getHeapIndex()) CDeviceFile(name, workThread);
		device->func_80438BD8(workThread, 0);
		return device;
	}
	
	//0x0: vtable
	//0x0-1c8: CDeviceBase
	u8 unk1C8[0x1F0 - 0x1C8];
};
