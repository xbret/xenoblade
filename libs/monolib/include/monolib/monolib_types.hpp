#pragma once

//List of forward declarations for commonly used classes.

//Core
class CView;
class CException;

//Device
class CFileHandle;
class CDeviceFileJob;

//Math
namespace ml {
    struct CPnt16;
    struct CRect16;
    struct CVec3;
    struct CVec4;
    struct CCol3;
    struct CCol4;
    struct CMat34;
    struct CFrustum;
} //namespace ml

//Scene
class CScn;
class CScnNw4r;
class IScnRender;
class ICulling;

//Util
class CChildListNode;

//Work
class CEventFile;
class CProcess;
class CProc;
class CWorkThread;
