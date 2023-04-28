#pragma once

#include "types.h"

namespace nw4hbm
{
	namespace ut
	{
		template <typename T> struct TextWriterBase;
		template <typename T> struct TagProcessorBase;
	}
	
	namespace math
	{
		struct VEC2;
		struct VEC3;
		struct MTX34;
	}

	namespace lyt
	{
		struct Size;

		namespace detail
		{
			struct PaneBase;
		}

		namespace res
		{
			struct Pane;
			struct AnimationBlock;
		}

		struct Pane;
		struct DrawInfo;
		struct AnimResource;
		struct AnimTransform;
		struct AnimTransformBasic;
		struct AnimationLink;
		struct ResourceAccessor;
		struct ArcResourceAccessor;
		struct Material;
	}
}
