package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateJsonBean;

/* loaded from: classes.dex */
public class ResultPoint {

    /* renamed from: x */
    public final float f2129x;

    /* renamed from: y */
    public final float f2130y;

    public ResultPoint(float f, float f2) {
        this.f2129x = f;
        this.f2130y = f2;
    }

    public static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f = resultPoint2.f2129x;
        float f2 = resultPoint2.f2130y;
        return ((resultPoint.f2130y - f2) * (resultPoint3.f2129x - f)) - ((resultPoint.f2129x - f) * (resultPoint3.f2130y - f2));
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f2129x, resultPoint.f2130y, resultPoint2.f2129x, resultPoint2.f2130y);
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float fDistance = distance(resultPointArr[0], resultPointArr[1]);
        float fDistance2 = distance(resultPointArr[1], resultPointArr[2]);
        float fDistance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (fDistance2 >= fDistance && fDistance2 >= fDistance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (fDistance3 < fDistance2 || fDistance3 < fDistance) {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        } else {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            if (this.f2129x == resultPoint.f2129x && this.f2130y == resultPoint.f2130y) {
                return true;
            }
        }
        return false;
    }

    public final float getX() {
        return this.f2129x;
    }

    public final float getY() {
        return this.f2130y;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f2130y) + (Float.floatToIntBits(this.f2129x) * 31);
    }

    public final String toString() {
        return "(" + this.f2129x + UpdateJsonBean.COMMA + this.f2130y + ')';
    }
}
