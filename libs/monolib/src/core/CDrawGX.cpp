#include "monolib/core.hpp"
#include "monolib/device.hpp"

CDrawGX::CDrawGX() :
mFlags(0),
mOpacity(1),
mDrawPrim(PRIM_INVALID),
unk1C(0),
mVerts(0),
mVertCount(0),
mLineWidth(LINE_WIDTH),
mZPos(0),
mPrimitive(0){
    mCol.set(1,1,1,1);
    unk90.setUnit();
}

CDrawGX::~CDrawGX(){
    CDeviceGX::getCacheInstance()->func_8044BFC0();
}

void CDrawGX::clear(){
    mOpacity = 1;
    mVertCount = 0;
    mPrimitive = 0;
    unk1C = 0;
    mDrawPrim = PRIM_INVALID;
    mVerts = 0;
    mZPos = 0;
    mLineWidth = LINE_WIDTH;
    mCol.set(1,1,1,1);
    unk90.setUnit();
}

void CDrawGX::setMatrix(const ml::CMat34& mat){
    unk90 = mat;

    setFlag(FLAG_5, true);
    setFlag(FLAG_INITIALIZED, false);
}

void CDrawGX::setPerspective(const ml::CMat34& mat, float f1, float f2, float f3){
    unk24 = f3;
    unk28 = f2;
    unk2C = f1;
    unk30 = mat;
    unk60 = mat;
    unk60.invert(&unk60);

    setFlag(FLAG_3, true);
    setFlag(FLAG_INITIALIZED, false);
}

void CDrawGX::setCol(const ml::CCol3& col){
    mCol.r = col.r;
    mCol.g = col.g;
    mCol.b = col.b;
    mCol.a = 1;

    mCol.clamp(0, 1);

    setFlag(FLAG_INITIALIZED, false);
}

void CDrawGX::setCol(const ml::CCol4& col){
    mCol = col;
    mCol.clamp(0, 1);

    setFlag(FLAG_INITIALIZED, false);
}

void CDrawGX::func_80456570(int r4){
    CDeviceGX::getCacheInstance()->func_8044A94C(r4, 0);
}

void CDrawGX::func_8045657C(int r4){
    CDeviceGX::getCacheInstance()->func_8044AA7C(r4, 0);
}

void CDrawGX::setTex(GXTexObj* pTexObj, u16 width, u16 height){
    CDeviceGX::getCacheInstance()->func_8044B4B8(pTexObj, width, height);

    setFlag(FLAG_1, true);
    setFlag(FLAG_INITIALIZED, false);
}

void CDrawGX::setPrimType(u32 primType){
    mDrawPrim = primType;
    mFlags = (u16)(mFlags & ~FLAG_INITIALIZED);

    switch(primType){
        case PRIM_1:
            mPrimitive = GX_POINTS;
            mFlags |= FLAG_16;
            break;
        case PRIM_2:
            mPrimitive = GX_LINES;
            mFlags |= FLAG_LINES;
            break;
        case PRIM_9:
            mPrimitive = GX_QUADS;
            mFlags |= FLAG_20;
            break;
        case PRIM_10:
            mPrimitive = GX_LINESTRIP;
            mFlags |= (FLAG_20 | FLAG_19 | FLAG_LINES);
            break;
        case PRIM_4:
            mPrimitive = GX_LINESTRIP;
            mFlags |= (FLAG_19 | FLAG_LINES);
            break;
        case PRIM_6:
            mPrimitive = GX_TRIANGLESTRIP;
            mFlags |= FLAG_19;
            break;
        case PRIM_7:
            mPrimitive = GX_TRIANGLEFAN;
            mFlags |= FLAG_19;
            break;
        case PRIM_3:
            mPrimitive = GX_LINES;
            mFlags |= (FLAG_DIRECT_COLOR | FLAG_LINES);
            break;
        case PRIM_5:
            mPrimitive = GX_LINESTRIP;
            mFlags |= (FLAG_19 | FLAG_DIRECT_COLOR | FLAG_LINES);
            break;
        case PRIM_8:
            mPrimitive = GX_TRIANGLESTRIP;
            mFlags |= (FLAG_19 | FLAG_DIRECT_COLOR);
            break;
        case PRIM_0:
            break;
    }
}

void CDrawGX::setupGX(){
    GXClearVtxDesc();

    GXLoadPosMtxImm(*ml::CMat34::identity, GX_PNMTX0);
    GXLoadNrmMtxImm(*ml::CMat34::identity, GX_PNMTX0);
    GXSetCurrentMtx(GX_PNMTX0);

    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);

    if(checkFlag(FLAG_3)){
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    }else{
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_S16, 0);
    }

    if(checkFlag(FLAG_1)){
        GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_S16, 0);
    }

    if(!checkFlag(FLAG_DIRECT_COLOR)){
        ml::CCol4 col = mCol;
        col.a *= mOpacity;

        if(checkFlag(FLAG_1)){
            CDeviceGX::getCacheInstance()->func_8044AE8C(col, 0);
        }else{
            CDeviceGX::getCacheInstance()->func_8044ACDC(col, 0);
        }
    }else{
        if(checkFlag(FLAG_1)){
            CDeviceGX::getCacheInstance()->func_8044B168(0);
        }else{
            CDeviceGX::getCacheInstance()->func_8044B03C(0);
        }

        GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    }

    if(mCol.a < 1){
        CDeviceGX::getCacheInstance()->func_8044A6C8(1, 0);
    }else{
        CDeviceGX::getCacheInstance()->func_8044A6C8((mFlags >> 4) & 1, 0);
    }

    if(checkFlag(FLAG_3)){
        if(checkFlag(FLAG_5)){
            CDeviceGX::getCacheInstance()->func_8044B8CC(unk2C, unk28, unk24);
            ml::CMat34 mat = unk90 * unk60;
            ml::CMat34 copy = mat;
            GXLoadPosMtxImm(*copy, 0);
        }else{
            CDeviceGX::getCacheInstance()->func_8044B8CC(unk2C, unk28, unk24);
            GXLoadPosMtxImm(*unk60, 0);
        }
    }else{
        CDeviceGX::getCacheInstance()->func_8044B660();
    }

    if(checkFlag(FLAG_LINES | FLAG_16)){
        GXSetLineWidth(mLineWidth, 0);
    }
}

void CDrawGX::begin(u32 primType, u32 r5){
    if(mDrawPrim != primType){
        setPrimType(primType);
    }

    switch(primType){
        case PRIM_1:
            mVerts = r5;
            break;
        case PRIM_2:
            mVerts = r5 * 2;
            break;
        case PRIM_9:
            mVerts = r5 * 4;
            break;
        case PRIM_10:
            mVerts = r5 * 5;
            break;
        case PRIM_4:
            mVerts = r5;
            break;
        case PRIM_6:
            mVerts = r5;
            break;
        case PRIM_7:
            mVerts = r5;
            break;
        case PRIM_3:
            mVerts = r5 * 2;
            break;
        case PRIM_5:
            mVerts = r5;
            break;
        case PRIM_8:
            mVerts = r5;
            break;
        case PRIM_0:
            break;
    }

    if(!checkFlag(FLAG_INITIALIZED)){
        setupGX();
    }

    GXBegin((GXPrimitive)mPrimitive, GX_VTXFMT0, mVerts);

    mZPos = (s16)CDeviceGX::getCacheInstance()->func_8044BD74(unk1C);
    mVertCount = 0;

    setFlag(FLAG_INITIALIZED, true);
}

void CDrawGX::add(const ml::CRect16& r4, const ml::CRect16& r5){
    GXPosition3s16(r4.mPos.x, r4.mPos.y, mZPos);
    GXTexCoord2s16(r5.mPos.x, r5.mPos.y);

    GXPosition3s16(r4.mPos.x + r4.mSize.x, r4.mPos.y, mZPos);
    GXTexCoord2s16(r5.mPos.x + r5.mSize.x, r5.mPos.y);

    GXPosition3s16(r4.mPos.x + r4.mSize.x, r4.mPos.y + r4.mSize.y, mZPos);
    GXTexCoord2s16(r5.mPos.x + r5.mSize.x, r5.mPos.y + r5.mSize.y);

    GXPosition3s16(r4.mPos.x, r4.mPos.y + r4.mSize.y, mZPos);
    GXTexCoord2s16(r5.mPos.x, r5.mPos.y + r5.mSize.y);

    mVertCount += 4;
}

void CDrawGX::add(const ml::CRect16& r4){
    if(checkFlag(FLAG_LINES)){
        GXPosition3s16(r4.mPos.x,r4.mPos.y,mZPos);
        GXPosition3s16(r4.mPos.x + r4.mSize.x,r4.mPos.y,mZPos);
        GXPosition3s16(r4.mPos.x + r4.mSize.x,r4.mPos.y + r4.mSize.y,mZPos);
        GXPosition3s16(r4.mPos.x,r4.mPos.y + r4.mSize.y,mZPos);
        GXPosition3s16(r4.mPos.x,r4.mPos.y,mZPos);

        mVertCount += 5;
    }else{
        GXPosition3s16(r4.mPos.x,r4.mPos.y,mZPos);
        GXPosition3s16(r4.mPos.x + r4.mSize.x,r4.mPos.y,mZPos);
        GXPosition3s16(r4.mPos.x + r4.mSize.x,r4.mPos.y + r4.mSize.y,mZPos);
        GXPosition3s16(r4.mPos.x,r4.mPos.y + r4.mSize.y,mZPos);

        mVertCount += 4;
    }
}

void CDrawGX::add(s16 x, s16 y, s16 r6, s16 r7){
    if(checkFlag(FLAG_1)){
        GXPosition3s16(x, y, mZPos);
        GXTexCoord2s16(r6, r7);

        mVertCount++;
    }else{
        GXPosition3s16(x, y, mZPos);
        GXPosition3s16(r6, r7, mZPos);

        mVertCount += 2;
    }
}

void CDrawGX::add(const ml::CVec3& vec){
    if(checkFlag(FLAG_3)){
        GXPosition3f32(vec.x, vec.y, vec.z);
    }else{
        //Convert to unsigned 16 bit values
        GXPosition3s16(vec.x, vec.y, vec.z);
    }

    mVertCount++;
}

void CDrawGX::add(s16 x, s16 y, const ml::CCol4& r6){
    GXPosition3s16(x, y, mZPos);
    GXColor1u32(r6.toU32());

    mVertCount++;
}

void CDrawGX::add(s16 x, s16 y){
    GXPosition3s16(x, y, 0);

    mVertCount++;
}

void CDrawGX::end(){
    if(mVertCount != 0 && mPrimitive != 0){
        mVertCount = 0;
    }
}

void CDrawGX::renderRect(const ml::CRect16& r4){
    setFlag(FLAG_3, false);
    setFlag(FLAG_1, false);

    begin(PRIM_6, 4);

    add(r4.mPos.x,r4.mPos.y);
    add(r4.mPos.x + r4.mSize.x,r4.mPos.y);
    add(r4.mPos.x,r4.mPos.y + r4.mSize.y);
    add(r4.mPos.x + r4.mSize.x,r4.mPos.y + r4.mSize.y);

    end();
}
