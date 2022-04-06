#include "kyoshin/appgame/plugin/pluginDeb.hpp"

PluginFuncData pluginDebFuncs[] = {
	{"put", deb_put},
	{"performanceStart", deb_performanceStart},
	{"performanceEnd", deb_performanceEnd},
	{NULL,NULL}
};

//This was probably used to print debug messages, but is stubbed in the release version.
int deb_put(_sVMThread* pThread){
	return 0;
}

//These two functions would've printed out performance info?
int deb_performanceStart(_sVMThread* pThread) {
    vmArgStringGet(2, vmArgPtrGet(pThread, 1));
    return 0;
}

int deb_performanceEnd(_sVMThread* pThread) {
    vmArgStringGet(2, vmArgPtrGet(pThread, 1));
    return 0;
}

void pluginDebRegist(){
	vmPluginRegist("deb", pluginDebFuncs);
}

