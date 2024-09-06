#ifndef NW4R_SND_SOUND_3D_LISTENER_H
#define NW4R_SND_SOUND_3D_LISTENER_H
#include "types_nw4r.h"
#include "math_types.h"

namespace nw4r
{
	namespace snd
	{
		struct Sound3DListener
		{
			math::MTX34 mMatrix; // at 0x0
			
			f32 mInteriorSize; // at 0x30
			f32 mMaxVolumeDistance; // at 0x34
			f32 mUnitDistance; // at 0x38
			
			Sound3DListener();
		};
	}
}

#endif
