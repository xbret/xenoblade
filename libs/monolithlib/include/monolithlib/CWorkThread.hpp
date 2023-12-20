#pragma once

#include "monolithlib/IWorkEvent.hpp"
#include "monolithlib/FixStr.hpp"
#include "monolithlib/reslist.hpp"

using namespace ml;

class CWorkThread : public IWorkEvent {
public:
	virtual ~CWorkThread();
	virtual void wkUpdate();
	virtual void WorkThreadEvent2();
	virtual void WorkThreadEvent3();
	virtual void WorkThreadEvent4();
	virtual void WorkThreadEvent5();
	virtual void WorkThreadEvent6();

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
