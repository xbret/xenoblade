#include "monolib/util.hpp"
#include "monolib/vm/yvm2.h"

using namespace ml;

void ui_mesGetArts(VMThread* pThread) {
    int num1 = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    int num2 = vmArgIntGet(3, vmArgPtrGet(pThread, 2));
}
