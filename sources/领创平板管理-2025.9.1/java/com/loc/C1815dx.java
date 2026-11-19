package com.loc;

import android.content.Context;
import android.os.Handler;

/* compiled from: CellAgeEstimator.java */
/* renamed from: com.loc.dx */
/* loaded from: classes.dex */
public final class C1815dx extends AbstractC1813dv<C1816dy> {
    public C1815dx(Context context, String str, Handler handler) {
        super(context, str, handler);
    }

    /* renamed from: a */
    public static String m4734a(C1816dy c1816dy) {
        return c1816dy == null ? "" : c1816dy.m4738b();
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    public static void a2(C1816dy c1816dy, long j) {
        if (c1816dy != null) {
            c1816dy.f5503t = j;
        }
    }

    /* renamed from: b, reason: avoid collision after fix types in other method */
    public static int b2(C1816dy c1816dy) {
        if (c1816dy == null) {
            return 99;
        }
        return c1816dy.f5502s;
    }

    /* renamed from: c, reason: avoid collision after fix types in other method */
    public static long c2(C1816dy c1816dy) {
        if (c1816dy == null) {
            return 0L;
        }
        return c1816dy.f5503t;
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4715a(C1816dy c1816dy, long j) {
        a2(c1816dy, j);
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: b */
    public final long mo4718b() {
        return C1810ds.f5427g;
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: b */
    public final /* synthetic */ String mo4719b(C1816dy c1816dy) {
        return m4734a(c1816dy);
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: c */
    public final /* synthetic */ int mo4720c(C1816dy c1816dy) {
        return b2(c1816dy);
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: c */
    public final long mo4721c() {
        return C1810ds.f5428h;
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: d */
    public final /* synthetic */ long mo4722d(C1816dy c1816dy) {
        return c2(c1816dy);
    }
}
