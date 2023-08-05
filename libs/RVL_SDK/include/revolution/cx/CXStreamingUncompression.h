#ifndef RVL_SDK_CX_CX_STREAMING_UNCOMPRESSION_H
#define RVL_SDK_CX_CX_STREAMING_UNCOMPRESSION_H

#ifdef __cplusplus
extern "C" {
#endif

#include "types.h"

typedef struct CXUncompContextLH {
	u8* destp;
	s32 destCount;
	s32 forceDestCount;
	u16 huffTable9[1 << (9 + 1)];
	u16 huffTable12[1 << (5 + 1)];
	u16* nodep;
	s32 tableSize9;
	s32 tableSize12;
	u32 tableIdx;
	u32 stream;
	u32 stream_len;
	u16 length;
	s8 offset_bits;
	u8 headerSize;
} CXUncompContextLH;


void CXInitUncompContextLH(CXUncompContextLH* context, void* dest);
void CXReadUncompLH(CXUncompContextLH* context, const void* data, u32 len);


#ifdef __cplusplus
}
#endif
#endif
