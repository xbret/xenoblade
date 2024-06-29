#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"

//size: 0x1C8
class CDeviceBase : public CWorkThread {
public:
	CDeviceBase(const char* name, CWorkThread* workThread, int r6) : CWorkThread(name, workThread, r6) {
		unk1C4 = 0;
	}
	virtual ~CDeviceBase(){}

	//0x0: vtable
	//0x0-1c4: CWorkThread
	u32 unk1C4;
};

