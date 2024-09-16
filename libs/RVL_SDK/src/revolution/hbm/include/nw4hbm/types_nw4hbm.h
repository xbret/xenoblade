#ifndef NW4HBM_TYPES_H
#define NW4HBM_TYPES_H
#include <types.h>

#define NW4R_BYTEORDER_BIG 0xFEFF
#define NW4R_BYTEORDER_LITTLE 0xFFFE

#define NW4HBM_VERSION(major, minor) ((major & 0xFF) << 8 | minor & 0xFF)

namespace nw4hbm {
namespace ut {
namespace detail {

struct RuntimeTypeInfo;
struct ResFontBase;

} // namespace detail

template <typename T> struct AutoLock;
struct AutoInterruptLock;
struct BinaryBlockHeader;
struct BinaryFileHeader;
struct CharStrmReader;
struct CharWidths;
struct CharWriter;
struct Color;
struct DvdFileStream;
struct DvdLockedFileStream;
struct FileStream;
struct Font;
struct Glyph;
struct IOStream;
template <typename T, int Ofs> struct LinkList;
struct List;
struct NandFileStream;
template <typename T> struct PrintContext;
struct Rect;
struct ResFont;
struct RomFont;
template <typename T> struct TagProcessorBase;
template <typename T> struct TextWriterBase;

} // namespace ut

namespace db {
namespace detail {
struct ConsoleHead;
}
} // namespace db

namespace math {

struct VEC2;
struct VEC3;
struct MTX33;
struct MTX34;
struct MTX44;
struct QUAT;
struct PLANE;
struct AABB;
struct FRUSTUM;

} // namespace math

namespace lyt {
struct Size;

namespace detail {
struct PaneBase;
struct TexCoordAry;
} // namespace detail

namespace res {
struct Group;
struct Pane;
struct Bounding;
struct AnimationBlock;
struct BinaryFileHeader;
} // namespace res

struct Group;
struct GroupContainer;
struct Pane;
struct DrawInfo;
struct AnimResource;
struct AnimTransform;
struct AnimTransformBasic;
struct AnimationLink;
struct ResourceAccessor;
struct ArcResourceAccessor;
struct FontRefLink;
struct Material;
struct Layout;
struct Bounding;
struct ResBlockSet;
struct TexMap;
} // namespace lyt
} // namespace nw4hbm

#endif
