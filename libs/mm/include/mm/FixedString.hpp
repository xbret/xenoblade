#pragma once

#include "types.h"

template <size_t N>
struct FixedString{
	char string[N];
	int length;

	void reset(){
		string[0] = 0;
		length = 0;
	}
};
