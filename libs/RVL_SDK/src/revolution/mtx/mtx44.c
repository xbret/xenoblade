#include <math.h>
#include <revolution/MTX.h>

void C_MTXFrustum(Mtx44 mtx, float t, float b, float l, float r, float n, float f) {
    float invrange;

    invrange = 1.0f / (r - l);
    mtx[0][0] = 2.0f * n * invrange;
    mtx[0][1] = 0.0f;
    mtx[0][2] = invrange * (r + l);
    mtx[0][3] = 0.0f;

    invrange = 1.0f / (t - b);
    mtx[1][0] = 0.0f;
    mtx[1][1] = 2.0f * n * invrange;
    mtx[1][2] = invrange * (t + b);
    mtx[1][3] = 0.0f;

    invrange = 1.0f / (f - n);
    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = -n * invrange;
    mtx[2][3] = invrange * -(f * n);

    mtx[3][0] = 0.0f;
    mtx[3][1] = 0.0f;
    mtx[3][2] = -1.0f;
    mtx[3][3] = 0.0f;
}

void C_MTXPerspective(Mtx44 mtx, float fovy, float aspect, float n, float f) {
    float rad, cot;
    float invrange;
    float fov;

    fov = 0.5f * fovy;

    rad = M_PI / 180.0f * fov;
    cot = 1.0f / tanf(rad);

    mtx[0][0] = cot / aspect;
    mtx[0][1] = 0.0f;
    mtx[0][2] = 0.0f;
    mtx[0][3] = 0.0f;

    mtx[1][0] = 0.0f;
    mtx[1][1] = cot;
    mtx[1][2] = 0.0f;
    mtx[1][3] = 0.0f;

    invrange = 1.0f / (f - n);
    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = -n * invrange;
    mtx[2][3] = invrange * -(f * n);

    mtx[3][0] = 0.0f;
    mtx[3][1] = 0.0f;
    mtx[3][2] = -1.0f;
    mtx[3][3] = 0.0f;
}

void C_MTXOrtho(Mtx44 mtx, float t, float b, float l, float r, float n, float f) {
    float invrange;

    invrange = 1.0f / (r - l);
    mtx[0][0] = 2.0f * invrange;
    mtx[0][1] = 0.0f;
    mtx[0][2] = 0.0f;
    mtx[0][3] = invrange * -(r + l);

    invrange = 1.0f / (t - b);
    mtx[1][0] = 0.0f;
    mtx[1][1] = 2.0f * invrange;
    mtx[1][2] = 0.0f;
    mtx[1][3] = invrange * -(t + b);

    invrange = 1.0f / (f - n);
    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = -1.0f * invrange;
    mtx[2][3] = -f * invrange;

    mtx[3][0] = 0.0f;
    mtx[3][1] = 0.0f;
    mtx[3][2] = 0.0f;
    mtx[3][3] = 1.0f;
}

//unused
void C_MTX44Identity(){
}

//unused
asm void PSMTX44Identity(){
}

//unused
void C_MTX44Copy(){
}

//unused
asm void PSMTX44Copy(Mtx44 mtx1, Mtx44 mtx2){
}

//unused
void C_MTX44Concat(){
}

//unused
asm void PSMTX44Concat(){
}

//unused
void C_MTX44Transpose(){
}

//unused
asm void PSMTX44Transpose(){
}

//unused
void C_MTX44Inverse(){
}

//unused
void C_MTX44Trans(){
}

//unused
asm void PSMTX44Trans(){
}

//unused
void C_MTX44TransApply(){
}

//unused
asm void PSMTX44TransApply(){
}

//unused
void C_MTX44Scale(){
}

//unused
asm void PSMTX44Scale(){
}

//unused
void C_MTX44ScaleApply(){
}

//unused
asm void PSMTX44ScaleApply(){
}

//unused
void C_MTX44RotRad(){
}

//unused
asm void PSMTX44RotRad(){
}

//unused
void C_MTX44RotTrig(){
}

//unused
asm void PSMTX44RotTrig(){
}

//unused
void C_MTX44RotAxisRad(){
}

//unused
asm void __PSMTX44RotAxisRadInternal(){
}

//unused
void PSMTX44RotAxisRad(){
}
