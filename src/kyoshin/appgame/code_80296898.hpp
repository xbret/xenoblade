#pragma once

#include "types.h"

class Class_80296898 {
	public:
	u8 unk0[64];
	
	Class_80296898() {
		init();
	}
	
	void init();
	static Class_80296898* getInstance();
};

Class_80296898* func_80296A04(Class_80296898* obj);
void func_80296AE8(u8* src);
