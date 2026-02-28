#include <revolution/HBM.h>

#include <revolution/HBM/nw4hbm/lyt.h>
#include <revolution/HBM/nw4hbm/ut.h>

namespace homebutton {

GroupAnmController::GroupAnmController() : mpGroup(), mpAnimGroup() {}

GroupAnmController::~GroupAnmController() {}

void GroupAnmController::do_calc() {
    bool enable;

    if (mState == eState_Playing) {
        calc();
        enable = true;

        mpAnimGroup->SetFrame(mCurFrame);
    } else {
        enable = false;
    }

    nw4hbm::lyt::detail::PaneLinkList& rPaneList = mpGroup->GetPaneList();

    NW4R_UT_LINKLIST_FOREACH(it, rPaneList, {
        it->mTarget->SetAnimationEnable(mpAnimGroup, enable, false); //
    })
}

} // namespace homebutton
