#include "monolib/Math.hpp"

namespace ml{
    CCol4 CCol4::white = CCol4(1,1,1,1);
    CCol4 CCol4::gray = CCol4(0.5f,0.5f,0.5f,1);
    CCol4 CCol4::black = CCol4(0,0,0,1);
    CCol4 CCol4::red = CCol4(1,0,0,1);
    CCol4 CCol4::green = CCol4(0,1,0,1);
    CCol4 CCol4::blue = CCol4(0,0,1,1);
    CCol4 CCol4::yellow = CCol4(1,1,0,1);
    CCol4 CCol4::cyan = CCol4(0,1,1,1);
    CCol4 CCol4::magenta = CCol4(1,0,1,1);
    CCol4 CCol4::salmon = CCol4(1,0.5f,0.5f,1);
    CCol4 CCol4::orange = CCol4(1,0.5f,0,1);
    CCol4 CCol4::zero = CCol4(0,0,0,0);
}
