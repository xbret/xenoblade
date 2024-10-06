#include <revolution/MTX.h>

//unused
void C_VECAdd(){
}

asm void PSVECAdd(register const Vec* vec1, register const Vec* vec2,
                  register Vec* dst) {
    // clang-format off
    nofralloc

    // Sum X,Y components
    psq_l  f2, Vec.x(vec1), 0, 0
    psq_l  f4, Vec.x(vec2), 0, 0
    ps_add f6, f2, f4

    // Store result
    psq_st f6, Vec.x(dst), 0, 0

    // Sum Z component
    psq_l  f3, Vec.z(vec1), 1, 0
    psq_l  f5, Vec.z(vec2), 1, 0
    ps_add f7, f3, f5

    // Store result
    psq_st f7, Vec.z(dst), 1, 0

    blr
    // clang-format on
}

//unused
void C_VECSubtract(){
}

//unused
asm void PSVECSubtract(){
}

//unused
void C_VECScale(){
}

//unused
void PSVECScale(register const Vec* in, register Vec* out, register f32 scale) {
    register f32 xy, z;
    register f32 sxy, sz;

    // clang-format off
    asm {
        // Load components
        psq_l xy, Vec.x(in), 0, 0
        psq_l z,  Vec.z(in), 1, 0

        // Scale components
        ps_muls0 sxy, xy, scale
        ps_muls0 sz,  z,  scale

        // Store result
        psq_st sxy, Vec.x(out), 0, 0
        psq_st sz,  Vec.z(out), 1, 0
    }
    // clang-format on
}

//unused
void C_VECNormalize(){
}

void PSVECNormalize(register const Vec* vec1, register Vec* dst) {
    register f32 c_half, c_three;
    register f32 v1_xy, v1_z;
    register f32 xx_zz, xx_yy;
    register f32 sqsum;
    register f32 rsqrt;
    register f32 nwork0, nwork1;

    c_half = 0.5f;
    c_three = 3.0f;

    // clang-format off
    asm {
        // Load vector components
        psq_l v1_xy, Vec.x(vec1), 0, 0
        psq_l v1_z,  Vec.z(vec1), 1, 0

        // Compute dot product with self
        ps_mul  xx_yy, v1_xy, v1_xy       // X^2,         Y^2
        ps_madd xx_zz, v1_z,  v1_z, xx_yy // Z^2+X^2,     junk
        ps_sum0 sqsum, xx_zz, v1_z, xx_yy // Z^2+X^2+Y^2, junk

        // Reciprocal square root
        frsqrte rsqrt, sqsum
        
        // Refine estimate using Newton-Raphson method
        // y = 1 / sqrt(x)
        fmuls   nwork0, rsqrt,  rsqrt          // rsqrt^2
        fmuls   nwork1, rsqrt,  c_half         // rsqrt * 0.5
        fnmsubs nwork0, nwork0, sqsum, c_three // (3 - x * rsqrt^2)
        fmuls   rsqrt,  nwork0, nwork1         // (3 - x * rsqrt^2) * (rsqrt * 0.5)

        // Scale components to normalize
        ps_muls0 v1_xy, v1_xy, rsqrt
        ps_muls0 v1_z,  v1_z,  rsqrt

        // Store result
        psq_st v1_xy, Vec.x(dst), 0, 0
        psq_st v1_z,  Vec.z(dst), 1, 0
    }
    // clang-format on
}

//unused
void C_VECSquareMag(){
}

//unused
asm void PSVECSquareMag(){
}

//unused
void C_VECMag(){
}

f32 PSVECMag(register const Vec* v) {
    register f32 vxy, vzz, mag;
    register f64 rmag;
    register f32 nwork0, nwork1;
    register f32 c_three, c_half, c_zero;

    c_half = 0.5f;
    // clang-format off
    asm {
        // Load vector components
        psq_l vxy, Vec.x(v), 0, 0
        lfs   vzz, Vec.z(v)

        // Compute dot product with self
        ps_mul  vxy, vxy, vxy      // X^2,         Y^2
        ps_madd vzz, vzz, vzz, vxy // Z^2+X^2,     junk
        ps_sum0 mag, vzz, vxy, vxy // Z^2+X^2+Y^2, junk

        // Get zero
        fsubs c_zero, c_half, c_half
    }
    // clang-format on

    // Avoid problematic square root where dot is zero
    if (mag == c_zero) {
        return mag;
    }

    // Estimate reciprocal square root
    rmag = __frsqrte(mag);

    c_three = 3.0f;
    // clang-format off
    asm {
        // Refine estimate using Newton-Raphson method
        // y = 1 / sqrt(x)
        fmuls   nwork0, rmag, rmag            // rsqrt^2
        fmuls   nwork1, rmag, c_half          // rsqrt * 0.5
        fnmsubs nwork0, nwork0, mag, c_three  // (3 - x * rsqrt^2)
        fmuls   rmag,   nwork0, nwork1        // (3 - x * rsqrt^2) * (rsqrt * 0.5)

        // Convert rsqrt -> sqrt
        // x * rsqrt(x) == sqrt(x)
        fmuls mag, mag, rmag
    }
    // clang-format on

    return mag;
}

//unused
void C_VECDotProduct(){
}

asm f32 PSVECDotProduct(register const Vec* vec1, register const Vec* vec2) {
    // clang-format off
    nofralloc

    // Compute Y,Z products
    psq_l  f2, Vec.y(vec1), 0, 0
    psq_l  f3, Vec.y(vec2), 0, 0
    ps_mul f2, f2, f3 // ABY, ABZ

    // Compute X product
    psq_l   f5, Vec.x(vec1), 0, 0
    psq_l   f4, Vec.x(vec2), 0, 0
    ps_madd f3, f5, f4, f2 // ABX+ABY, junk

    // Compute dot product
    ps_sum0 f1, f3, f2, f2 // ABX+ABY+ABZ, junk

    blr
    // clang-format on
}

//unused
void C_VECCrossProduct(){
}

asm void PSVECCrossProduct(register const Vec* vec1, register const Vec* vec2,
                           register Vec* dst) {
    // clang-format off
    nofralloc

    // Load vector components
    psq_l      f1, Vec.x(vec2), 0, 0 // BX, BY
    lfs        f2, Vec.z(vec1)       // AZ, AZ
    psq_l      f0, Vec.x(vec1), 0, 0 // AX, AY
    ps_merge10 f6, f1, f1            // BY, BX
    lfs        f3, Vec.z(vec2)       // BZ, BZ

    // Compute cross product components
    ps_mul   f4, f1, f2     // BX*AZ,       BY*AZ
    ps_muls0 f7, f1, f0     // BX*AX,       BY*AX
    ps_msub  f5, f0, f3, f4 // AX*BZ-BX*AZ, AY*BZ-BY*AZ
    ps_msub  f8, f0, f6, f7 // AX*BY-BX*AX, AY*BX-BY*AX

    // Manipulate storage
    ps_merge11 f9,  f5, f5 // AY*BZ-BY*AZ, AY*BZ-BY*AZ
    ps_merge01 f10, f5, f8 // AX*BZ-BX*AZ, AY*BX-BY*AX

    // Store cross product X
    // cx = AY*BZ-BY*AZ
    psq_st f9, Vec.x(dst), 1, 0

    // Store cross product Y/Z
    // Negate to fix formula
    // cy = -(AX*BZ-BX*AZ) -> BX*AZ-AX*BZ
    // cz = -(AY*BX-BY*AX) -> BY*AX-AY*BX
    ps_neg f10, f10
    psq_st f10, Vec.y(dst), 0, 0

    blr
    // clang-format on
}

void C_VECHalfAngle(register const Vec* a, register const Vec* b,
                    register Vec* half) {
    Vec na, nb, ns;

    na.x = -a->x;
    na.y = -a->y;
    na.z = -a->z;

    nb.x = -b->x;
    nb.y = -b->y;
    nb.z = -b->z;

    PSVECNormalize(&na, &na);
    PSVECNormalize(&nb, &nb);
    PSVECAdd(&na, &nb, &ns);

    if (PSVECDotProduct(&ns, &ns) > 0.0f) {
        PSVECNormalize(&ns, half);
    } else {
        *half = ns;
    }
}

//unused
void C_VECReflect(){
}

//unused
void C_VECSquareDistance(){
}

//unused
f32 PSVECSquareDistance(register const Vec* a, register const Vec* b) {
    register f32 ayz, byz;
    register f32 axy, bxy;
    register f32 dxy, dyz;
    register f32 dist;

    // clang-format off
    asm {
        // Load vector components
        psq_l axy, Vec.x(a), 0, 0
        psq_l ayz, Vec.y(a), 0, 0
        psq_l bxy, Vec.x(b), 0, 0
        psq_l byz, Vec.y(b), 0, 0

        // Compute differences
        ps_sub dxy, axy, bxy
        ps_sub dyz, ayz, byz

        // Compute distance
        ps_mul  dyz,  dyz,  dyz
        ps_madd dist, dxy,  dxy, dyz
        ps_sum0 dist, dist, dyz, dyz
    }
    // clang-format on

    return dist;
}

//unused
void C_VECDistance(){
}

//unused
void PSVECDistance(){
}

