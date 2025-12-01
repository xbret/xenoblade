#include <nw4r/ut.h>

// Unused file. Only here to force the function CharWriter::SetTextColor(ut::Color&, ut::Color&)
// into the right place.

namespace nw4r
{
    namespace dw
    {
        // Dummy function
        void dummy(ut::CharWriter* charWriter)
        {
            ut::Color color;
            charWriter->SetTextColor(color, color);
        }
    }
}
