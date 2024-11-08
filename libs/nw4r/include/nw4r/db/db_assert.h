#ifndef NW4R_DB_ASSERT_H
#define NW4R_DB_ASSERT_H

#include <nw4r/types_nw4r.h>

namespace nw4r
{
    namespace db
    {
        #define NW4R_WARNING(...) nw4r::db::Warning(__FILE__, __LINE__, __VA_ARGS__)
        #define NW4R_PANIC(...) nw4r::db::Panic(__FILE__, __LINE__, __VA_ARGS__)
        #define NW4R_DB_ASSERT(exp, ...) \
            if(!(exp))                \
            nw4r::db::Panic(__FILE__, __LINE__, __VA_ARGS__)

        DECL_WEAK void VPanic(const char* file, int line, const char* fmt, std::va_list vlist, bool halt);
        DECL_WEAK void Panic(const char* file, int line, const char* fmt, ...);
        DECL_WEAK void VWarning(const char* file, int line, const char* fmt, std::va_list vlist);
        DECL_WEAK void Warning(const char* file, int line, const char* msg, ...);
        
        namespace detail
        {
            void Log(const char* fmt, ...);
        }
        
        detail::ConsoleHead* Assertion_SetConsole(detail::ConsoleHead* console);
        detail::ConsoleHead* Assertion_GetConsole();
        void Assertion_ShowConsole(u32 time);
        void Assertion_HideConsole();
        void Assertion_SetWarningTime(u32 time);
        bool Assertion_SetAutoWarning(bool enable);
    }
}

#endif
