#include <revolution/enc/encunicode.h>

//unused
static char base64_array[] = {
    0
};

ENCResult ENCiConvertStringUtf8ToUtf16(u16* r3, u32* r4, u8* r5, u32* r6, UNKWORD r7);
u32 ENCiConvertUtf8To32(const u8* str, UNKWORD r4);
void ENCiConvertUtf32To16(u16* charPtr, UNKWORD r4, UNKWORD r5);

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

ENCResult ENCConvertStringUtf8ToUtf16(u16* r3, u32* r4, u8* r5, u32* r6){
    return ENCiConvertStringUtf8ToUtf16(r3,r4,r5,r6,0);
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

ENCResult ENCiConvertStringUtf8ToUtf16(u16* r3, u32* r4, u8* r5, u32* r6, UNKWORD r7){
    u8 bVar1;
    u8 bVar2;
    BOOL bVar3;
    int iVar4;
    int iVar5;
    u32 r5_00;
    u32 uVar7;
    u32 uVar6;
    int local_58;
    int local_54;
    int local_48;
    int local_38;
    int local_3c;
    u32 local_40;
    u32 local_44;
    
    uVar7 = 0;
    uVar6 = 0;
    local_38 = -1;
    local_3c = -1;
    local_40 = 1;
    local_44 = 1;
    local_48 = ENCiCheckParameters((u32)r3 != 0,r4,(u32*)&local_3c,&local_40,
                                   (u32)r5 != 0,r6,&local_38,&local_44);
    if (local_48 != 0) {
        return local_48;
    }
    
    if ((((3 <= local_38) || (local_44 == 0)) && (*r5 == 0xef)) && ((r5[1] == 0xbb && (r5[2] == 0xbf)))) {
        r5 = r5 + 3;
        uVar7 = 3;
    }else{
        goto lbl_2bc;
    }
LAB_00011e30:
    while( TRUE ) {
        bVar1 = *r5;
        if (((int)local_3c <= (int)uVar6) && (local_40 != 0)) {
            local_48 = -1;
            goto LAB_00011e54;
        }
        if (r7 < 1) break;
        bVar3 = TRUE;
        if (((int)(local_38 - uVar7) < 2) && (local_44 != 0)) {
            bVar3 = FALSE;
        }
        if (bVar3) {
            bVar2 = r5[1];
        }
        else {
            bVar2 = 0;
        }
        iVar4 = ENCiCheckBreakType(*r5,bVar2);
        if (iVar4 < 1) break;
        iVar5 = ENCiWriteBreakType((u8*)r3,2,r7,local_40);
        if (((int)(local_3c - uVar6) < iVar5) && (local_40 != 0)) {
            local_48 = -1;
            goto LAB_00011e54;
        }
        r5 = r5 + iVar4;
        uVar7 = uVar7 + iVar4;
        uVar6 = uVar6 + iVar5;
        if (local_40 != 0) {
            r3 = r3 + iVar5;
        }
    }

    if (bVar1 < 0x80) {
        if (local_40 != 0) {
            *r3 = (u16)bVar1;
            r3++;
        }
        uVar6++;
        r5++;
        uVar7++;
        goto LAB_00011e30;
    }

    if ((bVar1 & 0xe0) == 0xc0) {
        local_54 = 2;
        local_58 = 1;
    }
    else if ((bVar1 & 0xf0) == 0xe0) {
        local_54 = 3;
        local_58 = 1;
    }
    else {
        if ((bVar1 & 0xf8) != 0xf0) {
            local_48 = -4;
        
        }
        local_54 = 4;
        local_58 = 2;
    }

    if (((int)(local_38 - uVar7) < local_54) && (local_44 != 0)) goto LAB_00011e54;
    r5_00 = ENCiConvertUtf8To32(r5,local_54);
    if (r5_00 == 0) {
        local_48 = -4;
        goto LAB_00011e54;
    }
    if (local_40 != 0) {
        if ((int)(local_3c - uVar6) < local_58) {
            local_48 = -1;
            goto LAB_00011e54;
        }
        ENCiConvertUtf32To16(r3,local_58,r5_00);
        r3 += local_58;
    }
    uVar6 += local_58;
    r5 += local_54;
    uVar7 += local_54;
    goto LAB_00011e30;

    lbl_2bc:
    if ((*r5 == 0) || ((local_38 <= (int)uVar7 && (local_44 != 0)))) goto LAB_00011e30;

    LAB_00011e54:
    if (r6 != (u32 *)0x0) {
        *r6 = uVar7;
    }
    if (r4 != (u32 *)0x0) {
        *r4 = uVar6;
    }
    return local_48;
}

//unused
void ENCiConvertStringUtf7ToUtf16(){
}

//unused
void ENCiConvertStringUtf16ToUtf16(){
}

static u32 ENCiConvertUtf8To32(const u8* str, UNKWORD r4){
    int r30;
    u32 r31;

    switch(r4){
        case 1:
        r31 = *str;
        break;
        case 2:
        r31 = *str & 0x1F;
        break;
        case 3:
        r31 = *str & 0xF;
        break;
        case 4:
        r31 = *str & 0x7;
        break;
        default:
        return 0;
    }

    for(r30 = 1; r30 < r4; r30++){
        u8 r0 = str[r30];
        r0 &= 0xC0;
        if(r0 != 0x80){
            return 0;
        }
        r31 <<= 6;
        r0 = str[r30];
        r0 &= 0x3F;
        r31 += r0;
    }

    return r31 | r31;
}

//unused
static void ENCiConvertUtf32To8(){
}

//unused
static void ENCiConvertUtf16To32(){
}

static void ENCiConvertUtf32To16(u16* charPtr, UNKWORD r4, UNKWORD r5){
    switch(r4){
        case 1:
        charPtr[0] = r5;
        break;
        case 2:
        charPtr[0] = ((u16)r5 >> 10) + 0xD7C0;
        charPtr[1] = ((u16)r5 & 0x3FF) + 0xDC00;
        break;
    }
}

//unused
static void ENCiGetBase64Value(){
}

