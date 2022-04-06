#pragma once

#include "types.h"
#include "monolib/reslist.hpp"
#include "monolib/FixStr.hpp"
#include "kyoshin/appgame/cf/CfObject.hpp"
#include "kyoshin/appgame/cf/TBoxInfo.hpp"
#include "kyoshin/appgame/cf/IFactoryEvent.hpp"

using namespace cf;
using namespace ml;

class UnkClass_800B0AD8{
public:
	u8 unk0[0xAF8];
	UnkClass_800B0AD8* unkAF8;
	u32 unkAFC;
	u32 unkB00;
	u32 unkB04;

	UnkClass_800B0AD8(){
		unkB04 = 0x2BE;
		unkAF8 = this;
		unkB00 = 0;
		unkAFC = 0;
	}
};

class UnkClass_805764CC{
public:
	reslist<CfObject*> objList1; //0x00
	UnkClass_800B0AD8 unk20; //0x20
	//might be an array?
	reslist<CfObject*> objList2; //0xB28
	reslist<CfObject*> objList3; //0xB48
	reslist<CfObject*> objList4; //0xB68
	reslist<CfObject*> objList5; //0xB88
	reslist<CfObject*> objList6; //0xBA8
	reslist<CfObject*> objList7; //0xBC8
	reslist<CfObject*> objList8; //0xBE8
	reslist<CfObject*> objList9; //0xC08
	reslist<CfObject*> objList10; //0xC28
	reslist<TBoxInfo*> tboxInfoList; //0xC48
	u8 unkC68[0x18];
	reslist<IFactoryEvent*> factoryEventList; //0xC80
	u32 unkCA0;
	u32 unkCA4;
	u32 unkCA8;
	u32 unkCAC;
	FixStr<64> unkCB0;
	u8 unkCF4[8];
	u32 unkCFC;
	u32 unkD00;
	u32 unkD04;
	u8 unkD08[6];
	u16 unkD0E;
	u16 unkD10;
};
