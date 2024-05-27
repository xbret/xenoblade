#include "kyoshin/appgame/code_80296898.hpp"
#include <string.h>

static u8 lbl_8057A9C8[64];

u8* func_80296A04(u8* obj) {
	func_80296A34(obj);
	return obj;
}

void func_80296A34(u8* obj) {
	memset(obj, 0, 64);
	
	int r4 = 0, r3 = 3, r7 = 1, r5 = 0xA, r6 = 2, r0 = 5;
	
	obj[0x0] = r7;
	obj[0x1] = r7;
	obj[0x2] = r6;
	obj[0x3] = r6;
	obj[0x4] = r6;
	obj[0x5] = r7;
	obj[0x6] = r7;
	obj[0x7] = r7;
	obj[0xF] = r5;
	obj[0x10] = r7;
	obj[0x11] = r4;
	obj[0x20] = r7;
	obj[0x21] = r7;
	obj[0x22] = r4;
	obj[0x23] = r4;
	obj[0x24] = r7;
	obj[0x25] = r7;
	obj[0x30] = r7;
	obj[0x32] = r7;
	obj[0x31] = r4;
	obj[0x38] = r3;
	obj[0x39] = r3;
	obj[0x3A] = r0;
}

u8* func_80296ADC(void) {
	return lbl_8057A9C8;
}

void func_80296AE8(u8* src) {
	memcpy(lbl_8057A9C8, src, 0x40);
	
	if (lbl_8057A9C8[15] == 0) {
		lbl_8057A9C8[15] = 0xA;
	}
}

void sinit_80296B38(void) {
	func_80296A34(lbl_8057A9C8);
}
