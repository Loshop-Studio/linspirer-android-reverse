package com.huawei.hem;

/* compiled from: Settings.java */
/* renamed from: com.huawei.hem.pm */
/* loaded from: classes.dex */
public final class Http2Settings {

    /* renamed from: a */
    public int f3479a;

    /* renamed from: b */
    public final int[] f3480b = new int[10];

    /* renamed from: a */
    public int m2496a() {
        if ((this.f3479a & 128) != 0) {
            return this.f3480b[7];
        }
        return 65535;
    }

    /* renamed from: b */
    public Http2Settings m2497b(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f3480b;
            if (i < iArr.length) {
                this.f3479a = (1 << i) | this.f3479a;
                iArr[i] = i2;
            }
        }
        return this;
    }
}
