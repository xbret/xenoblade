#include "kyoshin/appgame/cf/voice/CCharVoiceMan.hpp"

namespace cf{
	CCharVoiceMan::CCharVoiceMan(){
		unk204 = 0;
		unk208 = 0;
		unk20C = 0;
		unk210 = 0;
		unk214 = 1;
		unk218 = 0;
		unk21C = 0;
		unk220 = 0;
		unk221 = 0;
		unk222 = 0;
		unk223 = 0;
		unk224 = 0;
		unk229 = 0;
		unk22A = 0;
		unk22C = 0;
		unk230 = 0;
		void* classPtr = func_800B07E8();
		func_800B8804(classPtr, this);
	}

	CCharVoiceMan::~CCharVoiceMan(){
		void* classPtr = func_800B07E8();
		func_800B88E0(classPtr, this);
	}
}
