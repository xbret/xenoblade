#pragma once

/* Not known to be used yet, but it's here anyways just in case they did end up using it (it exists
in XCX, so it probably at least existed). It also doesn't hurt to have anyway for modding and stuff. */
namespace ml {
    struct CVec2 {

        CVec2(){}

        CVec2(float x, float y){
            set(x, y);
        }

        CVec2(const CVec2& vec){
            set(vec.x, vec.y);
        }

        void set(float x, float y){
            this->x = x;
            this->y = y;
        }

        void set(const CVec2& vec){
            x = vec.x;
            y = vec.y;
        }

        bool operator==(const CVec2& vec) const {
            return x == vec.x && y == vec.y;
        }

        bool operator!=(const CVec2& vec) const {
            return x != vec.x || y != vec.y;
        }
        
        /* Nesting the variables in a nameless makes mwcc use lwz/stw for struct copies,
        which is more efficient than lfs/stfd. */
        struct{
            float x;
            float y;
        };

    };

} //namespace ml
