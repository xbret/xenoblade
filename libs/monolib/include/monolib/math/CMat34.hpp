#pragma once

#include "monolib/math/CVec3.hpp"
#include "monolib/math/CQuat.hpp"
#include <revolution/MTX.h>

namespace ml {
    struct CMat34{
        CMat34(){}

        CMat34(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13,
        float m20, float m21, float m22, float m23){
            set(
                m00,m01,m02,m03,
                m10,m11,m12,m13,
                m20,m21,m22,m23
            );
        }

        void set(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13,
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

        operator nw4r::math::MTX34*(){
            return reinterpret_cast<nw4r::math::MTX34*>(this);
        }

        operator const nw4r::math::MTX34*() const {
            return reinterpret_cast<const nw4r::math::MTX34*>(this);
        }

        CMat34 operator*(CMat34& rhs) const {
            CMat34 mat;
            mul(mat, *this, rhs);
            return mat;
        }

        void mul(CVec3& outVec, const CVec3& vec) const {
            PSMTXMultVec(mtx, vec, outVec);
        }


        static void mul(CMat34& outMat, const CMat34& mat1, const CMat34& mat2){
            PSMTXConcat(mat2.mtx, mat1.mtx, outMat.mtx);
        }

        void setUnit(){
            PSMTXIdentity(mtx);
        }

        void setScale(float x, float y, float z){
            set(
                x, 0, 0, 0,
                0, y, 0, 0,
                0, 0, z, 0
            );
        }

        void setScale(const CVec3& scale){
            setScale(scale.x, scale.y, scale.z);
        }

        void setRotX(float x){
            float sinX, cosX;
            math::sincos(x, sinX, cosX);

            set(
            1, 0,    0,     0,
            0, cosX, -sinX, 0,
            0, sinX, cosX,  0
            );
        }

        void setRotY(float y){
            float sinY, cosY;
            math::sincos(y, sinY, cosY);

            set(
            cosY,  0, sinY, 0,
            0,     1, 0,    0,
            -sinY, 0, cosY, 0
            );
        }

        void setRotZ(float z){
            float sinZ, cosZ;
            math::sincos(z, sinZ, cosZ);

            set(
            cosZ, -sinZ, 0, 0,
            sinZ, cosZ,  0, 0,
            0,    0,     1, 0
            );
        }

        void addRotX(float x){
            CMat34 mat;
            mat.setRotX(x);
            mul(*this, *this, mat);
        }

        void addRotY(float y){
            CMat34 mat;
            mat.setRotY(y);
            mul(*this, *this, mat);
        }

        void addRotZ(float z){
            CMat34 mat;
            mat.setRotZ(z);
            mul(*this, *this, mat);
        }

        void getRotQuat(CQuat& quat) const{
            CQuat temp;
            C_QUATMtx(temp, mtx);
            quat = temp;
        }

        void setRotQuat(const CQuat& quat){
            PSMTXQuat(mtx, quat);
        }

        void setRotXYZ(const CVec3& angle){
            nw4r::math::MTX34RotXYZRad(*this, angle.x, angle.y, angle.z);
        }

        void setRotZXY(const CVec3& angle){
            setRotZ(angle.z);
            addRotX(angle.x);
            addRotY(angle.y);
        }

        void invert(CMat34* outMat){
            PSMTXInverse(mtx, outMat->mtx);
        }

        CVec3 getTranslation(){
            return CVec3(m[0][3], m[1][3], m[2][3]);
        }

        void addTranslation(const CVec3& vec){
            m[0][3] += vec.x;
            m[1][3] += vec.y;
            m[2][3] += vec.z;
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
