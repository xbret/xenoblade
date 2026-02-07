#pragma once

#include "monolib/math/Utility.hpp"
#include "monolib/math/MathConstants.hpp"
#include <revolution/MTX.h>

namespace ml {
    //Possibly inherits from nw4r VEC3?
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

        CVec3(const CVec3& vec){
            set(vec.x, vec.y, vec.z);
        }

        //Conversion functions for converting to the SDK/NW4R vector types.
        operator Vec*(){
            return reinterpret_cast<Vec*>(this);
        }

        operator const Vec*() const {
            return reinterpret_cast<const Vec*>(this);
        }

        operator nw4r::math::VEC3*(){
            return reinterpret_cast<nw4r::math::VEC3*>(this);
        }

        operator const nw4r::math::VEC3*() const {
            return reinterpret_cast<const nw4r::math::VEC3*>(this);
        }

        void set(float x, float y, float z){
            this->x = x;
            this->y = y;
            this->z = z;
        }

        void set(CVec3& vec){
            x = vec.x;
            y = vec.y;
            z = vec.z;
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

        void normalize(){
            if(!isZero()) {
                normalizeSub();
            }else{
                set(0,0,1);
            }
        }

        //Unofficial
        void normalizeSub(){
            if(x*x + y*y + z*z == 0.0f){
                setZero();
            }else {
                PSVECNormalize(*this,*this);
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
            //TODO: this can't be it, right???
            bool result = false;
            bool temp = false;
            if(math::abs(x) <= epsilon && math::abs(y) <= epsilon){
                temp = true;
            }
            if(temp && math::abs(z) <= epsilon) result = true;
            return result;
        }

        bool isErr() const;

        //TODO: properly figure out these asm inlines

        static float dot(const CVec3& lhs, const CVec3& rhs) {
            return nw4r::math::VEC3Dot(lhs, rhs);
        }

        static void add(CVec3& outVec, const CVec3& lhs, const CVec3& rhs){
            CVec3 temp;
            nw4r::math::VEC3Add(temp, lhs, rhs);
            outVec.set(temp);
        }

        static void sub(CVec3& outVec, const CVec3& lhs, const CVec3& rhs){
            CVec3 temp;
            nw4r::math::VEC3Sub(temp, lhs, rhs);
            outVec.set(temp);
        }

        static void scale(CVec3& outVec, const CVec3& vec, float scale){
            CVec3 temp;
            nw4r::math::VEC3Scale(temp, vec, scale);
            outVec.set(temp);
        }

        static void cross(CVec3& outVec, const CVec3& lhs, const CVec3& rhs){
            CVec3 temp;
            nw4r::math::VEC3Cross(temp, lhs, rhs);
            outVec.set(temp);
        }

        /* Nesting the variables in a nameless makes mwcc use lwz/stw for struct copies,
        which is more efficient than lfs/stfd. */
        struct{
            float x;
            float y;
            float z;
        };

    };
} //namespace ml
