#pragma once

#include "monolib/vm/yvm2.h"

int deb_put(_sVMThread* pThread);
int deb_performanceStart(_sVMThread* pThread);
int deb_performanceEnd(_sVMThread* pThread);
void pluginDebRegist();
