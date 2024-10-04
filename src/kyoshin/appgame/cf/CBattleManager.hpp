#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/IFactoryEvent.hpp"
#include "kyoshin/appgame/cf/IBattleEvent.hpp"
#include "kyoshin/appgame/cf/CVision.hpp"
#include "kyoshin/appgame/cf/CSuddenCommu.hpp"
#include "kyoshin/appgame/cf/object/CfObjectActor.hpp"
#include "kyoshin/appgame/cf/chain/UnkClass_800D8B9C.hpp"
#include "kyoshin/appgame/cf/chain/UnkClass_800D8DBC.hpp"
#include "monolib/reslist.hpp"

namespace cf{
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
		u8 unk84[0x1A8 - 0x84];
		UnkClass_800D8B9C unk1A8; //0x1A8
		UnkClass_800D8DBC unk20C8; //0x20C8
		CSuddenCommu mSuddenCommu; //0x216C
		CVision mVision; //0x219C

	protected:
		static CBattleManager* instance;
	};
}
