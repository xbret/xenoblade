#include "mm/Color.hpp"

namespace mm{
    Col4 Col4::white = Col4(1,1,1,1);
    Col4 Col4::gray = Col4(0.5f,0.5f,0.5f,1);
    Col4 Col4::black = Col4(0,0,0,1);
    Col4 Col4::red = Col4(1,0,0,1);
    Col4 Col4::green = Col4(0,1,0,1);
    Col4 Col4::blue = Col4(0,0,1,1);
    Col4 Col4::yellow = Col4(1,1,0,1);
    Col4 Col4::cyan = Col4(0,1,1,1);
    Col4 Col4::magenta = Col4(1,0,1,1);
    Col4 Col4::salmon = Col4(1,0.5f,0.5f,1);
    Col4 Col4::orange = Col4(1,0.5f,0,1);
    Col4 Col4::zero = Col4(0,0,0,0);
}