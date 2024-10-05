#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/IFactoryEvent.hpp"
#include "kyoshin/appgame/cf/object/CfObjectActor.hpp"
#include "kyoshin/appgame/cf/IBattleEvent.hpp"
#include "kyoshin/appgame/cf/chain/CChain.hpp"
#include "kyoshin/appgame/cf/chain/UnkClass_800D8DBC.hpp"
#include "kyoshin/appgame/cf/CVision.hpp"
#include "kyoshin/appgame/cf/CSuddenCommu.hpp"
#include "monolib/reslist.hpp"
#include <cstring>

namespace cf{
	class UnkClass_8018C5FC {
	public:
		UnkClass_8018C5FC();
		
		u8 unk0[8];
	};

	class UnkClass_80192BF4 {
	public:
		UnkClass_80192BF4();

		u8 unk0[0xC];
	};

	struct CBattleManager_Struct1 {
		u8 unk0[0x100];

		CBattleManager_Struct1(){
			u8* r30 = unk0;
			do{
				std::memset(r30, 0, 8);
				r30 += 8;
			} while(r30 < unk0 + 0x100);
        	std::memset(unk0, 0, sizeof(unk0));
		}
	};

	//size: 0x283D8
	class CBattleManager : public IFactoryEvent {
	public:
		CBattleManager();
		virtual ~CBattleManager();

		static CBattleManager* getInstance();

		//0x0: vtable
		//0x0-4: IFactoryEvent
		reslist<CfObjectActor*> mActorList1; //0x4
		reslist<CfObjectActor*> mActorList2; //0x24
		reslist<CfObjectActor*> mActorList3; //0x44
		reslist<IBattleEvent*> mBattleEventList; //0x64
		u32 unk84; //0x84
		u8 unk88[0x94 - 0x88];
		CBattleManager_Struct1 unk94;
		UnkClass_8018C5FC unk194; //0x194
		UnkClass_80192BF4 unk19C; //0x19C
		CChain mChain; //0x1A8
		UnkClass_800D8DBC unk20C8; //0x20C8
		CSuddenCommu mSuddenCommu; //0x216C
		CVision mVision; //0x219C

	protected:
		static CBattleManager* instance;
	};
}
