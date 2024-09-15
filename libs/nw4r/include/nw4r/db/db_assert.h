#ifndef NW4R_DB_ASSERT_H
#define NW4R_DB_ASSERT_H

#include "types_nw4r.h"

namespace nw4r{
    namespace db{
        void Warning(const char* file, int line, const char* msg, ...);
        void Assertion_ShowConsole(u32 time);
    }
}

#endif
