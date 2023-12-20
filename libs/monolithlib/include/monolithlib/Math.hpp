#pragma once

#include "types.h"
#include "nw4r/math/triangular.h"

//Basic math utility structs/definitions.

#define PI 3.14159265f
#define DEG2RAD(x) ((x)*(PI/180.0f))

namespace mm{
	//General math constants
	extern const float pi;
	extern const float tau;
	extern const float halfpi;
	extern const float quarterpi;
	extern const float epsilon;
	extern const float rad2deg;
	extern const float deg2rad;
	extern const float huge;
	extern const float hugeminus;

	//Helper functions
	inline float Asin(float x){
		if (x < -1.0f) x = -1.0f;
		else if(x > 1.0f) x = 1.0f;
		return nw4r::math::AsinRad(x);
	}

	inline float Clamp(float x, float min, float max) {
		if (x >= max) x = max;
		else if (x <= min) x = min;
		return x;
	}

	struct Rect {
		s16 x;
		s16 y;
		s16 width;
		s16 height;

		Rect(){
			x = 0;
			y = 0;
			width = 0;
			height = 0;
		}
	};

	struct Vec3 {
		//Nesting the variables in a nameless
		//makes mwcc use lwz/stw for struct copies,
		//which is more efficient than lfs/stfd.
		struct{
		float x;
		float y;
		float z;
		};

		static Vec3 zero;
		static Vec3 unitX;
		static Vec3 unitY;
		static Vec3 unitZ;
		static Vec3 unit;

		Vec3(){}

		
		
		Vec3(float x, float y, float z){
			this->x = x;
			this->y = y;
			this->z = z;
		}

		bool operator==(Vec3& vec){ 
			return (x == vec.x && y == vec.y && z == vec.z);
		}

		bool operator!=(Vec3& vec){ 
			return (x != vec.x || y != vec.y || z != vec.z);
		}

		bool isInvalid() const;
	};

	struct Vec3i{
		int x;
		int y;
		int z;
	};

	struct Vec4{
		float x;
		float y;
		float z;
		float w;

		static Vec4 zero;
		static Vec4 unitX;
		static Vec4 unitY;
		static Vec4 unitZ;
		static Vec4 unit;

		Vec4(float x, float y, float z, float w){
			this->x = x;
			this->y = y;
			this->z = z;
			this->w = w;
		}
	};

	struct Col3{
		float r;
		float g;
		float b;

		static Col3 white;
		static Col3 gray;
		static Col3 black;
		static Col3 red;
		static Col3 green;
		static Col3 blue;
		static Col3 yellow;
		static Col3 cyan;
		static Col3 magenta;
		static Col3 salmon;
		static Col3 orange;

		Col3(float r, float g, float b){
			this->r = r;
			this->g = g;
			this->b = b;
		}
	};

	struct Col4{
		float r;
		float g;
		float b;
		float a;

		static Col4 white;
		static Col4 gray;
		static Col4 black;
		static Col4 red;
		static Col4 green;
		static Col4 blue;
		static Col4 yellow;
		static Col4 cyan;
		static Col4 magenta;
		static Col4 salmon;
		static Col4 orange;
		static Col4 zero;

		Col4(float r, float g, float b, float a){
			this->r = r;
			this->g = g;
			this->b = b;
			this->a = a;
		}
	};


	struct Mat34{
		float m[3][4];

		static Mat34 zero;
		static Mat34 identity;

		Mat34(){}

		Mat34(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13,
		float m20, float m21, float m22, float m23){
			m[0][0] = m00;
			m[0][1] = m01;
			m[0][2] = m02;
			m[0][3] = m03;
			m[1][0] = m10;
			m[1][1] = m11;
			m[1][2] = m12;
			m[1][3] = m13;
			m[2][0] = m20;
			m[2][1] = m21;
			m[2][2] = m22;
			m[2][3] = m23;
		}
	};

	struct Mat44{
		float m[4][4];
	
		static Mat44 zero;
		static Mat44 identity;

		Mat44(){}

		Mat44(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13,
		float m20, float m21, float m22, float m23, float m30, float m31, float m32, float m33){
			m[0][0] = m00;
			m[0][1] = m01;
			m[0][2] = m02;
			m[0][3] = m03;
			m[1][0] = m10;
			m[1][1] = m11;
			m[1][2] = m12;
			m[1][3] = m13;
			m[2][0] = m20;
			m[2][1] = m21;
			m[2][2] = m22;
			m[2][3] = m23;
			m[3][0] = m30;
			m[3][1] = m31;
			m[3][2] = m32;
			m[3][3] = m33;
		}
	};

	
	struct Quat{
		struct{
		float x;
		float y;
		float z;
		float w;
		};

		static Quat zero;
		static Quat identity;

		Quat(){}

		Quat(float x, float y, float z, float w){
			this->x = x;
			this->y = y;
			this->z = z;
			this->w = w;
		}

		 void func_8043715C(Vec3& vec);
		void func_80437310(Vec3& vec);
  
		//Sets the quaternion from the given euler angle, following the 3-2-1 conversion.
		void setFromAngle(Vec3& angle){
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

		inline void UnkInline(Vec3& unkC4){
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
}
