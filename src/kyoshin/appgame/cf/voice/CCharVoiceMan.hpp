#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/IFactoryEvent.hpp"

namespace cf{

	class CCharVoiceMan : public IFactoryEvent {
	public:
		CCharVoiceMan();
		virtual ~CCharVoiceMan();
		virtual void FactoryEvent2();

		u8 unk4[0x200];
		u32 unk204;
		u32 unk208;
		u32 unk20C;
		u32 unk210;
		u8 unk214;
		u8 unk215;
		u8 unk216[2]; //filler?
		float unk218;
		//Definitely classes of some kind. Maybe related to position?
		u32 unk21C;
		u8 unk220;
		u8 unk221;
		u8 unk222;
		u8 unk223;
		u32 unk224;
		u8 unk228;
		u8 unk229;
		u8 unk22A;
		u8 unk22B;
		u32 unk22C;
		u32 unk230;
	};

}

extern void* func_800B07E8();
extern void func_800B8804(void*, cf::IFactoryEvent*);
extern void func_800B88E0(void*, cf::IFactoryEvent*);
