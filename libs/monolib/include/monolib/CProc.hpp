#pragma once

#include "types.h"
#include "monolib/CWorkThread.hpp"
#include "monolib/reslist.hpp"

//size: 0x1ec
class CProc : public CWorkThread {
public:
	CProc(const char* name, CWorkThread* workThread, int r6);
	virtual ~CProc();
	virtual bool wkStartup();
	virtual bool wkShutdown();

	void func_804391A8();

	//0x0: vtable
	//0x0-1c4: CWorkThread
	reslist<u32> unk1C4;
	u32 unk1E4;
	u8 unk1E8[4];
};
