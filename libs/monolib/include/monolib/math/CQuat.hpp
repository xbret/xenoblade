#pragma once

#include "monolib/math/CVec3.hpp"
#include "monolib/math/MathConstants.hpp"
#include "monolib/math/Utility.hpp"

namespace ml {
    struct CQuat{
        struct{
        float x;
        float y;
        float z;
        float w;
        };

        static CQuat zero;
        static CQuat identity;

        CQuat(){}

        CQuat(float x, float y, float z, float w){
            set(x,y,z,w);
        }

        void func_8043715C(CVec3& vec);
        void func_80437310(CVec3& vec);

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
        inline void setRotXYZ(CVec3& angle){
            float x = angle.x * 0.5f;
            float y = angle.y * 0.5f;
            float z = angle.z * 0.5f;
            float sinX = math::sin(x * (128.0f/PI));
            float cosX = math::cos(x * (128.0f/PI));
            float sinY = math::sin(y * (128.0f/PI));
            float cosY = math::cos(y * (128.0f/PI));
            float sinZ = math::sin(z * (128.0f/PI));
            float cosZ = math::cos(z * (128.0f/PI));

            this->x = cosZ*(sinX*cosY) - sinZ*(cosX*sinY);
            this->y = cosZ*(cosX*sinY) + sinZ*(sinX*cosY);
            this->z = sinZ*(cosX*cosY) - cosZ*(sinX*sinY);
            this->w = cosZ*(cosX*cosY) + sinZ*(sinX*sinY);
        }

        //Converts this quaternion to euler angles, storing the result in the given vector.
        inline void getRotXYZ(CVec3& result){
            float twoX = x + x;
            float twoY = y + y;
            float twoZ = z + z;
        
            float dVar19 = -((x * twoZ) - (w * twoY));
            dVar19 = math::clamp(dVar19, -1.0f, 1.0f); //Unnecessary, asin function already does clamping
            float angle = math::asin(dVar19);
        
            float dVar16 = x * twoX;
            float dVar22 = x * twoY;
            dVar19 = z * twoZ;
            result.y = angle;
            float dVar21 = w * twoZ;
                    
            if (angle < halfpi) {
                if (angle > -halfpi) {
                    twoY *= y;
                    result.x = DEG2RAD(math::atan2((y * twoZ) + (w * twoX), 1.0f - (dVar16 + twoY)));
                    result.z = DEG2RAD(math::atan2((dVar22 + dVar21),1.0f - (twoY + dVar19)));
                }else{
                    result.x = -DEG2RAD(math::atan2((dVar22 - dVar21),1.0f - (dVar16 + dVar19)));
                    result.z = 0.0f;
                }
            }else{
                result.x = DEG2RAD(math::atan2((dVar22 - dVar21),1.0f - (dVar16 + dVar19)));
                result.z = 0.0f;
            }
        }
    };
} //namespace ml
