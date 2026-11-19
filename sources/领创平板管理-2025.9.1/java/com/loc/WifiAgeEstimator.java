package com.loc;

import android.content.Context;
import android.os.Handler;

/* compiled from: WifiAgeEstimator.java */
/* renamed from: com.loc.ec */
/* loaded from: classes.dex */
public final class WifiAgeEstimator extends AgeEstimator<AmapWifi> {
    public WifiAgeEstimator(Context context, String str, Handler handler) {
        super(context, str, handler);
    }

    /* renamed from: a */
    public static String m4834a(AmapWifi c1796de) {
        return c1796de == null ? "" : c1796de.m4518a();
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    public static void a2(AmapWifi c1796de, long j) {
        if (c1796de != null) {
            c1796de.f5300f = j;
        }
    }

    /* renamed from: b, reason: avoid collision after fix types in other method */
    public static int b2(AmapWifi c1796de) {
        if (c1796de == null) {
            return -113;
        }
        return c1796de.f5297c;
    }

    /* renamed from: c, reason: avoid collision after fix types in other method */
    public static long c2(AmapWifi c1796de) {
        if (c1796de == null) {
            return 0L;
        }
        return c1796de.f5300f;
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4715a(AmapWifi c1796de, long j) {
        a2(c1796de, j);
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: b */
    public final long mo4718b() {
        return Const.f5425e;
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: b */
    public final /* synthetic */ String mo4719b(AmapWifi c1796de) {
        return m4834a(c1796de);
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: c */
    public final /* synthetic */ int mo4720c(AmapWifi c1796de) {
        return b2(c1796de);
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: c */
    public final long mo4721c() {
        return Const.f5426f;
    }

    @Override // com.loc.AbstractC1813dv
    /* renamed from: d */
    public final /* synthetic */ long mo4722d(AmapWifi c1796de) {
        return c2(c1796de);
    }
}
