#ifndef NW4HBM_UT_COLOR_H
#define NW4HBM_UT_COLOR_H
#include <nw4hbm/types_nw4hbm.h>
#include <revolution/GX.h>

namespace nw4hbm {
namespace ut {

class Color : public GXColor {
public:
    Color() { *this = 0xFFFFFFFF; }
    Color(u32 color) { *this = color; }
    Color(int red, int green, int blue, int alpha) {
        Set(red, green, blue, alpha);
    }
    ~Color() {}

    void Set(int red, int green, int blue, int alpha) {
        r = red;
        g = green;
        b = blue;
        a = alpha;
    }

    Color& operator=(u32 color) {
        ToU32ref() = color;
        return *this;
    }

    Color operator|(u32 color) { return Color(ToU32() | color); }
    Color operator&(u32 color) { return Color(ToU32() & color); }

    u32& ToU32ref() { return *reinterpret_cast<u32*>(this); }
    const u32& ToU32ref() const { return *reinterpret_cast<const u32*>(this); }

    u32 ToU32() const { return ToU32ref(); }

    operator u32() const { return ToU32ref(); }
};

} // namespace ut
} // namespace nw4hbm

#endif
