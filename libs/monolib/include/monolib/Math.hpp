#pragma once

#include "types.h"
#include "nw4r/math/triangular.h"

//Basic math utility structs/definitions.

#define PI 3.14159265f
#define DEG2RAD(x) ((x)*(PI/180.0f))

namespace ml{
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

	struct CPnt16{
		s16 x;
		s16 y;

		CPnt16(){
			x = 0;
			y = 0;
		}
		CPnt16(s16 x, s16 y){
			this->x = x;
			this->y = y;
		}
	};


	struct CRect16 {
		s16 x;
		s16 y;
		s16 width;
		s16 height;

		CRect16(){
			x = 0;
			y = 0;
			width = 0;
			height = 0;
		}

		CRect16(s16 x, s16 y, s16 width, s16 height){
			this->x = x;
			this->y = y;
			this->width = width;
			this->height = height;
		}

		bool isInside(const CPnt16& point) const;
	};

	struct CVec3 {
		//Nesting the variables in a nameless
		//makes mwcc use lwz/stw for struct copies,
		//which is more efficient than lfs/stfd.
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

	struct CVec4{
		float x;
		float y;
		float z;
		float w;

		static CVec4 zero;
		static CVec4 unitX;
		static CVec4 unitY;
		static CVec4 unitZ;
		static CVec4 unit;

		CVec4(float x, float y, float z, float w){
			this->x = x;
			this->y = y;
			this->z = z;
			this->w = w;
		}
	};

	struct CCol3{
		float r;
		float g;
		float b;

		static CCol3 white;
		static CCol3 gray;
		static CCol3 black;
		static CCol3 red;
		static CCol3 green;
		static CCol3 blue;
		static CCol3 yellow;
		static CCol3 cyan;
		static CCol3 magenta;
		static CCol3 salmon;
		static CCol3 orange;

		CCol3(float r, float g, float b){
			this->r = r;
			this->g = g;
			this->b = b;
		}
	};

	struct CCol4{
		float r;
		float g;
		float b;
		float a;

		static CCol4 white;
		static CCol4 gray;
		static CCol4 black;
		static CCol4 red;
		static CCol4 green;
		static CCol4 blue;
		static CCol4 yellow;
		static CCol4 cyan;
		static CCol4 magenta;
		static CCol4 salmon;
		static CCol4 orange;
		static CCol4 zero;

		CCol4(float r, float g, float b, float a){
			this->r = r;
			this->g = g;
			this->b = b;
			this->a = a;
		}
	};


	struct CMat34{
		float m[3][4];

		static CMat34 zero;
		static CMat34 identity;

		CMat34(){}

		CMat34(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13,
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

	struct CMat44{
		float m[4][4];
	
		static CMat44 zero;
		static CMat44 identity;

		CMat44(){}

		CMat44(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13,
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
}
