#pragma once

#include "types.h"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/reslist.hpp"
#include "revolution/OS.h"

class IDeviceClockFrame {
public:
	virtual void virtualFunc1() = 0;
	virtual void virtualFunc2() = 0;
	virtual void virtualFunc3() = 0;
};

//size: 0x238
class CDeviceClock : public CDeviceBase {
public:
	CDeviceClock(const char* name, CWorkThread* workThread);
	virtual ~CDeviceClock();
	virtual void wkUpdate();
	virtual bool WorkThreadEvent4();
	virtual bool WorkThreadEvent5();
	static CDeviceClock* getInstance();
	static bool func_8044DEE0();
	static s64 getTimeNow();
	static void func_8044DF8C();
	static void func_8044DFF4();

	//0x0: vtable
	//0x0-1c8: CDeviceBase
	u32 unk1C8;
	reslist<IDeviceClockFrame*> unk1CC;
	u32 unk1EC;
	s64 unk1F0;
	s64 unk1F8;
	s64 unk200;
	s64 unk208;
	OSCalendarTime cal; //0x210

	static CDeviceClock* instance;
};

extern u32 func_8044DEE0();
