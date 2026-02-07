#pragma once

#include "monolib/math/CVec3.hpp"
#include "monolib/math/CQuat.hpp"
#include <revolution/MTX.h>

namespace ml {
    struct CMat34{
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

        void setUnit(){
            PSMTXIdentity(mtx);
        }

        void getRotQuat(CQuat& quat) const{
            CQuat temp;
            C_QUATMtx(temp, mtx);
            quat = temp;
        }

        void setRotQuat(const CQuat& quat){
            PSMTXQuat(mtx, quat);
        }

        void invert(CMat34* outMat){
            PSMTXInverse(mtx, outMat->mtx);
        }

        CVec3 getTranslation(){
            return CVec3(m[0][3], m[1][3], m[2][3]);
        }

        void replaceTranslation(const CVec3& vec){
            m[0][3] = vec.x;
            m[1][3] = vec.y;
            m[2][3] = vec.z;
        }

        void getRotAxis(CVec3& vec, float* outAngle) const;
        bool getRotXYZ(CVec3& vec) const;
        bool getRotZXY(CVec3& vec) const;
        bool getRotZYX(CVec3& vec) const;

        union {
            float m[3][4];
            Mtx mtx;
        };

        static CMat34 zero;
        static CMat34 identity;
    };
} //namespace ml
