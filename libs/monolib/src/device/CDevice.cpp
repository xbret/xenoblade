#include "monolib/device/CDevice.hpp"
#include "monolib/device/CDeviceGX.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDeviceRemotePad.hpp"
#include "monolib/device/CDeviceClock.hpp"
#include "monolib/device/CDeviceSC.hpp"
#include "monolib/device/CDeviceFile.hpp"
#include "monolib/device/CDeviceFont.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/work/CWorkSystem.hpp"
#include "monolib/lib/CLib.hpp"
#include "monolib/lib/CLibCri.hpp"

extern CWorkThread* func_804437BC();
extern int func_80454E78();

CDevice* CDevice::instance;
CDeviceException* CDeviceException::instance;
static const char* devSys1String = "DeviceSystem1";
static const char* devSys2String = "DeviceSystem2";
static FixStr<64> lbl_8065A6F8;
static FixStr<64> lbl_8065A73C;
static int lbl_80665FA0 = -1;
static int lbl_80665FA4 = -1;

CDevice::~CDevice(){
	instance = nullptr;
}

CDevice* CDevice::getInstance(){
	return instance;
}

int CDevice::func_8044D058(){
	return lbl_80665FA0;
}

int CDevice::func_8044D060(){
	return lbl_80665FA4;
}

bool CDevice::func_8044D438(){
	return instance->inline1();
}

void CDevice::initDevices(){
	if(CDeviceVI::getInstance() == nullptr){
		CDeviceVI::init("CDeviceVI", instance);
	}
	if(CDeviceGX::getInstance() == nullptr){
		CDeviceGX::init("CDeviceGX", instance);
	}
	if(CDeviceRemotePad::getInstance() == nullptr){
		CDeviceRemotePad::init("CDeviceRemotePAD", instance);
	}
	if(CDeviceClock::getInstance() == nullptr){
		CDeviceClock::init("CDeviceClock", instance);
	}
	if(CDeviceSC::getInstance() == nullptr){
		CDeviceSC::init("CDeviceSC", instance);
	}
	if(CDeviceFont::getInstance() == nullptr){
		CDeviceFont::init("CDeviceFont", instance);
	}
	if(CDeviceFile::getInstance() == nullptr){
		CDeviceFile::init("CDeviceFile", instance);
	}
	if(CLibCri::getInstance() == nullptr){
		CLibCri::init("CLibCri", instance);
	}

	CDeviceGX::func_8045535C(1);
}

CDeviceException* CDeviceException::getInstance(){
	return instance;
}

bool CDevice::wkStartup(){
	CDeviceException::init("CDeviceException", this);
	CDevice::initDevices();
	this->func_80437EF0(9);
	return CWorkThread::wkStartup();
}

bool CDevice::wkShutdown(){
	if(workThreadList.empty() && CWorkSystem::getInstance() == nullptr
	&& CLib::getInstance() == nullptr){
		return CWorkThread::wkShutdown();
	}

	return false;
}

CDevice* CDevice::create(){
	return init("CDevice", func_804437BC());
}

void CDevice::createRegions(){
	int deviceRegion1Offset = CDeviceGX::func_804557A0() + func_80454E78() + 0x80;
	deviceRegion1Offset += CDeviceVI::func_80448E80() ? 0 : CDeviceVI::getSomeSize();
	lbl_80665FA0 = mtl::heap_createRegion(mtl::Heap_getRegionIndex1(), deviceRegion1Offset, devSys1String);
	lbl_80665FA4 = mtl::heap_createRegion(mtl::Heap_getRegionIndex2(), 0x1A0000, devSys2String);
}

void CDevice::deleteRegions(){
	mtl::heap_deleteRegion(lbl_80665FA0);
	mtl::heap_deleteRegion(lbl_80665FA4);
	lbl_80665FA0 = -1;
	lbl_80665FA4 = -1;
}

CDeviceException::~CDeviceException(){
	instance = nullptr;
}

bool CDeviceException::wkShutdown(){
	if(workThreadList.empty() == false) return false;
	return CWorkThread::wkShutdown();
}
