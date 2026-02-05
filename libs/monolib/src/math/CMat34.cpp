#include "monolib/math.hpp"

namespace ml{
    CMat34 CMat34::zero = CMat34(
    0,0,0,0,
    0,0,0,0,
    0,0,0,0
    );

    CMat34 CMat34::identity = CMat34(
    1,0,0,0,
    0,1,0,0,
    0,0,1,0
    );

    void CMat34::getRotAxis(CVec3& vec, float* outAngle) const {
        float angle = math::acos(((m[0][0] + m[1][1] + m[2][2]) - 1.0f) * 0.5f);
        *outAngle = angle;

        if(angle > 0.0f){
            if(angle < pi){
                //0 < angle < pi
                vec.set(m[2][1] - m[1][2], m[0][2] - m[2][0], m[1][0] - m[0][1]);
                vec.normalize();
            }else{
                //angle >= pi
                if(m[0][0] >= m[1][1]){
                    if (m[0][0] >= m[2][2]) {
                        float fVar1 = math::sqrt(m[0][0] - m[1][1] - m[2][2] + 1.0f);
                        vec.x = fVar1 * 0.5f;
                        vec.y = (0.5f / (fVar1 * 0.5f)) * m[0][1];
                        vec.z = (0.5f / (fVar1 * 0.5f)) * m[0][2];
                    }else{
                        float fVar1 = math::sqrt(m[2][2] - m[0][0] - m[1][1] + 1.0f);
                        vec.z = fVar1 * 0.5f;
                        vec.x = (0.5f / (fVar1 * 0.5f)) * m[0][2];
                        vec.y = (0.5f / (fVar1 * 0.5f)) * m[1][2];
                    }
                }else{
                    if(m[1][1] >= m[2][2]){
                        float fVar1 = math::sqrt(m[1][1] - m[0][0] - m[2][2] + 1.0f);
                        vec.y = fVar1 * 0.5f;
                        vec.x = (0.5f / (fVar1 * 0.5f)) * m[0][1];
                        vec.z = (0.5f / (fVar1 * 0.5f)) * m[1][2];
                    }else{
                        float fVar1 = math::sqrt(m[2][2] - m[0][0] - m[1][1] + 1.0f);
                        vec.z = fVar1 * 0.5f;
                        vec.x = (0.5f / (fVar1 * 0.5f)) * m[0][2];
                        vec.y = (0.5f / (fVar1 * 0.5f)) * m[1][2];
                    }
                }
            }
        }else{
            //angle <= 0
            vec.set(1,0,0);
        }
    }

     
    bool CMat34::getRotXYZ(CVec3& vec) const {
        float angleY;
    
        //Calculate the y angle
        if (m[2][0] > 1.0f || m[2][0] < -1.0f){
            float dot = math::dot(m[2]);
            angleY = math::asin(-m[2][0] / math::sqrt(dot));
        }else{
            angleY = math::asin(-m[2][0]);
        }

        vec.y = angleY;
        
        //Calculate the x/z angles
        if(angleY < halfpi){
            if(angleY > -halfpi){
                //-pi/2 < y < pi/2
                vec.x = math::atan2Rad(m[2][1], m[2][2]);
                vec.z = math::atan2Rad(m[1][0], m[0][0]);
                return 1;
            }else{ 
                //y < -pi/2
                vec.x = -math::atan2Rad(m[0][1], m[1][1]);;
                vec.z = 0.0f;
                return 0;
            }
        }else{
            //y > pi/2
            vec.x = math::atan2Rad(m[0][1], m[1][1]);;
            vec.z = 0.0f;
            return 0;
        }
    }

    bool CMat34::getRotZXY(CVec3& vec) const {
        float angleY;
    
        //Calculate the y angle
        if (m[1][2] > 1.0f || m[1][2] < -1.0f){
            float dot = math::dot(m[1]);
            angleY = math::asin(-m[1][2] / math::sqrt(dot));
        }else{
            angleY = math::asin(-m[1][2]);
        }

        vec.x = angleY;
        
        //Calculate the x/z angles
        if(angleY < halfpi){
            if(angleY > -halfpi){
                //-pi/2 < y < pi/2
                vec.z = math::atan2Rad(m[1][0], m[1][1]);
                vec.y = math::atan2Rad(m[0][2], m[2][2]);
                return 1;
            }else{ 
                //y < -pi/2
                vec.z = -math::atan2Rad(m[2][0], m[0][0]);
                vec.y = 0.0f;
                return 0;
            }
        }else{
            //y > pi/2
            vec.z = math::atan2Rad(m[2][0], m[0][0]);
            vec.y = 0.0f;
            return 0;
        }
    }

    bool CMat34::getRotZYX(CVec3& vec) const {
        float angleY;
    
        //Calculate the y angle
        if (m[0][2] > 1.0f || m[0][2] < -1.0f){
            float dot = math::dot(m[0]);
            angleY = math::asin(m[0][2] / math::sqrt(dot));
        }else{
            angleY = math::asin(m[0][2]);
        }

        vec.y = angleY;
        
        //Calculate the x/z angles
        if(angleY < halfpi){
            if(angleY > -halfpi){
                //-pi/2 < y < pi/2
                vec.z = math::atan2Rad(-m[0][1], m[0][0]);
                vec.x = math::atan2Rad(-m[1][2], m[2][2]);
                return 1;
            }else{ 
                //y < -pi/2
                vec.z = -math::atan2Rad(-m[1][0], m[2][0]);
                vec.x = 0.0f;
                return 0;
            }
        }else{
            //y > pi/2
            vec.z = math::atan2Rad(m[1][0], -m[2][0]);
            vec.x = 0.0f;
            return 0;
        }
    }

} //namespace ml
