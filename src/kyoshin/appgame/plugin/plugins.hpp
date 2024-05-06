#pragma once

#include "kyoshin/appgame/plugin/plugin_game.hpp"
#include "kyoshin/appgame/plugin/plugin_deb.hpp"
#include "kyoshin/appgame/plugin/plugin_wait.hpp"
#include "kyoshin/appgame/plugin/plugin_math.hpp"

extern "C"{
void pluginBtlRegist();
void pluginUnitRegist();
void pluginUiRegist();
void pluginEveRegist();
void pluginCfsRegist();
void pluginCamRegist();
void pluginPadRegist();
void pluginTimeRegist();
void pluginSndRegist();
void pluginVoiceRegist();
void pluginHelpRegist();
void ocBuiltinRegist();
void ocBdatRegist();
void ocThreadRegist();
void ocMsgRegist();
void ocUnitRegist();
void ocCfpRegist();
}
