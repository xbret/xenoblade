#include "kyoshin/plugin/pluginPad.hpp"
#include "monolib/core.hpp"
#include "kyoshin/UnkClass_80574F50.hpp"
#include "kyoshin/code_8007C0F8.hpp"

static PluginFuncData sPluginPadFuncs[] = {
    {"get", pad_get},
    {"enable", pad_enable},
    {NULL,NULL}
};

int pad_get(VMThread* pThread) {
    ButtonFlagsType type;
    VMArg arg;

    if (vmArgOmitChk(pThread, 1)) {
        type = BUTTON_FLAGS_PRESSED;
    } else {
        type = (ButtonFlagsType)vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    }

    switch (type) {
    case BUTTON_FLAGS_HELD:
        arg.type = VM_TYPE_INT;
        arg.value.uintVal = CPadManager::getMainPad()->mHeldButtonFlags;
        break;
    case BUTTON_FLAGS_PRESSED:
        arg.type = VM_TYPE_INT;
        arg.value.uintVal = CPadManager::getMainPad()->mPressedButtonFlags;
        break;
    case BUTTON_FLAGS_TURBO:
        arg.type = VM_TYPE_INT;
        arg.value.uintVal = CPadManager::getMainPad()->mTurboPressButtonFlags;
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
    
    if (!(UnkClass_80574F50::sUnkFlags & 0x01000000)) {
        BOOL temp_r31_2 = temp_r3 == 0;
        func_80086DC0(temp_r31, !temp_r31_2);
        u32 var_r3 = UnkClass_80574F50::sUnkFlags & ~0x20000;
        if (temp_r31_2 != 0) {
            var_r3 = UnkClass_80574F50::sUnkFlags | 0x20000;
        }
        UnkClass_80574F50::sUnkFlags = var_r3;
    }
    return 0;
}

void pluginPadRegist(){
    vmPluginRegist("pad", sPluginPadFuncs);
}
