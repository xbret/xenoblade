#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"

//size: 0x1D0
class CDeviceSC : public CDeviceBase {
public:
	CDeviceSC(const char* name, CWorkThread* workThread);
	virtual ~CDeviceSC();
	virtual bool WorkThreadEvent4();
	virtual bool WorkThreadEvent5();
	static CDeviceSC* getInstance();

	//0x0: vtable
	//0x0-1C8: CDeviceBase
	u8 aspectRatio; //0x1c8
	u8 euRgb60Mode; //0x1c9
	u8 language; //0x1ca
	u8 progMode; //0x1cb
	u8 soundMode; //0x1cc
	u8 unk1CD;
	u8 unk1CE[2];

	static CDeviceSC* instance;
};

