#include "revolution/math.h"
#include "revolution/GX.h"

void GXInitLightAttn(GXLightObj* light, float aa, float ab, float ac, float ka, float kb,
                     float kc) {
    light->aa = aa;
    light->ab = ab;
    light->ac = ac;
    light->ka = ka;
    light->kb = kb;
    light->kc = kc;
}

void GXInitLightAttnA(GXLightObj* light, float a, float b, float c) {
    light->aa = a;
    light->ab = b;
    light->ac = c;
}

//unused
void GXGetLightAttnA(){
}

void GXInitLightAttnK(GXLightObj* light, float a, float b, float c) {
    light->ka = a;
    light->kb = b;
    light->kc = c;
}

//unused
void GXGetLightAttnK(){
}

void GXInitLightSpot(GXLightObj* light, float angle, GXSpotFn fn) {
    float rad;
    float a, b, c, d;

    if (angle <= 0.0f || angle > 90.0f) {
        fn = GX_SP_OFF;
    }

    rad = cosf((3.1415927f * angle) / 180.0f);

    switch (fn) {
    case GX_SP_FLAT:
        a = -1000.0f * rad;
        b = 1000.0f;
        c = 0.0f;
        break;
    case GX_SP_COS:
        b = 1.0f / (1.0f - rad);
        a = -rad * b;
        c = 0.0f;
        break;
    case GX_SP_COS2:
        c = 1.0f / (1.0f - rad);
        a = 0.0f;
        b = -rad * c;
        break;
    case GX_SP_SHARP:
        d = 1.0f / ((1.0f - rad) * (1.0f - rad));
        a = (rad * (rad - 2.0f)) * d;
        b = 2.0f * d;
        c = -d;
        break;
    case GX_SP_RING1:
        d = 1.0f / ((1.0f - rad) * (1.0f - rad));
        c = -4.0f * d;
        a = c * rad;
        b = 4.0f * (1.0f + rad) * d;
        break;
    case GX_SP_RING2:
        d = 1.0f / ((1.0f - rad) * (1.0f - rad));
        a = 1.0f - 2.0f * rad * rad * d;
        b = 4.0f * rad * d;
        c = -2.0f * d;
        break;
    case GX_SP_OFF:
    default:
        a = 1.0f;
        b = 0.0f;
        c = 0.0f;
        break;
    }

    light->aa = a;
    light->ab = b;
    light->ac = c;
}

void GXInitLightDistAttn(GXLightObj* light, float f1, float f2, GXDistAttnFn fn) {
    float a, b, c;

    if (f1 < 0.0f) {
        fn = GX_DA_OFF;
    }

    if (f2 <= 0.0f || f2 >= 1.0f) {
        fn = GX_DA_OFF;
    }

    switch (fn) {
    case GX_DA_GENTLE:
        a = 1.0f;
        b = (1.0f - f2) / (f2 * f1);
        c = 0.0f;
        break;
    case GX_DA_MEDIUM:
        a = 1.0f;
        b = (0.5f * (1.0f - f2)) / (f2 * f1);
        c = (0.5f * (1.0f - f2)) / (f1 * (f2 * f1));
        break;
    case GX_DA_STEEP:
        a = 1.0f;
        b = 0.0f;
        c = (1.0f - f2) / (f1 * (f2 * f1));
        break;
    case GX_DA_OFF:
    default:
        a = 1.0f;
        b = 0.0f;
        c = 0.0f;
        break;
    }

    light->ka = a;
    light->kb = b;
    light->kc = c;
}

void GXInitLightPos(GXLightObj* light, float x, float y, float z) {
    light->posX = x;
    light->posY = y;
    light->posZ = z;
}

void GXGetLightPos(const GXLightObj* light, float* x, float* y, float* z) {
    *x = light->posX;
    *y = light->posY;
    *z = light->posZ;
}

void GXInitLightDir(GXLightObj* light, float x, float y, float z) {
    light->dirX = -x;
    light->dirY = -y;
    light->dirZ = -z;
}

void GXGetLightDir(const GXLightObj* light, float* x, float* y, float* z) {
    *x = -light->dirX;
    *y = -light->dirY;
    *z = -light->dirZ;
}

void GXInitSpecularDir(GXLightObj* light, float x, float y, float z) {
    float dirX, dirY, dirZ;
    float mag;

    dirX = -x;
    dirY = -y;
    dirZ = 1.0f + -z;

    mag = dirX * dirX + dirY * dirY + dirZ * dirZ;
    if (mag != 0.0f) {
        mag = 1.0f / sqrtf(mag);
    }

    light->dirX = dirX * mag;
    light->dirY = dirY * mag;
    light->dirZ = dirZ * mag;

    light->posX = -9.9999998E17f * x;
    light->posY = -9.9999998E17f * y;
    light->posZ = -9.9999998E17f * z;
}

//unused
void GXInitSpecularDirHA(){
}

void GXInitLightColor(GXLightObj* light, GXColor color) {
    *(u32*)&light->color = *(u32*)&color;
}

//unused
void GXGetLightColor(){
}

asm void GXLoadLightObjImm(register GXLightObj* light, register u32 id) {
        nofralloc

    cntlzw r0, id
    lis r4, WGPIPE@ha
    subfic r5, r0, 0x1f
    rlwinm r5, r5, 4, 0x19, 0x1b
    li r0, 0x10
    stb r0, WGPIPE@l(r4)
    addi r0, r5, 0x600
    oris r0, r0, 0xf
    addi r5, r4, WGPIPE@l
    stw r0, WGPIPE@l(r4)
    lwz r0, 0xc(r3)
    xor r6, r6, r6
    psq_l f5, 16(light), 0, 0
    psq_l f4, 24(light), 0, 0
    psq_l f3, 32(light), 0, 0
    psq_l f2, 40(light), 0, 0
    psq_l f1, 48(light), 0, 0
    psq_l f0, 56(light), 0, 0
    stw r6, WGPIPE@l(r4)
    stw r6, WGPIPE@l(r4)
    stw r6, WGPIPE@l(r4)
    stw r0, WGPIPE@l(r4)
    psq_st f5, 0(r5), 0, 0
    psq_st f4, 0(r5), 0, 0
    psq_st f3, 0(r5), 0, 0
    psq_st f2, 0(r5), 0, 0
    psq_st f1, 0(r5), 0, 0
    psq_st f0, 0(r5), 0, 0

    li r0, 1
    lwz r3, __GXData
    sth r0, 2(r3)

    blr
    }

//unused
asm void GXLoadLightObjIndx(register u32 index, register u32 id) {
        nofralloc

    cntlzw r0, id
    lis r5, WGPIPE@ha
    subfic r4, r0, 0x1f
    li r6, 0
    li r0, 0x38
    rlwinm r4, r4, 4, 0x19, 0x1b
    stb r0, WGPIPE@l(r5)
    addi r0, r4, 0x600
    lwz r4, __GXData
    rlwimi r6, r0, 0, 0x14, 0x1f
    ori r6, r6, 0xf000
    li r0, 1
    rlwimi r6, index, 0x10, 0, 0xf
    stw r6, WGPIPE@l(r5)
    sth r0, 2(r4)

    blr
    }

void GXSetChanAmbColor(GXChannelID chan, GXColor color) {
    u32 ambColor;
    u32 colorId;

    switch (chan) {
    case GX_COLOR0:
        ambColor =
            __rlwimi(*(u32*)&__GXData->ambColors[0], *(u32*)&color, 0, 0, 23);
        colorId = 0;
        break;
    case GX_COLOR1:
        ambColor =
            __rlwimi(*(u32*)&__GXData->ambColors[1], *(u32*)&color, 0, 0, 23);
        colorId = 1;
        break;
    case GX_ALPHA0:
        ambColor = __rlwimi(*(u32*)&__GXData->ambColors[0], color.a, 0, 24, 31);
        colorId = 0;
        break;
    case GX_ALPHA1:
        ambColor = __rlwimi(*(u32*)&__GXData->ambColors[1], color.a, 0, 24, 31);
        colorId = 1;
        break;
    case GX_COLOR0A0:
        ambColor = *(u32*)&color;
        colorId = 0;
        break;
    case GX_COLOR1A1:
        ambColor = *(u32*)&color;
        colorId = 1;
        break;
    default:
        return;
    }

    __GXData->dirtyFlags |= 0x100 << colorId;
    *(u32*)&__GXData->ambColors[colorId] = ambColor;
}

void GXSetChanMatColor(GXChannelID chan, GXColor color) {
    u32 matColor;
    u32 colorId;

    switch (chan) {
    case GX_COLOR0:
        matColor =
            __rlwimi(*(u32*)&__GXData->matColors[0], *(u32*)&color, 0, 0, 23);
        colorId = 0;
        break;
    case GX_COLOR1:
        matColor =
            __rlwimi(*(u32*)&__GXData->matColors[1], *(u32*)&color, 0, 0, 23);
        colorId = 1;
        break;
    case GX_ALPHA0:
        matColor = __rlwimi(*(u32*)&__GXData->matColors[0], color.a, 0, 24, 31);
        colorId = 0;
        break;
    case GX_ALPHA1:
        matColor = __rlwimi(*(u32*)&__GXData->matColors[1], color.a, 0, 24, 31);
        colorId = 1;
        break;
    case GX_COLOR0A0:
        matColor = *(u32*)&color;
        colorId = 0;
        break;
    case GX_COLOR1A1:
        matColor = *(u32*)&color;
        colorId = 1;
        break;
    default:
        return;
    }

    __GXData->dirtyFlags |= 0x400 << colorId;
    *(u32*)&__GXData->matColors[colorId] = matColor;
}

void GXSetNumChans(u8 num) {
    GX_BITFIELD_SET(__GXData->WORD_0x254, 25, 3, num);
    __GXData->dirtyFlags |= 0x1000000;
    __GXData->dirtyFlags |= 0x4;
}

void GXSetChanCtrl(GXChannelID chan, GXBool r4, GXColorSrc src0,
                   GXColorSrc src1, GXLightID light, GXDiffuseFn diffFn,
                   GXAttnFn attnFn) {
    u32 field = 0;
    const u32 idx = chan & 3;

    GX_BITFIELD_SET(field, 30, 1, r4);
    GX_BITFIELD_SET(field, 31, 1, src1);
    GX_BITFIELD_SET(field, 25, 1, src0);
    GX_BITFIELD_SET(field, 23, 2, (attnFn == GX_AF_SPEC) ? GX_DF_NONE : diffFn);
    GX_BITFIELD_SET(field, 22, 1, attnFn != GX_AF_NONE);
    GX_BITFIELD_SET(field, 21, 1, attnFn != GX_AF_SPEC);
    GX_BITFIELD_SET(field, 26, 4, (u32)light);
    GX_BITFIELD_SET(field, 17, 4, (u32)light >> 4);

    __GXData->WORDS_0xB8[idx] = field;
    __GXData->dirtyFlags |= (0x1000 << (idx));

    if (chan == GX_COLOR0A0) {
        __GXData->WORD_0xC0 = field;
        __GXData->dirtyFlags |= 0x5000;
    } else if (chan == GX_COLOR1A1) {
        __GXData->WORD_0xC4 = field;
        __GXData->dirtyFlags |= 0xA000;
    }
}
