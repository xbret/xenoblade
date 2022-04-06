#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"
#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/device/UnkClass_80447FDC.hpp"

//size: 0x1d0
class CLibCri : public CWorkThread, public CDeviceVICb, public UnkClass_80447FDC {
public:
	CLibCri(const char* name, CWorkThread* workThread);
	static CLibCri* getInstance();
	virtual void UnkVirtualFunc2();

	static inline CLibCri* init(const char* name, CWorkThread* workThread){
		CLibCri* lib = new (WorkThreadSystem::getHeapIndex()) CLibCri(name, workThread);
		lib->func_80438BD8(workThread, 0);
		return lib;
	}

	//0x0: vtable
	//0x0-1c4: CWorkThread
	//0x1c4-1c8: CDeviceVICb
	//0x1c8-1d0: UnkClass_80447FDC
};
