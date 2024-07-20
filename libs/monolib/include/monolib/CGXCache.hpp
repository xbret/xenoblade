#pragma once

#include "types.h"

//size: 0x4
class IStateCache {
public:
	virtual ~IStateCache();
};

//size: 0x51c
class CGXCache : public IStateCache {
public:
	CGXCache();
	virtual ~CGXCache();
	void func_8044B294(u32 r4);
	bool func_8044BE38();

	//0x0: vtable
	//0x0-0x4: IStateCache
	u8 unk4[0x50C - 0x4];
	u32 unk50C;
	u8 unk510[0xC];
};
