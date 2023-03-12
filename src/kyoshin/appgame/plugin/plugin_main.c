#include "kyoshin/appgame/plugin/plugins.h"

//Register all the plugins (SB script helper function modules) into the VM.
void pluginRegist(){
	pluginGameRegist();
	pluginDebRegist();
	pluginBtlRegist();
	pluginUnitRegist();
	pluginWaitRegist();
	pluginUiRegist();
	pluginEveRegist();
	pluginCfsRegist();
	pluginCamRegist();
	pluginMathRegist();
	pluginPadRegist();
	pluginTimeRegist();
	pluginSndRegist();
	pluginVoiceRegist();
	pluginHelpRegist();
	ocBuiltinRegist();
	ocBdatRegist();
	ocThreadRegist();
	ocMsgRegist();
	ocUnitRegist();
	ocCfpRegist();
}