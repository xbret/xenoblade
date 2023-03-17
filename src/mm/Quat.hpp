#pragma once

struct Quat{
    Quat(float x, float y, float z, float w){
        this->x = x;
        this->y = y;
        this->z = z;
        this->w = w;
    }

    float x;
    float y;
    float z;
    float w;

    static Quat zero;
    static Quat identity;
}