#include "kyoshin/appgame/plugin/pluginGame.hpp"

PluginFuncData pluginGameFuncs[] = {
	{"cmd", game_cmd},
	{NULL,NULL}
};

//Stubbed. This might've handled debug commands? (the ones listed in the bdat)
int game_cmd(_sVMThread* pThread) {
    return 0;
}

void pluginGameRegist(){
	vmPluginRegist("game", pluginGameFuncs);
}
