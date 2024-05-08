#include "kyoshin/appgame/plugin/pluginMath.hpp"
#include "monolib/Random.hpp"

PluginFuncData pluginMathFuncs[] = {
	{"random", math_random},
	{NULL,NULL}
};

int math_random(_sVMThread* pThread) {
    int min = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    int max = vmArgIntGet(3, vmArgPtrGet(pThread, 2));

    RetVal result;
    result.val = ml::mtRand(min, max);
    result.type = 3;
    vmRetValSet(pThread, &result);
    return 1;
}

void pluginMathRegist(){
	vmPluginRegist("math", pluginMathFuncs);
}
