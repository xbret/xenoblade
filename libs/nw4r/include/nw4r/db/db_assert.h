#ifndef NW4R_DB_ASSERT_H
#define NW4R_DB_ASSERT_H

#include "types_nw4r.h"

namespace nw4r{
    namespace db{
        DECL_WEAK void VPanic(const char* file, int line, const char* fmt, __va_list_struct* vlist, bool halt);
        DECL_WEAK void Panic(const char* file, int line, const char* fmt, ...);
        DECL_WEAK void VWarning(const char* file, int line, const char* fmt, __va_list_struct* vlist);
        DECL_WEAK void Warning(const char* file, int line, const char* msg, ...);
        void Log(const char* fmt);
        detail::ConsoleHead* Assertion_SetConsole(detail::ConsoleHead* console);
        detail::ConsoleHead* Assertion_GetConsole();
        void Assertion_ShowConsole(u32 time);
        void Assertion_HideConsole();
        void Assertion_SetWarningTime(u32 time);
        bool Assertion_SetAutoWarning(bool enable);
    }
}

#endif
