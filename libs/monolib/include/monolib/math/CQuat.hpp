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
            this->x = x;
            this->y = y;
            this->z = z;
            this->w = w;
        }

         void func_8043715C(CVec3& vec);
        void func_80437310(CVec3& vec);
  
        //Sets the quaternion from the given euler angle, following the 3-2-1 conversion.
        void setFromAngle(CVec3& angle){
            float x = angle.x * 0.5f;
            float y = angle.y * 0.5f;
            float z = angle.z * 0.5f;
            float sinX = nw4r::math::SinFIdx(x * (128.0f/PI));
            float cosX = nw4r::math::CosFIdx(x * (128.0f/PI));
            float sinY = nw4r::math::SinFIdx(y * (128.0f/PI));
            float cosY = nw4r::math::CosFIdx(y * (128.0f/PI));
            float sinZ = nw4r::math::SinFIdx(z * (128.0f/PI));
            float cosZ = nw4r::math::CosFIdx(z * (128.0f/PI));

            this->x = cosZ*(sinX*cosY) - sinZ*(cosX*sinY);
            this->y = cosZ*(cosX*sinY) + sinZ*(sinX*cosY);
            this->z = sinZ*(cosX*cosY) - cosZ*(sinX*sinY);
            this->w = cosZ*(cosX*cosY) + sinZ*(sinX*sinY);
        }

        inline void UnkInline(CVec3& unkC4){
            float dVar20 = x + x;
            float dVar17 = y + y;
            float dVar18 = z + z;
            float dVar14 = 1.0f;
        
            float dVar19 = -((x * dVar18) - (w * dVar17));

            dVar19 = Clamp(dVar19, -1.0f, 1.0f); //unnecessary, asin function already does clamping
            float angle = Asin(dVar19);
        
            float dVar16 = x * dVar20;
            float dVar22 = x * dVar17;
            dVar19 = z * dVar18;
            unkC4.y = angle;
            float dVar21 = (w * dVar18);
                    
            if (angle < halfpi) {
                if (angle > -halfpi) {
                    dVar17 *= y;
                    unkC4.x = DEG2RAD(nw4r::math::Atan2FIdx((y * dVar18) + (w * dVar20), 1.0f - (dVar16 + dVar17)));
                    unkC4.z = DEG2RAD(nw4r::math::Atan2FIdx((dVar22 + dVar21),1.0f - (dVar17 + dVar19)));
                }else{
                    unkC4.x = -DEG2RAD(nw4r::math::Atan2FIdx((dVar22 - dVar21),1.0f - (dVar16 + dVar19)));
                    unkC4.z = 0.0f;
                }
            }else{
                unkC4.x = DEG2RAD(nw4r::math::Atan2FIdx((dVar22 - dVar21),1.0f - (dVar16 + dVar19)));
                unkC4.z = 0.0f;
            }
        }
    };
} //namespace ml
