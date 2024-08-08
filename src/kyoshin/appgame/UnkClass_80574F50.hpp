#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/CfObjectMove.hpp"

//min size: 0xb8
class UnkClass_80574F50{
public:
	static UnkClass_80574F50* getInstance();

	u32 unk0;
	u32 unk4;
	u32 unk8;
	u8 unkC[0x28 - 0xC];
	u8 unk28;
	u8 unk29[0x68 - 0x29];
	u32 unk68;
	u8 unk6C;
	u8 unk6D[0x7C - 0x6D];
	u32 unk7C;
	u8 unk80[0x8C - 0x80];
	u32 unk8C;
	u32 unk90;
	//between CObjectParam - CfObjectMove
	//likely player character object array, seems to always store pointers
	//to CfObjectPc objects except pointing at the 4th vtable
	cf::CfObjectMove* unk94[3];
	u32 unkA0;
	u32 unkA4;
	u32 unkA8;
	u32 unkAC;
	u32 unkB0;
	u32 unkB4;
};
