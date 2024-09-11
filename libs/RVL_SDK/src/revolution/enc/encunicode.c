#include <revolution/enc/encunicode.h>

//unused
static char base64_array[] = {
    0
};

ENCResult ENCiConvertStringUtf8ToUtf16(u16* dest, u32* destLengthPtr, u8* src, u32* srcLengthPtr, ENCBreakType brType);
u32 ENCiConvertUtf8To32(const u8* src, s32 size);
void ENCiConvertUtf32To16(u16* dest, s32 size, u32 val);

//unused
void ENCConvertStringUnicodeToAscii(){
}

//unused
void ENCConvertStringAsciiToUnicode(){
}

//unused
void ENCConvertStringUtf32ToUtf16(){
}

//unused
void ENCConvertStringUtf16ToUtf32(){
}

//unused
void ENCConvertStringUtf32ToUtf8(){
}

//unused
void ENCConvertStringUtf8ToUtf32(){
}

//unused
void ENCConvertStringUtf16ToUtf8(){
}

ENCResult ENCConvertStringUtf8ToUtf16(u16* dest, u32* destLength, u8* src, u32* srcLength){
    return ENCiConvertStringUtf8ToUtf16(dest, destLength, src, srcLength, ENC_BR_KEEP);
}

//unused
void ENCConvertStringUtf16ToUtf16(){
}

//unused
void ENCConvertStringUtf16LEToUtf16BE(){
}

//unused
void ENCConvertStringUtf7ToUtf16(){
}

//unused
void ENCSetUnicodeBOM(){
}

//unused
void ENCSetUnicodeBOM32(){
}

//unused
void ENCSetUnicodeBOM16(){
}

//unused
void ENCSetUnicodeBOM8(){
}

//unused
void ENCiConvertStringUnicodeToAscii(){
}

//unused
void ENCiConvertStringAsciiToUnicode(){
}

//unused
void ENCiConvertStringUtf32ToUtf16(){
}

//unused
void ENCiConvertStringUtf16ToUtf32(){
}

//unused
void ENCiConvertStringUtf32ToUtf8(){
}

//unused
void ENCiConvertStringUtf8ToUtf32(){
}

//unused
void ENCiConvertStringUtf16ToUtf8(){
}


ENCResult ENCiConvertStringUtf8ToUtf16(u16* dest, u32* destLengthPtr, u8* src, u32* srcLengthPtr, ENCBreakType brType){
    s32 srcOffset = 0;
    s32 destOffset = 0;
    s32 srcLength = -1;
    s32 destLength = -1;
    BOOL destParamsValid = TRUE;
    BOOL srcParamsValid = TRUE;

    //Check the parameters for possible errors. This also handles copying the length from the parameters
    //to our temporary variables rather than directly using those. It seems a bit overkill but if it works
    //it works :p
    ENCResult result = ENCiCheckParameters(dest != NULL, destLengthPtr, &destLength, &destParamsValid,
    src != NULL, srcLengthPtr, &srcLength, &srcParamsValid);

    //If one of the parameters is invalid, return
    if (result != ENC_RESULT_OK) {
        return result;
    }

    //Check if the text starts with a BOM mark (EF BB B8 in UTF-8)
    if ((srcLength >= 3 || !srcParamsValid) && src[0] == 0xEf && src[1] == 0xBB && src[2] == 0xBF) {
        src += 3;
        srcOffset = 3;
    }
    
    while(*src != 0x00 && (srcOffset < srcLength || !srcParamsValid)) {
        u8 curChar = *src;

        //If the current destination offset is past the length, return an error
        if (destOffset >= destLength && destParamsValid) {
            result = ENC_RESULT_ERROR_OUT_OF_RANGE;
            break;
        }

        //If the break type isn't ENC_BR_KEEP, change the break characters
        if (brType > ENC_BR_KEEP){
            //Determine the size of the break character sequence. If there is more than
            //a single character left, read the next character as well.
            u8 char2 = (srcLength - srcOffset) > 1 || !srcParamsValid ? src[1] : 0;
            s32 srcBreakSize = ENCiCheckBreakType(curChar, char2);

            //If the there is a break at the current offset, try writing it to the destination.
            if (srcBreakSize > 0){
                s32 destBreakSize = ENCiWriteBreakType((u8*)dest, 2, brType, destParamsValid);

                //If there isn't enough space for the current break character, return an error
                if (destLength - destOffset < destBreakSize && destParamsValid) {
                    result = ENC_RESULT_ERROR_OUT_OF_RANGE;
                    break;
                }
        
                src += srcBreakSize;
                srcOffset += srcBreakSize;
                destOffset += destBreakSize;
        
                if (destParamsValid) {
                    dest += destBreakSize;
                }

                //Go to the next character
                continue;
            }
        }

        //Check if the character is a regular ASCII character (less than 0x80)
        if (curChar < 0x80) {
            //ASCII character
            
            //If the destination is not null, write the current character.
            if (destParamsValid) {
                *dest = curChar;
                dest++;
            }
        
            destOffset++;
            src++;
            srcOffset++;
        }else{
            //Unicode character
            s32 srcCharSize;
            s32 destCharSize;
            u32 utf32Char;

            //Find out the UTF-8 character size and the corresponding UTF-16 character size
            if ((u8)(curChar & 0xE0) == 0xC0) {
                srcCharSize = 2;
                destCharSize = 1;
            } else if ((u8)(curChar & 0xF0) == 0xE0) {
                srcCharSize = 3;
                destCharSize = 1;
            } else  if ((u8)(curChar & 0xF8) == 0xF0) {
                srcCharSize = 4;
                destCharSize = 2;
            }else{
                //Invalid character
                result = ENC_RESULT_ERROR_INVALID_CHAR;
                break;
            }

            //Break early if there aren't enough bytes left for the current character
            if (srcLength - srcOffset < srcCharSize && srcParamsValid) break;
        
            utf32Char = ENCiConvertUtf8To32(src,srcCharSize);

            //If the conversion failed, return an error
            if (utf32Char == 0) {
                result = ENC_RESULT_ERROR_INVALID_CHAR;
                break;
            }
            
            if (destParamsValid != 0) {
                //If there isn't enough bytes left for this character, return an error
                if (destLength - destOffset < destCharSize) {
                    result = ENC_RESULT_ERROR_OUT_OF_RANGE;
                    break;
                }
            
                ENCiConvertUtf32To16(dest, destCharSize, utf32Char);
                dest += destCharSize;
            }
        
            destOffset += destCharSize;
            src += srcCharSize;
            srcOffset += srcCharSize;
        }
    }
    
    if (srcLengthPtr != NULL) {
        *srcLengthPtr = srcOffset;
    }
    
    if (destLengthPtr != NULL) {
        *destLengthPtr = destOffset;
    }
    
    return result;
}

//unused
void ENCiConvertStringUtf7ToUtf16(){
}

//unused
void ENCiConvertStringUtf16ToUtf16(){
}

//Converts a set of UTF-8 character bytes to the equivalent UTF-32 value.
static u32 ENCiConvertUtf8To32(const u8* src, s32 size){
    s32 i;
    u32 result;

    switch(size){
        case 1:
        result = *src;
        break;
        case 2:
        result = *src & 0x1F;
        break;
        case 3:
        result = *src & 0xF;
        break;
        case 4:
        result = *src & 0x7;
        break;
        default:
        return 0;
    }

    for(i = 1; i < size; i++){
        if((u8)(src[i] & 0xC0) != 0x80){
            return 0;
        }
        
        result <<= 6;
        result += (src[i] & 0x3F);
    }

    return result;
}

//unused
static void ENCiConvertUtf32To8(){
}

//unused
static void ENCiConvertUtf16To32(){
}

//Converts a UTF-32 value to the equivalent UTF-16 bytes, and writes it to the destination.
static void ENCiConvertUtf32To16(u16* dest, s32 size, u32 val){
    if(size == 1){
        dest[0] = val;
    }
    if(size == 2){
        dest[0] = (val >> 10) + 0xD7C0;
        dest[1] = (val & 0x3FF) + 0xDC00;
    }
}

//unused
static void ENCiGetBase64Value(){
}

