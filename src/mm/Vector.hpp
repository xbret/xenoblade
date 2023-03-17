#pragma once

namespace mm{
    struct Vec3{
        Vec3(){}
        
        Vec3(float x, float y, float z){
            this->x = x;
            this->y = y;
            this->z = z;
        }

        float x;
        float y;
        float z;

        static Vec3 zero;
        static Vec3 unitX;
        static Vec3 unitY;
        static Vec3 unitZ;
        static Vec3 unit;

        bool isInvalid() const;
    };

    struct Vec3i{
        int x;
        int y;
        int z;
    };

    struct Vec4{
        Vec4(float x, float y, float z, float w){
            this->x = x;
            this->y = y;
            this->z = z;
            this->w = w;
        }

        float x;
        float y;
        float z;
        float w;

        static Vec4 zero;
        static Vec4 unitX;
        static Vec4 unitY;
        static Vec4 unitZ;
        static Vec4 unit;
    };
}
