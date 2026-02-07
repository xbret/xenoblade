#pragma once

#include "monolib/math/CVec3.hpp"
#include "monolib/math/Utility.hpp"
#include <revolution/MTX.h>

namespace ml {
    struct CMat33{
        CMat33(){}

        CMat33(float m00, float m01, float m02,
        float m10, float m11, float m12,
        float m20, float m21, float m22){
            set(m00, m01, m02, m10, m11, m12, m20, m21, m22);
        }

        void set(float m00, float m01, float m02,
        float m10, float m11, float m12,
        float m20, float m21, float m22){
            m[0][0] = m00;
            m[0][1] = m01;
            m[0][2] = m02;
            m[1][0] = m10;
            m[1][1] = m11;
            m[1][2] = m12;
            m[2][0] = m20;
            m[2][1] = m21;
            m[2][2] = m22;
        }

        void setRotXYZ(const CVec3& angle){
            float sinX = math::sin(angle.x);
            float cosX = math::cos(angle.x);
            float sinY = math::sin(angle.y);
            float cosY = math::cos(angle.y);
            float sinZ = math::sin(angle.z);
            float cosZ = math::cos(angle.z);

            set(
            cosY*cosZ, sinX*sinY*cosZ - cosX*sinZ, cosX*sinY*cosZ + sinX*sinZ,
            cosY*sinZ, sinX*sinY*sinZ + cosX*cosZ, cosX*sinY*sinZ - sinX*cosZ,
            -sinY,     sinX*cosY,                  cosX*cosY
            );
        }

        void getRotZXY(CVec3& outVec){
            float angle = math::asin(-m[1][2]);
            outVec.x = angle;

            if(angle < halfpi){
                if(angle > -halfpi){
                    //-pi/2 < angle < pi/2
                    outVec.z = math::atan2Rad(m[1][0], m[1][1]);
                    outVec.y = math::atan2Rad(m[0][2], m[2][2]);
                }else{
                    //angle < -pi/2
                    outVec.z = -math::atan2Rad(m[2][0], m[0][0]);
                    outVec.y = 0;
                }
            }else{
                //angle > pi/2
                outVec.z = math::atan2Rad(m[2][0], m[0][0]);
                outVec.y = 0;
            }
        }

        float m[3][3];
    };
} //namespace ml
