#include "monolib/math.hpp"

namespace ml{

    void CAttrTransform::update(){
        if(!(mFlags & FLAG_0)){
            mPrevPos = mPos;

            if(mRot != mPrevRot){
                mPrevRot = mRot;
                if(mFlags & FLAG_USE_ZXY) mLocalQuat.setRotZXY(&mRot);
                else mLocalQuat.setRotXYZ(&mRot);
                mLocalMat.setRotQuat(mLocalQuat);
            }else{
                if(mFlags & FLAG_1){
                    mLocalQuat *= unkA8;
                    mLocalMat.setRotQuat(mLocalQuat);
                    if (mFlags & FLAG_USE_ZXY) mLocalQuat.getRotZXY(&mPrevRot);
                    else mLocalQuat.getRotXYZ(&mPrevRot);
                    mRot = mPrevRot;
                }else if(mFlags & FLAG_2){
                    mLocalQuat = unkA8;
                    mLocalMat.setRotQuat(mLocalQuat);
                    if (mFlags & FLAG_USE_ZXY) mLocalQuat.getRotZXY(&mPrevRot);
                    else mLocalQuat.getRotXYZ(&mPrevRot);
                    mRot = mPrevRot;
                }
            }

            mLocalMat.replaceTranslation(mPrevPos);
            mLocalMat.invert(&mLocalMatInv);
        }else{
            mLocalMat = mMtx1;
            mLocalMat.invert(&mLocalMatInv);
            CVec3 trans = mLocalMat.getTranslation();
            mPrevPos = trans;
            mPos = trans;
            mLocalMat.getRotQuat(mLocalQuat);
            if(mFlags & FLAG_USE_ZXY) mLocalQuat.getRotZXY(&mPrevRot);
            else mLocalQuat.getRotXYZ(&mPrevRot);
            mRot = mPrevRot;
        }

        //Reset flags 0-2
        this->mFlags &= ~(FLAG_0 | FLAG_1 | FLAG_2);
    }

    void CAttrTransform::clear() {
        mPos = CVec3::zero;
        mRot = CVec3::zero;
        mMtx1.setUnit();
        mPrevPos = CVec3::zero;
        mPrevRot = CVec3::zero;
        mLocalMat.setUnit();
        mLocalMatInv.setUnit();
        mLocalQuat.setIdentity();
        mFlags = 0;
    }
} //namespace ml
