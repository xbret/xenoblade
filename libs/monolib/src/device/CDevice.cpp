#include "monolib/device/CDevice.hpp"
#include "monolib/MemManager.hpp"

extern CWorkThread* func_804437BC();

CDevice* CDevice::instance;

CDevice::~CDevice(){
	instance = nullptr;
}

CDevice* CDevice::getInstance(){
	return instance;
}

CDevice* CDevice::create(){
	CWorkThread* workThread = func_804437BC();
	const char* name = "CDevice";
	CDevice* cDevice = new CDevice(name, workThread);
	cDevice->func_80438BD8(workThread, 0);
	return cDevice;
}
