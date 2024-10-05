#pragma once

#include "types.h"
#include "kyoshin/appgame/IUICf.hpp"
#include "kyoshin/appgame/IScnRender.hpp"
#include "monolib/IWorkEvent.hpp"

class CMenuFade : IUICf, IWorkEvent, IScnRender {
public:
	CMenuFade();

};
