#ifndef NW4HBM_LYT_RESOURCE_ACCESSOR_H
#define NW4HBM_LYT_RESOURCE_ACCESSOR_H
#include <revolution/HBM/nw4hbm/types_nw4hbm.h>

#include <revolution/HBM/nw4hbm/ut.h>

namespace nw4hbm {
namespace lyt {

class ResourceAccessor {
public:
    ResourceAccessor();
    virtual ~ResourceAccessor(); // at 0x8

    virtual void* GetResource(u32 type, const char* pName,
                              u32* pSize) = 0; // at 0xC

    virtual ut::Font* GetFont(const char* pName); // at 0x10
};

} // namespace lyt
} // namespace nw4hbm

#endif
