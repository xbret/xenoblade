#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"

class CNBanner : IWorkEvent {
public:
	CNBanner();
	virtual ~CNBanner();
	void init();
	virtual bool OnFileEvent(CEventFile* eventFile);
	void func_804F52F8(const char* str);
	void func_804F5304(const char* str);
	void func_804F5310(const char* str);
	void func_804F531C(const char** filenames, int* someArray);

	//0x0: vtable
	u8 unk4[0xC - 0x4];
	u32 unkC;
	u8 unk10[0x325 - 0x10];
};
