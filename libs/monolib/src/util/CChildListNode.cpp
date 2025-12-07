#include "monolib/util.hpp"

CChildListNode::CChildListNode()
    : mParent(NULL) {}

void CChildListNode::Reset() {
    CDoubleListNode::Reset();
    mParent = NULL;
    mChildren.Reset();
}
