#include "revolution/cx/CXSecureUncompression.h"

//unused
void CXSecureUncompressAny(){
}

//unused
void CXSecureUncompressRL(){
}

//unused
void CXSecureUncompressLZ(){
}

//unused
void CXiVerifyHuffmanTable_(){
}

//unused
void CXSecureUncompressHuffman(){
}

//unused
void CXiHuffImportTree(){
}

//unused
void CXSecureUnfilterDiff(){
}

//Doesn't match on the 1.0 compiler
BOOL CXiLHVerifyTable(u16* r3, u32 r4) {
    u16* r30 = r3;
    u16* r31_28 = r30 + 1;
    u32 r31_24 = r30[0];
    u16* r31_20 = r31_24 + r3;
    u16 r7 = (1 << (r4 - 2)) - 1;
    u16 r8 = 1 << (r4 - 1);
    u16 r9 = 1 << (r4 - 2);

    u8 array[0x80];
    
    for(u32 j = 0; j < 0x80; j++){
        array[j] = 0;
    }

	if(r31_24 > (1 << (r4 + 1))){
		return FALSE;
	}

    u32 i = 1;
    r30 = r31_28;
    
	while (r30 < r31_20) {
		if((array[i/8] & (1 << (i & 0x7))) == 0){
			u32 r29 = ((r30[0] & r7) + 1) * 2;
            u32 r11 = ((u32)r30 & ~0x3) + r29 * 2;
            
			if(r30[0] != 0 || i < r31_24 - 4){
			    if(r11 >= (u32)r31_20){
				    return FALSE;
			    }

				if((r30[0] & r8) != 0){
					u32 r10 = (i & ~1) + r29;
					array[r10/8] |= 1 << (r10 & 0x7);
				}

				if((r30[0] & r9) != 0){
					u32 r10 = (i & ~1) + r29 + 1;
					array[r10/8] |= 1 << (r10 & 0x7);
				}
            }
		}

		i++;
		r30++;
	}

	return TRUE;
}

//unused
void CXSecureUncompressLH(){
}

//unused
void RCAddCount_(){
}

//unused
void RCSearch_(){
}

//unused
void CXSecureUncompressLRC(){
}
