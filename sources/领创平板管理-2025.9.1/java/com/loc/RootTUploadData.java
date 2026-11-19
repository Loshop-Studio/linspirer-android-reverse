package com.loc;

/* compiled from: RootTUploadData.java */
/* renamed from: com.loc.cd */
/* loaded from: classes.dex */
public final class RootTUploadData extends AMapFlatBufferTable {
    /* renamed from: a */
    public static int m4287a(FlatBufferBuilder c1843ey) {
        return c1843ey.m5188b();
    }

    /* renamed from: a */
    public static int m4288a(FlatBufferBuilder c1843ey, int i, int i2, int i3) {
        c1843ey.m5189b(3);
        m4294c(c1843ey, i3);
        m4293b(c1843ey, i2);
        m4291a(c1843ey, i);
        return m4287a(c1843ey);
    }

    /* renamed from: a */
    public static int m4289a(FlatBufferBuilder c1843ey, byte[] bArr) {
        c1843ey.m5184a(1, bArr.length, 1);
        for (int length = bArr.length - 1; length >= 0; length--) {
            c1843ey.m5180a(bArr[length]);
        }
        return c1843ey.m5178a();
    }

    /* renamed from: a */
    public static int m4290a(FlatBufferBuilder c1843ey, int[] iArr) {
        c1843ey.m5184a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            c1843ey.m5181a(iArr[length]);
        }
        return c1843ey.m5178a();
    }

    /* renamed from: a */
    public static void m4291a(FlatBufferBuilder c1843ey, int i) {
        c1843ey.m5190b(0, i);
    }

    /* renamed from: b */
    public static int m4292b(FlatBufferBuilder c1843ey, byte[] bArr) {
        c1843ey.m5184a(1, bArr.length, 1);
        for (int length = bArr.length - 1; length >= 0; length--) {
            c1843ey.m5180a(bArr[length]);
        }
        return c1843ey.m5178a();
    }

    /* renamed from: b */
    public static void m4293b(FlatBufferBuilder c1843ey, int i) {
        c1843ey.m5190b(1, i);
    }

    /* renamed from: c */
    public static void m4294c(FlatBufferBuilder c1843ey, int i) {
        c1843ey.m5190b(2, i);
    }
}
