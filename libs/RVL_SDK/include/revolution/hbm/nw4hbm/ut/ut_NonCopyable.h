#ifndef NW4HBM_UT_NON_COPYABLE_H
#define NW4HBM_UT_NON_COPYABLE_H
#include <revolution/HBM/nw4hbm/types_nw4hbm.h>

namespace nw4hbm {
namespace ut {
namespace {

class NonCopyable {
protected:
    NonCopyable() {}
    NonCopyable(const NonCopyable& /* rOther */) {}
    ~NonCopyable() {}
};

} // namespace
} // namespace ut
} // namespace nw4hbm

#endif
