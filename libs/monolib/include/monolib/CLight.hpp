#pragma once

#include "types.h"
#include "monolib/Math.hpp"

using namespace ml;

class CLight{
public:
	CLight();
	virtual ~CLight(){}

	CVec3 unk4;
	CVec3 unk10;
	CVec3 unk1C;
	float unk28;
	u32 unk2C;
	u32 unk30;
	u32 unk34;
	float unk38;
	float unk3C;
};
