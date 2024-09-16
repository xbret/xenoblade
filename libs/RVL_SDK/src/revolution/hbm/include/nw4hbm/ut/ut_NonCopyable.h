#ifndef NW4HBM_UT_NON_COPYABLE_H
#define NW4HBM_UT_NON_COPYABLE_H
#include <nw4hbm/types_nw4hbm.h>

namespace nw4hbm {
namespace ut {
namespace {

class NonCopyable {
protected:
    NonCopyable() {}
    NonCopyable(const NonCopyable&) {}
    ~NonCopyable() {}
};

} // namespace
} // namespace ut
} // namespace nw4hbm

#endif
