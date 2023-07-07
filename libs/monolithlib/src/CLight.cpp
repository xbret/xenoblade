#include "monolithlib/CLight.hpp"

CLight::CLight(){
	u32 r4 = 0;
	u32 r0 = r4 & 0xF;
	unk4 = Vec3(0,0,0);
	unk10 = Vec3(0.5f,0.5f,0.5f);
	unk1C = Vec3(1,0,0);
	unk28 = 1;
	unk2C = 0;
	unk34 = 0;
	unk38 = 1;
	unk3C = 10000;
	unk30 = r0;
}
