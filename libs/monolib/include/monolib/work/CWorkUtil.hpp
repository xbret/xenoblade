#pragma once

#include "types.h"

#include "monolib/UnkStruct_80438AF0.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"

//Forward declarations
class CWorkThread;

class CWorkUtil {
public:
    static UnkStruct_80438AF0_3* func_80438AF0(UnkStruct_80438AF0* arg0);
    static CWorkThread* getWorkThread(WORK_ID wid);
    static void dispTree(const CWorkThread* pThread, int indent = 0);
    static void entryWork(CWorkThread* pChild, CWorkThread* pParent, bool dontNotify);
};
