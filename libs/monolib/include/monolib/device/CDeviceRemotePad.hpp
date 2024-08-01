#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/MemManager.hpp"

//size: 0x1f0
class CDeviceRemotePad : public CDeviceBase {
public:
	CDeviceRemotePad(const char* name, CWorkThread* workThread);
	static CDeviceRemotePad* getInstance();

	static inline CDeviceRemotePad* init(const char* name, CWorkThread* workThread){
		CDeviceRemotePad* device = new (WorkThreadSystem::getHeapIndex()) CDeviceRemotePad(name, workThread);
		device->func_80438BD8(workThread, 0);
		return device;
	}

	//0x0: vtable
	//0x0-1c8: CDeviceBase
	u8 unk1C8[0x1F0 - 0x1C8];
};

int* CDeviceRemotePad_80447580();
void func_80447598();

void func_804475E4(const char* str);
void func_804476E8(const char* str);
float func_804477E8(const char* str);
