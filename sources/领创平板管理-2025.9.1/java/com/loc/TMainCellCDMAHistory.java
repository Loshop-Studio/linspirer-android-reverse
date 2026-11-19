package com.loc;

/* compiled from: TMainCellCDMAHistory.java */
/* renamed from: com.loc.cm */
/* loaded from: classes.dex */
public final class TMainCellCDMAHistory extends AMapFlatBufferTable {
    /* renamed from: a */
    public static int m4362a(FlatBufferBuilder c1843ey, int i, int i2, int i3, short s) {
        c1843ey.m5189b(5);
        m4368c(c1843ey, i3);
        m4367b(c1843ey, i2);
        m4364a(c1843ey, i);
        m4365a(c1843ey, s);
        m4363a(c1843ey);
        return m4366b(c1843ey);
    }

    /* renamed from: a */
    public static void m4363a(FlatBufferBuilder c1843ey) {
        c1843ey.m5182a(0, (byte) 2);
    }

    /* renamed from: a */
    public static void m4364a(FlatBufferBuilder c1843ey, int i) {
        c1843ey.m5183a(1, i);
    }

    /* renamed from: a */
    public static void m4365a(FlatBufferBuilder c1843ey, short s) {
        c1843ey.m5186a(4, s);
    }

    /* renamed from: b */
    public static int m4366b(FlatBufferBuilder c1843ey) {
        return c1843ey.m5188b();
    }

    /* renamed from: b */
    public static void m4367b(FlatBufferBuilder c1843ey, int i) {
        c1843ey.m5183a(2, i);
    }

    /* renamed from: c */
    public static void m4368c(FlatBufferBuilder c1843ey, int i) {
        c1843ey.m5183a(3, i);
    }
}
