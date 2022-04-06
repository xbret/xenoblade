#include "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/fdlibm.h"

double scalbn(double x, int y) {
    int sp8;

    double temp_f1 = frexp(x, &sp8);
    sp8 += y;
    return ldexp(temp_f1, sp8);
}

//unused
void exp2(){
}

//unused
void llrint(){
}

//unused
void llround(){
}

//unused
void llroundf(){
}

//unused
void llroundl(){
}

//unused
void lrint(){
}

//unused
void lrintf(){
}

//unused
void lrintl(){
}

//unused
void lround(){
}

//unused
void lroundf(){
}

//unused
void lroundl(){
}

//unused
void nearbyint(){
}

//unused
void nearbyintf(){
}

//unused
void nearbyintl(){
}

//unused
void remquo(){
}

//unused
void remquof(){
}

//unused
void remquol(){
}

//unused
void round(){
}

//unused
void roundf(){
}

//unused
void roundl(){
}

//unused
void scalbnl(){
}

//unused
void tgamma(){
}

//unused
void trunc(){
}

//unused
void truncf(){
}

//unused
void truncl(){
}
