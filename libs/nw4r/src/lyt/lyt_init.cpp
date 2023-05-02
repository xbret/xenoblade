#include "nw4r/lyt/lyt_init.h"
#include "nw4r/build_version.h"
#include "revolution/OS.h"

namespace {
    static const char* NW4R_LYT_Version_ = NW4R_LIB_VERSION(LYT,Aug 21 2008,05:21:58);
};

namespace nw4r {
    namespace lyt {
        void LytInit() {
            OSRegisterVersion(NW4R_LYT_Version_);
            OSInitFastCast();
        }
    };
};
