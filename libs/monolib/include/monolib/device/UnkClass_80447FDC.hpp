#pragma once

#include "types.h"

//min size: 0x4
class UnkClass_80447FDC {
public:
	UnkClass_80447FDC(){
		unk4 = 0;
	}
	virtual ~UnkClass_80447FDC(){
	}

	virtual void UnkVirtualFunc2() = 0;

	//0x0: vtable
	u32 unk4; //may not belong here
};

extern void func_804EE194(UNKTYPE* r3);
extern void func_804EE1B0(UNKTYPE* r3);
