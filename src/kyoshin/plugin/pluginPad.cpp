#include "kyoshin/plugin/pluginPad.hpp"
#include "monolib/device.hpp"
#include "kyoshin/code_8007C0F8.hpp"

static PluginFuncData sPluginPadFuncs[] = {
    {"get", pad_get},
    {"enable", pad_enable},
    {NULL,NULL}
};

int pad_get(VMThread* pThread) {
    int var_r3;
    VMArg arg;

    if (vmArgOmitChk(pThread, 1)) {
        var_r3 = 1;
    } else {
        var_r3 = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    }

    switch (var_r3) {
    case 0:
        arg.type = VM_TYPE_INT;
        arg.value.intVal = CDeviceRemotePad_80447580()[0];
        break;
    case 1:
        arg.type = VM_TYPE_INT;
        arg.value.intVal = CDeviceRemotePad_80447580()[1];
        break;
    case 2:
        arg.type = VM_TYPE_INT;
        arg.value.intVal = CDeviceRemotePad_80447580()[2];
        break;
    default:
        vmPluginExceptionThrow(pThread);
        return 0;
    }

    vmRetValSet(pThread, &arg);
    return 1;
}

int pad_enable(VMThread* pThread) {
    int temp_r31 = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    BOOL temp_r3 = vmArgBoolGet(3, vmArgPtrGet(pThread, 2));
    
    if (!(lbl_80666728 & 0x01000000)) {
        BOOL temp_r31_2 = temp_r3 == 0;
        func_80086DC0(temp_r31, !temp_r31_2);
        u32 var_r3 = lbl_80666728 & ~0x20000;
        if (temp_r31_2 != 0) {
            var_r3 = lbl_80666728 | 0x20000;
        }
        lbl_80666728 = var_r3;
    }
    return 0;
}

void pluginPadRegist(){
    vmPluginRegist("pad", sPluginPadFuncs);
}
