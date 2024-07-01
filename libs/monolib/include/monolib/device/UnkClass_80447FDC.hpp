#pragma once

#include "types.h"

class UnkClass_80447FDC {
public:
	UnkClass_80447FDC(){
		unk4 = 0;
	}
	virtual ~UnkClass_80447FDC(){
	}

	virtual void UnkVirtualFunc2() = 0;


	//u32* unk0;
	u32 unk4;
};

extern void func_804EE194(UNKTYPE* r3);
extern void func_804EE1B0(UNKTYPE* r3);
