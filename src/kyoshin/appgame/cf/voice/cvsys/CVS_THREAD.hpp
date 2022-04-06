#pragma once

#include "types.h"

class CVS_THREAD{
public:
	u32* unk0;
	u32 unk4;
	u32 unk8;
	u32 unkC;
	u32 unk10;
	u32 unk14;
	u32 unk18;

	CVS_THREAD();

	//Virtual table (0x1c)
	virtual void func_802A3B50();
	virtual void func_802A3BEC();
	virtual void blank1();
	virtual void func_802A1EA0();
	virtual void func_802A3740();
	virtual void blank2();
};

extern void func_802A35A0(u32* destPtr);
