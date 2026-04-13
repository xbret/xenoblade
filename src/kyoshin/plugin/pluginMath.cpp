#include "kyoshin/plugin/pluginMath.hpp"
#include "monolib/math.hpp"

static PluginFuncData sPluginMathFuncs[] = {
    {"random", math_random},
    {NULL,NULL}
};

int math_random(VMThread* pThread) {
    int min = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    int max = vmArgIntGet(3, vmArgPtrGet(pThread, 2));

    VMArg result;
    result.value.intVal = ml::math::mtRand(min, max);
    result.type = VM_TYPE_INT;
    vmRetValSet(pThread, &result);
    return 1;
}

void pluginMathRegist(){
    vmPluginRegist("math", sPluginMathFuncs);
}
