#pragma once

#include "monolib/math/CVec3.hpp"
#include "monolib/math/MathConstants.hpp"
#include "monolib/math/Utility.hpp"
#include <revolution/MTX.h>

namespace ml {
    struct CQuat{
        CQuat(){}

        CQuat(float x, float y, float z, float w){
            set(x,y,z,w);
        }

        operator Quaternion*(){
            return reinterpret_cast<Quaternion*>(this);
        }

        operator const Quaternion*() const{
            return reinterpret_cast<const Quaternion*>(this);
        }

        CQuat& operator*=(const CQuat& other){
            PSQUATMultiply(*this, other, *this);
            return *this;
        }

        inline void set(float x, float y, float z, float w){
            this->x = x;
            this->y = y;
            this->z = z;
            this->w = w;
        }

        inline void setIdentity(){
            set(0,0,0,1);
        }
  
        //Sets the quaternion from the given euler angle, following the 3-2-1 conversion.
        inline void setRotXYZ(const CVec3* angle){
            float x = angle->x * 0.5f;
            float y = angle->y * 0.5f;
            float z = angle->z * 0.5f;
            float sinX = math::sin(x);
            float cosX = math::cos(x);
            float sinY = math::sin(y);
            float cosY = math::cos(y);
            float sinZ = math::sin(z);
            float cosZ = math::cos(z);

            this->x = cosZ*(sinX*cosY) - sinZ*(cosX*sinY);
            this->y = cosZ*(cosX*sinY) + sinZ*(sinX*cosY);
            this->z = sinZ*(cosX*cosY) - cosZ*(sinX*sinY);
            this->w = cosZ*(cosX*cosY) + sinZ*(sinX*sinY);
        }

        //Converts this quaternion to euler angles, storing the result in the given vector.
        inline void getRotXYZ(CVec3* result) const {
            //So many variables :p
            float twoX = x + x;
            float twoY = y + y;
            float twoZ = z + z;

            float twoXZ = x * twoZ;
            float twoYW = w * twoY;

            //NOTE: Unnecessary clamp
            float input = -(twoXZ - twoYW);
            if(input >= 1) input = 1;
            else if(input <= -1) input = -1;
            //y = asin(-(2xz - 2yw))
            float angle = math::asin(input);
            result->y = angle;

            float twoX2 = x * twoX;
            float twoXY = x * twoY;
            float twoZ2 = z * twoZ;
            float twoZW = w * twoZ;
                    
            if (angle < halfpi) {
                if (angle > -halfpi) {
                    //-pi/2 < angle < pi/2
                    float twoY2 = y * twoY;
                    float twoYZ = y * twoZ;
                    float twoXW = w * twoX;
                    //x = atan2(2yz + 2xw, 1 - (2x^2 + 2y^2))
                    result->x = math::atan2Rad(twoYZ + twoXW, 1.0f - (twoX2 + twoY2));
                    //z = atan2(2xy + 2zw, 1 - (2y^2 + 2z^2))
                    result->z = math::atan2Rad(twoXY + twoZW, 1.0f - (twoY2 + twoZ2));
                }else{
                    //angle > pi/2
                    //x = -atan2(2xy - 2zw, 1 - (2x^2 + 2z^2))
                    result->x = -math::atan2Rad(twoXY - twoZW, 1.0f - (twoX2 + twoZ2));
                    result->z = 0;
                }
            }else{
                //angle < -pi/2
                //x = atan2(2xy - 2zw, 1 - (2x^2 + 2z^2))
                result->x = math::atan2Rad(twoXY - twoZW, 1.0f - (twoX2 + twoZ2));
                result->z = 0;
            }
        }

        void setRotZXY(const CVec3* angle);
        void getRotZXY(CVec3* result) const;


        struct{
        float x;
        float y;
        float z;
        float w;
        };

        static CQuat zero;
        static CQuat identity;

    };
} //namespace ml
