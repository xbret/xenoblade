#pragma once

namespace ml {
    struct CVec3 {
        /* Nesting the variables in a nameless makes mwcc use lwz/stw for struct copies,
        which is more efficient than lfs/stfd. */
        struct{
            float x;
            float y;
            float z;
        };

        static CVec3 zero;
        static CVec3 unitX;
        static CVec3 unitY;
        static CVec3 unitZ;
        static CVec3 unit;

        CVec3(){}

        CVec3(float x, float y, float z){
            this->x = x;
            this->y = y;
            this->z = z;
        }

        bool operator==(CVec3& vec){
            return (x == vec.x && y == vec.y && z == vec.z);
        }

        bool operator!=(CVec3& vec){
            return (x != vec.x || y != vec.y || z != vec.z);
        }

        bool isErr() const;
    };
} //namespace ml
