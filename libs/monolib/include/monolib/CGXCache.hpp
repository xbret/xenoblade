#pragma once

#include "types.h"
#include "monolib/CMsgParam.hpp"

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
	u32 func_8044B5B4();
	bool func_8044BE38();
	void func_8044BFC0();

	//0x0: vtable
	//0x0-0x4: IStateCache
	CMsgParam<32> unk4;
	u8 unk4A0[0x50C - 0x4A0];
	u32 unk50C;
	u8 unk510[0xC];
};
