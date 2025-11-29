#include "monolib/util/CChildListNode.hpp"

CChildListNode::CChildListNode()
    : mParent(NULL) {}

void CChildListNode::Reset() {
    CDoubleListNode::Reset();
    mParent = NULL;
    mChildren.Reset();
}
