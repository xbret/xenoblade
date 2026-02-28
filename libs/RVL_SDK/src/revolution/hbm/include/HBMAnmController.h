#ifndef HOME_BUTTON_MINI_LIB_ANM_CONTROLLER_H
#define HOME_BUTTON_MINI_LIB_ANM_CONTROLLER_H
#include <HBMFrameController.h>
#include <revolution/HBM/HBMTypes.h>

#include <nw4hbm/lyt.h>

namespace homebutton {

class GroupAnmController : public FrameController {
public:
    GroupAnmController();
    virtual ~GroupAnmController(); // at 0x8

    void do_calc();

public:
    nw4hbm::lyt::Group* mpGroup;             // at 0x20
    nw4hbm::lyt::AnimTransform* mpAnimGroup; // at 0x24
};

} // namespace homebutton

#endif
