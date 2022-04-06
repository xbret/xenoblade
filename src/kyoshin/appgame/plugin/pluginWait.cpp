#include "kyoshin/appgame/plugin/pluginWait.hpp"

PluginFuncData pluginWaitFuncs[] = {
	{"frame", wait_frame},
	{NULL,NULL}
};

int wait_frame(_sVMThread* pThread) {
    int temp_r30 = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    int wkIdx = vmWkIdxGet(pThread);
    
    if (wkIdx == 0) {
        int* temp_r3 = vmWkGet(pThread, 0);
        *temp_r3 = temp_r30 << 0xC;
        vmWkIdxSet(pThread, wkIdx + 1); //why not just set it to 1???
        vmWaitModeSet(pThread);
    } else {
        int* temp_r3 = vmWkGet(pThread, 0);
        int temp_r0 = *temp_r3 - 0x1000;
        *temp_r3 = temp_r0;
        if (temp_r0 > 0) {
            vmWaitModeSet(pThread);
        }
    }
    return 0;
}

void pluginWaitRegist(){
	vmPluginRegist("wait", pluginWaitFuncs);
}
