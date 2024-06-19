#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"

class CProc : public CWorkThread {
public:
	CProc(const char* name, CWorkThread* workThread, u32 r6);
	virtual ~CProc();
	virtual bool WorkThreadEvent4();
	virtual void WorkThreadEvent5();

	void func_804391A8();

	u8 unk1C4[0x1E4 - 0x1C4];
	u32 unk1E4;
	u8 unk1E8[4];
};
