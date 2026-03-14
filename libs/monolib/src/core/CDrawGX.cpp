#include "monolib/core.hpp"
#include "monolib/device.hpp"

CDrawGX::CDrawGX(){
    unk0 = 0;
    unk14 = 1;
    unk18 = -1;
    unk1C = 0;
    unk20 = 0;
    unkC0 = 0;
    unkC4 = 6;
    unkC8 = 0;
    unkCC = 0;
    unk4.set(1,1,1,1);
    unk90.setUnit();
}

CDrawGX::~CDrawGX(){
    CDeviceGX::getCacheInstance()->func_8044BFC0();
}

void CDrawGX::func_80456204(){
    unk14 = 1;
    unkC0 = 0;
    unkCC = 0;
    unk1C = 0;
    unk18 = -1;
    unk20 = 0;
    unkC8 = 0;
    unkC4 = 6;
    unk4.set(1,1,1,1);
    unk90.setUnit();
}

void CDrawGX::setMatrix(const ml::CMat34& mat){
    unk90 = mat;
    unk0 = (unk0 | 0x20) & ~0x4;
}

void CDrawGX::func_804562E0(const ml::CMat34& mat, float f1, float f2, float f3){
    unk24 = f3;
    unk28 = f2;
    unk2C = f1;
    unk30 = mat;
    unk60 = mat;
    unk60.invert(&unk60);
    unk0 = (unk0 | 0x8) & ~0x4;
}

void CDrawGX::setCol(const ml::CCol3& col){
    unk4.r = col.r;
    unk4.g = col.g;
    unk4.b = col.b;
    unk4.a = 1;

    unk4.clamp(0, 1);

    unk0 &= ~0x4;
}

void CDrawGX::setCol(const ml::CCol4& col){
    unk4 = col;
    unk4.clamp(0, 1);

    unk0 &= ~0x4;
}

void CDrawGX::func_80456570(int r4){
    CDeviceGX::getCacheInstance()->func_8044A94C(r4, 0);
}

void CDrawGX::func_8045657C(int r4){
    CDeviceGX::getCacheInstance()->func_8044AA7C(r4, 0);
}

void CDrawGX::setTex(GXTexObj* pTexObj, u16 width, u16 height){
    CDeviceGX::getCacheInstance()->func_8044B4B8(pTexObj, width, height);
    unk0 = (unk0 | 2) & ~0x4;
}

void CDrawGX::begin(int r4, int r5){
}

void CDrawGX::renderRect(const ml::CRect16& r4, const ml::CRect16& r5){
    GXPosition3s16(r4.mPos.x, r4.mPos.y, unkC8);
    GXTexCoord2s16(r5.mPos.x, r5.mPos.y);

    GXPosition3s16(r4.mPos.x + r4.mSize.x, r4.mPos.y, unkC8);
    GXTexCoord2s16(r5.mPos.x + r5.mSize.x, r5.mPos.y);

    GXPosition3s16(r4.mPos.x + r4.mSize.x, r4.mPos.y + r4.mSize.y, unkC8);
    GXTexCoord2s16(r5.mPos.x + r5.mSize.x, r5.mPos.y + r5.mSize.y);

    GXPosition3s16(r4.mPos.x, r4.mPos.y + r4.mSize.y, unkC8);
    GXTexCoord2s16(r5.mPos.x, r5.mPos.y + r5.mSize.y);

    unkC0 += 4;
}

void CDrawGX::func_80456B0C(const ml::CRect16& r4){
    if(unk0 & 0x20000){
        GXPosition3s16(r4.mPos.x,r4.mPos.y,unkC8);
        GXPosition3s16(r4.mPos.x + r4.mSize.x,r4.mPos.y,unkC8);
        GXPosition3s16(r4.mPos.x + r4.mSize.x,r4.mPos.y + r4.mSize.y,unkC8);
        GXPosition3s16(r4.mPos.x,r4.mPos.y + r4.mSize.y,unkC8);
        GXPosition3s16(r4.mPos.x,r4.mPos.y,unkC8);

        unkC0 += 5;
    }else{
        GXPosition3s16(r4.mPos.x,r4.mPos.y,unkC8);
        GXPosition3s16(r4.mPos.x + r4.mSize.x,r4.mPos.y,unkC8);
        GXPosition3s16(r4.mPos.x + r4.mSize.x,r4.mPos.y + r4.mSize.y,unkC8);
        GXPosition3s16(r4.mPos.x,r4.mPos.y + r4.mSize.y,unkC8);

        unkC0 += 4;
    }
}

void CDrawGX::addPoint(s16 x, s16 y, s16 r6, s16 r7){
    if(unk0 & 2){
        GXPosition3s16(x, y, unkC8);
        GXTexCoord2s16(r6, r7);

        unkC0++;
    }else{
        GXPosition3s16(x, y, unkC8);
        GXPosition3s16(r6, r7, unkC8);

        unkC0 += 2;
    }
}

void CDrawGX::func_80456C6C(const ml::CVec3& vec){
    if(unk0 & 8){
        GXPosition3f32(vec.x, vec.y, vec.z);
    }else{
        //Convert to unsigned 16 bit values
        GXPosition3u16(vec.x, vec.y, vec.z);
    }

    unkC0++;
}

void CDrawGX::end(){
    if(unkC0 != 0 && unkCC != 0){
        unkC0 = 0;
    }
}
