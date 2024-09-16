#ifndef NW4HBM_UT_RES_FONT_H
#define NW4HBM_UT_RES_FONT_H
#include <nw4hbm/types_nw4hbm.h>
#include <nw4hbm/ut/ut_ResFontBase.h>

namespace nw4hbm {
namespace ut {

class ResFont : public detail::ResFontBase {
public:
    static FontInformation* Rebuild(BinaryFileHeader* header);

    ResFont();
    ~ResFont();

    bool SetResource(void* buffer);
};

} // namespace ut
} // namespace nw4hbm

#endif
