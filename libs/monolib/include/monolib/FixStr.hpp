#pragma once

#include "types.h"

namespace ml{

	template <size_t N>
	struct FixStr{
		char string[N];
		int length;

		FixStr(){
			init();
		}

		void init(){
			string[0] = 0;
			length = 0;
		}
	};

}
