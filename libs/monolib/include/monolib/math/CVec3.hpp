#pragma once

#include "monolib/math/Utility.hpp"
#include "monolib/math/MathConstants.hpp"
#include <revolution/MTX.h>

namespace ml {
    struct CVec3 {
        static CVec3 zero;
        static CVec3 unitX;
        static CVec3 unitY;
        static CVec3 unitZ;
        static CVec3 unit;

        CVec3(){}

        CVec3(float x, float y, float z){
            set(x, y, z);
        }

        void set(float x, float y, float z){
            this->x = x;
            this->y = y;
            this->z = z;
        }

        void setZero(){
            *this = zero;
        }

        bool operator==(CVec3& vec){
            return (x == vec.x && y == vec.y && z == vec.z);
        }

        bool operator!=(CVec3& vec){
            return (x != vec.x || y != vec.y || z != vec.z);
        }

        float dot(const CVec3& vec) const {
            return x*vec.x + y*vec.y + z*vec.z;
        }

        void normalize(){
            if(!isZero()) {
                if(x*x + y*y + z*z == 0.0f){
                    setZero();
                }else {
                    PSVECNormalize(&vec,&vec);
                }
            }else{
                set(0,0,1);
            }
        }

        //Unofficial
        float magnitude() const {
            return x*x + y*y + z*z;
        }

        float getLength() const {
            return math::sqrt(magnitude());
        }

        bool isZero() const {
            bool result = false;
            if(math::abs(x) <= epsilon && math::abs(y) <= epsilon && math::abs(z) <= epsilon) result = true;
            return result;
        }

        bool isErr() const;

        union {
            /* Nesting the variables in a nameless makes mwcc use lwz/stw for struct copies,
            which is more efficient than lfs/stfd. */
            struct{
                float x;
                float y;
                float z;
            };

            Vec vec;
        };

    };
} //namespace ml
