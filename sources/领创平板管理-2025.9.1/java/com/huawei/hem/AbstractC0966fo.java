package com.huawei.hem;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.util.Arrays;

/* compiled from: BaseNCodec.java */
/* renamed from: com.huawei.hem.fo */
/* loaded from: classes.dex */
public abstract class AbstractC0966fo {

    /* renamed from: a */
    public final byte f2706a;

    /* renamed from: b */
    public final int f2707b;

    /* renamed from: c */
    public final int f2708c;

    /* renamed from: d */
    public final int f2709d;

    /* renamed from: e */
    public final int f2710e;

    /* compiled from: BaseNCodec.java */
    /* renamed from: com.huawei.hem.fo$a */
    public static class a {

        /* renamed from: a */
        public int f2711a;

        /* renamed from: b */
        public byte[] f2712b;

        /* renamed from: c */
        public int f2713c;

        /* renamed from: d */
        public int f2714d;

        /* renamed from: e */
        public boolean f2715e;

        /* renamed from: f */
        public int f2716f;

        /* renamed from: g */
        public int f2717g;

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", a.class.getSimpleName(), Arrays.toString(this.f2712b), Integer.valueOf(this.f2716f), Boolean.valueOf(this.f2715e), Integer.valueOf(this.f2711a), 0L, Integer.valueOf(this.f2717g), Integer.valueOf(this.f2713c), Integer.valueOf(this.f2714d));
        }
    }

    public AbstractC0966fo(int i, int i2, int i3, int i4) {
        this.f2707b = i;
        this.f2708c = i2;
        this.f2709d = i3 > 0 && i4 > 0 ? (i3 / i2) * i2 : 0;
        this.f2710e = i4;
        this.f2706a = Base64.EQUALS_SIGN;
    }

    /* renamed from: a */
    public abstract void mo1691a(byte[] bArr, int i, int i2, a aVar);

    /* renamed from: b */
    public abstract void mo1692b(byte[] bArr, int i, int i2, a aVar);

    /* renamed from: c */
    public byte[] m1842c(int i, a aVar) {
        byte[] bArr = aVar.f2712b;
        if (bArr != null && bArr.length >= aVar.f2713c + i) {
            return bArr;
        }
        byte[] bArr2 = aVar.f2712b;
        if (bArr2 == null) {
            aVar.f2712b = new byte[8192];
            aVar.f2713c = 0;
            aVar.f2714d = 0;
        } else {
            byte[] bArr3 = new byte[bArr2.length * 2];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            aVar.f2712b = bArr3;
        }
        return aVar.f2712b;
    }

    /* renamed from: d */
    public int m1843d(byte[] bArr, int i, int i2, a aVar) {
        if (aVar.f2712b == null) {
            return aVar.f2715e ? -1 : 0;
        }
        int iMin = Math.min(aVar.f2713c - aVar.f2714d, i2);
        System.arraycopy(aVar.f2712b, aVar.f2714d, bArr, i, iMin);
        int i3 = aVar.f2714d + iMin;
        aVar.f2714d = i3;
        if (i3 >= aVar.f2713c) {
            aVar.f2712b = null;
        }
        return iMin;
    }
}
