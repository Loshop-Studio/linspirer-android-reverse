package com.huawei.hem;

import javax.annotation.Nullable;

/* compiled from: Segment.java */
/* renamed from: com.huawei.hem.wn */
/* loaded from: classes.dex */
public final class C1392wn {

    /* renamed from: a */
    public final byte[] f4031a;

    /* renamed from: b */
    public int f4032b;

    /* renamed from: c */
    public int f4033c;

    /* renamed from: d */
    public boolean f4034d;

    /* renamed from: e */
    public boolean f4035e;

    /* renamed from: f */
    public C1392wn f4036f;

    /* renamed from: g */
    public C1392wn f4037g;

    public C1392wn() {
        this.f4031a = new byte[8192];
        this.f4035e = true;
        this.f4034d = false;
    }

    @Nullable
    /* renamed from: a */
    public final C1392wn m2916a() {
        C1392wn c1392wn = this.f4036f;
        if (c1392wn == this) {
            c1392wn = null;
        }
        C1392wn c1392wn2 = this.f4037g;
        c1392wn2.f4036f = this.f4036f;
        this.f4036f.f4037g = c1392wn2;
        this.f4036f = null;
        this.f4037g = null;
        return c1392wn;
    }

    /* renamed from: b */
    public final C1392wn m2917b(C1392wn c1392wn) {
        c1392wn.f4037g = this;
        c1392wn.f4036f = this.f4036f;
        this.f4036f.f4037g = c1392wn;
        this.f4036f = c1392wn;
        return c1392wn;
    }

    /* renamed from: c */
    public final C1392wn m2918c() {
        this.f4034d = true;
        return new C1392wn(this.f4031a, this.f4032b, this.f4033c, true, false);
    }

    /* renamed from: d */
    public final void m2919d(C1392wn c1392wn, int i) {
        if (!c1392wn.f4035e) {
            throw new IllegalArgumentException();
        }
        int i2 = c1392wn.f4033c;
        if (i2 + i > 8192) {
            if (c1392wn.f4034d) {
                throw new IllegalArgumentException();
            }
            int i3 = c1392wn.f4032b;
            if ((i2 + i) - i3 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = c1392wn.f4031a;
            System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
            c1392wn.f4033c -= c1392wn.f4032b;
            c1392wn.f4032b = 0;
        }
        System.arraycopy(this.f4031a, this.f4032b, c1392wn.f4031a, c1392wn.f4033c, i);
        c1392wn.f4033c += i;
        this.f4032b += i;
    }

    public C1392wn(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f4031a = bArr;
        this.f4032b = i;
        this.f4033c = i2;
        this.f4034d = z;
        this.f4035e = z2;
    }
}
