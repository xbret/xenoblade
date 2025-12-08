#pragma once

#include <revolution/MTX.h>

namespace ml {
    struct CMat34{
        union {
            float m[3][4];
            Mtx mtx;
        };

        static CMat34 zero;
        static CMat34 identity;

        CMat34(){}

        CMat34(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13,
        float m20, float m21, float m22, float m23){
            m[0][0] = m00;
            m[0][1] = m01;
            m[0][2] = m02;
            m[0][3] = m03;
            m[1][0] = m10;
            m[1][1] = m11;
            m[1][2] = m12;
            m[1][3] = m13;
            m[2][0] = m20;
            m[2][1] = m21;
            m[2][2] = m22;
            m[2][3] = m23;
        }

        inline void setIdentity(){
            PSMTXIdentity(mtx);
        }
    };
} //namespace ml
