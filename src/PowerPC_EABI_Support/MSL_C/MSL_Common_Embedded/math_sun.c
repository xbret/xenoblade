#include "stl/fdlibm.h"

double scalbn(double x, int y) {
    int sp8;

    double temp_f1 = frexp(x, &sp8);
    sp8 += y;
    return ldexp(temp_f1, sp8);
}