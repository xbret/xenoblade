#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"

class CProc : public CWorkThread {
public:
	CProc(const char* name, CWorkThread* workThread, int r6);
	virtual ~CProc();
	virtual bool WorkThreadEvent4();
	virtual bool WorkThreadEvent5();

	void func_804391A8();

	//0x0: vtable
	//0x0-1c4: CWorkThread
	u8 unk1C4[0x1E4 - 0x1C4];
	u32 unk1E4;
	u8 unk1E8[4];
};
