#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"

//size: 0x1c8
class CDevice : public CWorkThread {
public:
	CDevice(const char* name, CWorkThread* workThread) : CWorkThread(name, workThread, 0x20) {
		instance = this;
		unk50 = 10;
	}
	virtual ~CDevice();
	static CDevice* getInstance();
	static CDevice* create();
	
	//0x0: vtable
	//0x0-1c4: CWorkThread
	u32 unk1C8;

protected:
	static CDevice* instance;
};

namespace{
	class CDeviceException : public CWorkThread {

	};
}

u32 func_8044D058();
bool func_8044D438();
