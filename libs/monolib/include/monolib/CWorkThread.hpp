#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/reslist.hpp"

using namespace ml;

class CWorkThread : public IWorkEvent {
public:
	virtual ~CWorkThread();
	virtual void wkUpdate();
	virtual void WorkThreadEvent2(){}
	virtual void WorkThreadEvent3(){}
	virtual bool WorkThreadEvent4();
	virtual void WorkThreadEvent5();
	virtual bool WorkThreadEvent6(){ return true; }

	void func_80437EF0(u32);
	void func_80438BD8(CWorkThread* r4, u32 r5);
	u32 func_80457CA4(UNKTYPE* r4, u32 r5);

	FixStr<64> name;
	u32 unk48;
	u32 unk4C;
	u32 unk50;
	u32 unk54;
	u32 unk58;
	reslist<CWorkThread> unk5C;
	u32 unk7C;
	u32 unk80;
	u8 unk84[0x1A4 - 0x84];
	u32 unk1A4;
	u32 unk1A8;
	u32 unk1AC;
	u32 unk1B0;
	u32 unk1B4;
	u32 unk1B8;
	u32 unk1BC;
	u32 unk1C0;
};

u32 func_804385A8(u32 r3);
