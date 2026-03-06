#pragma once

#include "monolib/vm/yvm2.h"

enum ButtonFlagsType{
    BUTTON_FLAGS_HELD,
    BUTTON_FLAGS_PRESSED,
    BUTTON_FLAGS_TURBO
};

int pad_get(_sVMThread* pThread);
int pad_enable(_sVMThread* pThread);
void pluginPadRegist();
