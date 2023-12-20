#pragma once

#include "monolithlib/CWorkThread.hpp"

class CProc : public CWorkThread {
public:
	virtual ~CProc();
	virtual void WorkThreadEvent4();
	virtual void WorkThreadEvent5();

	u8 unk1C4[0x1EC - 0x1C4];
};
