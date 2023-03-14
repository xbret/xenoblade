#pragma once

namespace mm{
	struct Col3{
		Col3(float r, float g, float b){
			this->r = r;
			this->g = g;
			this->b = b;
		}

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
	};

	struct Col4{
		Col4(float r, float g, float b, float a){
			this->r = r;
			this->g = g;
			this->b = b;
			this->a = a;
		}

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
	};
}