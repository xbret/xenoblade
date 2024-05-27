#include "kyoshin/appgame/code_80296898.hpp"
#include <string.h>

static Class_80296898 lbl_8057A9C8;

Class_80296898* func_80296A04(Class_80296898* obj) {
	obj->init();
	return obj;
}

void Class_80296898::init() {
	memset(unk0, 0, 64);
	
	int r4 = 0, r3 = 3, r7 = 1, r5 = 0xA, r6 = 2, r0 = 5;
	
	unk0[0x0] = r7;
	unk0[0x1] = r7;
	unk0[0x2] = r6;
	unk0[0x3] = r6;
	unk0[0x4] = r6;
	unk0[0x5] = r7;
	unk0[0x6] = r7;
	unk0[0x7] = r7;
	unk0[0xF] = r5;
	unk0[0x10] = r7;
	unk0[0x11] = r4;
	unk0[0x20] = r7;
	unk0[0x21] = r7;
	unk0[0x22] = r4;
	unk0[0x23] = r4;
	unk0[0x24] = r7;
	unk0[0x25] = r7;
	unk0[0x30] = r7;
	unk0[0x32] = r7;
	unk0[0x31] = r4;
	unk0[0x38] = r3;
	unk0[0x39] = r3;
	unk0[0x3A] = r0;
}

Class_80296898* Class_80296898::getInstance(void) {
	return &lbl_8057A9C8;
}

void func_80296AE8(u8* src) {
	memcpy(lbl_8057A9C8.unk0, src, 0x40);
	
	if (lbl_8057A9C8.unk0[15] == 0) {
		lbl_8057A9C8.unk0[15] = 0xA;
	}
}
