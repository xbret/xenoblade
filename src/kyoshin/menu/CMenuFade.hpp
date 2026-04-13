#pragma once

#include "kyoshin/IUICf.hpp"
#include "monolib/scn.hpp"
#include "monolib/work.hpp"

class CMenuFade : public IUICf, public IWorkEvent, public IScnRender {
public:
    CMenuFade();

};
