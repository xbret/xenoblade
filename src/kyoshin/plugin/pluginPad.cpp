#include "kyoshin/plugin/pluginPad.hpp"
#include "monolib/core.hpp"
#include "kyoshin/cf/CfGameManager.hpp"

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
    u32 enableFlags = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    BOOL enable = vmArgBoolGet(3, vmArgPtrGet(pThread, 2));
    
    if (!(cf::CfGameManager::checkUnkFlag(24))) {
        //You can just use the original variable...?
        bool dontEnable = enable == false;
        cf::CfGameManager::enablePadFlags(enableFlags, !dontEnable);

        //TODO: Probably an inline?
        u32 newFlags = cf::CfGameManager::sUnkFlags & ~(1 << 17);
        if (dontEnable) {
            newFlags = cf::CfGameManager::sUnkFlags | (1 << 17);
        }
        cf::CfGameManager::sUnkFlags = newFlags;
    }
    return 0;
}

void pluginPadRegist(){
    vmPluginRegist("pad", sPluginPadFuncs);
}
