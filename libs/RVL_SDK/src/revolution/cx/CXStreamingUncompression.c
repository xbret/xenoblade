#include "revolution/cx/CXStreamingUncompression.h"

//unused
void CXInitUncompContextRL(){
}

//unused
void CXInitUncompContextLZ(){
}

//unused
void CXInitUncompContextHuffman(){
}

//unused
void CXReadUncompRL(){
}

static void CXiReadHeader(){
}

//unused
void CXReadUncompLZ(){
}

//unused
void CXReadUncompHuffman(){
}

static u32 CXiConvertEndian_(u32 val) {
    return ((val & 0xFF000000) >> 24) | ((val & 0xFF0000) >> 8) | ((val & 0xFF00) << 8) | ((val & 0xFF) << 24);
}

static void GetNextNode(){
}


void CXInitUncompContextLH(CXUncompContextLH* context, void* dest){
	context->destp = (u8*)dest;
	context->destCount = -1;
	context->nodep = context->huffTable9 + 1;
	context->tableSize9 = -1;
	context->tableSize12 = -1;
	context->headerSize = 8;
	context->length = 0;
	context->stream = 0;
	context->stream_len = 0;
	context->offset_bits = -1;
	context->forceDestCount = 0;
}

void CXReadUncompLH(CXUncompContextLH* context, const void* data, u32 len){
}

static u16 CXiConvertEndian16_(u16 val){
    return ((val & 0xFF00) >> 8) | ((val & 0xFF) << 8);
}

s32 BitReader_Read(u32* data, u32 len) {
    s32 iVar1;
    
    while(data[3] < (len & 0xff)) {
        if (data[1] == 0) {
            return -1;
        }
        
        data[2] <<= 8;
        data[2] += *(u8*)data[0];
        data[0] += 1;
        data[1] -= 1;
        data[3] += 8;
    }

    iVar1 = ((1 << (len & 0xff)) - 1) & (data[2] >> (data[3] - (len & 0xff)));
   data[3] -= (len & 0xff);
    return iVar1;
}

static s64 BitReader_ReadEx(u32* data, s32 len) {
    s64 r29; //r29/r30
    u32 r28 = 0;

    while(data[3] < (len & 0xFF)){
    if(data[1] == 0){
        return -1;
    }

    if(data[3] > 24){
        r28 = (u8)(data[2] >> 24);
    }

    data[2] <<= 8;
    data[2] += *(u8*)data[0];
    data[0] += 1;
    data[1] -= 1;
    data[3] += 8;
    }

    r29 = data[2];
    r29 |= (s64)(r28 & 0xFF) << 32;
    r29 = ((r29 >> (data[3] - (len & 0xFF))) & ((1 << (len & 0xFF)) - 1));
    data[3] -= (len & 0xFF);

    return r29;
}

//unused
void RCAddCount_(){
}

//unused
void RCSearch_(){
}

//unused
void RCGetData_(){
}

//unused
void CXInitUncompContextLRC(){
}

static void LRCFin_(){
}


static void RCInitState_(){
}


static void RCInitInfo_(){
}


static void LRCIntro_(){
}

//unused
void CXReadUncompLRC(){
}
