#pragma once

#include "monolib/CProcess.hpp"

/*
Manages the lifetime of the root tasks.
*/
class CTaskManager {
public:
    static void Create();
    static void Release();

    static void Move();
    static void Draw();
    static void Reset();

    static CProcess* GetRootProcGame();
    static CProcess* GetRootProcRealTime();
    static CProcess* GetRootProcScn();

private:
    static void Start();
};
