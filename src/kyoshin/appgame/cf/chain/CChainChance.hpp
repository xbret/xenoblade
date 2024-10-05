#pragma once

#include "types.h"

namespace cf {
	class CChainChance {
	public:
		u16 unk0;
		u8 unk2[2];
		u32 unk4;
		u8 unk8[0x10 - 0x8];
		//0x10: vtable

		virtual ~CChainChance(){}

		u8 unk14[4];
	};
}
