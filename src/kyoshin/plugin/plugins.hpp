#pragma once

#include "kyoshin/plugin/pluginGame.hpp"
#include "kyoshin/plugin/pluginDeb.hpp"
#include "kyoshin/plugin/pluginWait.hpp"
#include "kyoshin/plugin/pluginMath.hpp"
#include "kyoshin/plugin/pluginPad.hpp"
#include "kyoshin/plugin/pluginVoice.hpp"

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
