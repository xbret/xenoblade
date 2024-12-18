#include <nw4hbm/lyt/lyt_drawInfo.h>
#include <string.h>

namespace nw4hbm
{
    namespace lyt
    {
        DrawInfo::DrawInfo() : mViewMtx(), mViewRect(), mScale(1.0f, 1.0f), mGlobalAlpha(1.0f)
        {
            memset(&mFlags, 0, sizeof(mFlags));
            math::MTX34Identity(&mViewMtx);
        }

        DrawInfo::~DrawInfo()
        {
            
        }
    }
}
