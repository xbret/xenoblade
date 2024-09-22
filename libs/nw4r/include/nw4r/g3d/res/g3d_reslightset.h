#ifndef NW4R_G3D_RESLIGHTSET_H
#define NW4R_G3D_RESLIGHTSET_H
#include <nw4r/types_nw4r.h>

#include <nw4r/g3d/res/g3d_resanmscn.h>
#include <nw4r/g3d/res/g3d_rescommon.h>

namespace nw4r {
namespace g3d {

struct ResLightSetData {
    static const int MAX_LIGHT = 8;
    static const u32 INVALID_ID = 0xFFFF;

    u32 size;                  // at 0x0
    s32 toResAnmScnData;       // at 0x4
    s32 name;                  // at 0x8
    u32 id;                    // at 0xC
    u32 refNumber;             // at 0x10
    s32 ambLightName;          // at 0x14
    u16 ambLightId;            // at 0x18
    u8 numLight;               // at 0x1A
    u8 padding_[1];            // at 0x1B
    s32 lightNames[MAX_LIGHT]; // at 0x1C
    u16 lightId[MAX_LIGHT];    // at 0x3C
};

class ResLightSet : public ResCommon<ResLightSetData> {
public:
    NW4R_G3D_RESOURCE_FUNC_DEF(ResLightSet);

    bool Bind(ResAnmScn scene);

    bool HasAmbLight() const {
        return ref().ambLightName != 0;
    }

    ResName GetAmbLightResName() const {
        const ResLightSetData& r = ref();

        if (r.ambLightName != 0) {
            return NW4R_G3D_OFS_TO_RESNAME(&r, r.ambLightName);
        }

        return ResName(NULL);
    }

    u32 GetAmbLightID() const {
        return ref().ambLightId;
    }

    u32 GetNumLight() const {
        return ref().numLight;
    }

    bool IsAmbLightBound() const {
        return !HasAmbLight() || GetAmbLightID() != ResLightSetData::INVALID_ID;
    }

    ResName GetLightResName(u32 i) const {
        const ResLightSetData& r = ref();

        const s32* pNames = r.lightNames;
        return NW4R_G3D_OFS_TO_RESNAME(pNames, pNames[i]);
    }
};

} // namespace g3d
} // namespace nw4r

#endif