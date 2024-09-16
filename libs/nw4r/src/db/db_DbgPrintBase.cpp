#include "db_DbgPrintBase.h"

// Unused file. Only here to force the function CharWriter::SetTextColor(ut::Color&)
// into the right place.

namespace nw4r
{
    namespace db
    {
        // Dummy function
        void dummy(ut::CharWriter* pCharWriter)
        {
            ut::Color color;
            pCharWriter->SetTextColor(color);
        }
    }
}
