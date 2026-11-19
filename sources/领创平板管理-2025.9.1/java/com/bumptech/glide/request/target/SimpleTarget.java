package com.bumptech.glide.request.target;

import com.bumptech.glide.util.Util;
import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public abstract class SimpleTarget<Z> extends BaseTarget<Z> {
    public final int height;
    public final int width;

    public SimpleTarget() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void getSize(SizeReadyCallback sizeReadyCallback) {
        if (Util.isValidDimensions(this.width, this.height)) {
            sizeReadyCallback.onSizeReady(this.width, this.height);
            return;
        }
        StringBuilder sbM1765j = C0948f6.m1765j("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ");
        sbM1765j.append(this.width);
        sbM1765j.append(" and height: ");
        sbM1765j.append(this.height);
        sbM1765j.append(", either provide dimensions in the constructor");
        sbM1765j.append(" or call override()");
        throw new IllegalArgumentException(sbM1765j.toString());
    }

    public SimpleTarget(int i, int i2) {
        this.width = i;
        this.height = i2;
    }
}
