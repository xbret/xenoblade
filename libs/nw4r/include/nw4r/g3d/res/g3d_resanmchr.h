#ifndef NW4R_G3D_RESANMCHR_H
#define NW4R_G3D_RESANMCHR_H
#include <nw4r/types_nw4r.h>

#include <nw4r/g3d/res/g3d_rescommon.h>
#include <nw4r/g3d/res/g3d_resdict.h>

namespace nw4r {
namespace g3d {

struct ResAnmChrData {
	char UNK_0x0[0x8];
	u32 revision; // at 0x8
};

class ResAnmChr : public ResCommon<ResAnmChrData> {
public:
	static const u32 SIGNATURE = 'CHR0';
	static const int REVISION = 5;

public:
	NW4R_G3D_RESOURCE_FUNC_DEF(ResAnmChr);
	
	u32 GetRevision() const {
        return ref().revision;
    }

	bool CheckRevision() const {
		return GetRevision() == REVISION;
	}
};

}
}

#endif
