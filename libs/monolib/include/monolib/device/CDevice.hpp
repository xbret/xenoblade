#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"
#include "monolib/device/CDeviceBase.hpp"

//size: 0x1c8
class CDevice : public CWorkThread {
public:
	CDevice(const char* name, CWorkThread* workThread) : CWorkThread(name, workThread, 0x20) {
		instance = this;
		unk50 = 10;
	}

	virtual ~CDevice();
	static CDevice* getInstance();
	static int func_8044D058();
	static int func_8044D060();
	static u32 func_8044D068();
	static u32 func_8044D248();
	static bool func_8044D438();
	static void initDevices();
	virtual bool wkStartup();
	virtual bool wkShutdown();
	static CDevice* create();
	static void createRegions();
	static void deleteRegions();

	static CDevice* init(const char* name, CWorkThread* workThread){
		CDevice* cDevice = new (WorkThreadSystem::getHeapIndex()) CDevice(name, workThread);
		cDevice->func_80438BD8(workThread, 0);
		return cDevice;
	}

	inline bool inline1(){
		bool r0 = CWorkThread_inline1();
		if(r0 == false) return false;
		bool result = true;
		_reslist_node<CWorkThread*>* curNode = workThreadList.mStartNodePtr->next;
		while(curNode != workThreadList.mStartNodePtr){
			CDeviceBase* deviceBase = static_cast<CDeviceBase*>(curNode->item);
			if((deviceBase->unk1C4 & 1) == 0) result = false;
			curNode = curNode->next;
		}
		return result;
	}
	
	//0x0: vtable
	//0x0-1c4: CWorkThread
	u32 unk1C4;

protected:
	static CDevice* instance;
};

namespace{
	//size: 0x1c8
	class CDeviceException : public CWorkThread {
	public:
		CDeviceException(const char* name, CWorkThread* workThread) : CWorkThread(name, workThread, 0x40) {
			instance = this;
		}
		virtual ~CDeviceException();
		virtual bool wkShutdown();
		static CDeviceException* getInstance();

		static CDeviceException* init(const char* name, CWorkThread* workThread){
			CDeviceException* deviceException = new (WorkThreadSystem::getHeapIndex()) CDeviceException(name, workThread);
			deviceException->func_80438BD8(workThread, 0);
			return deviceException;
		}

		//0x0: vtable
		//0x0-1c4: CWorkThread
		u32 unk1C4;

	protected:
		static CDeviceException* instance;
	};
}
