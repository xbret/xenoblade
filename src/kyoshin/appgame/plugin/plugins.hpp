#pragma once

#include "kyoshin/appgame/plugin/pluginGame.hpp"
#include "kyoshin/appgame/plugin/pluginDeb.hpp"
#include "kyoshin/appgame/plugin/pluginWait.hpp"
#include "kyoshin/appgame/plugin/pluginMath.hpp"
#include "kyoshin/appgame/plugin/pluginPad.hpp"
#include "kyoshin/appgame/plugin/pluginVoice.hpp"

extern "C"{
void pluginBtlRegist();
void pluginUnitRegist();
void pluginUiRegist();
void pluginEveRegist();
void pluginCfsRegist();
void pluginCamRegist();
void pluginTimeRegist();
void pluginSndRegist();
void pluginHelpRegist();
void ocBuiltinRegist();
void ocBdatRegist();
void ocThreadRegist();
void ocMsgRegist();
void ocUnitRegist();
void ocCfpRegist();
}
