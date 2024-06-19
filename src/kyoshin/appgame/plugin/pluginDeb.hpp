#pragma once

#include "types.h"
#include "monolib/vm/yvm.h"

int deb_put(_sVMThread* pThread);
int deb_performanceStart(_sVMThread* pThread);
int deb_performanceEnd(_sVMThread* pThread);
void pluginDebRegist();
