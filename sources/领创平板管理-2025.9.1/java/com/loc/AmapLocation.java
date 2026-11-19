package com.loc;

/* compiled from: AmapLocation.java */
/* renamed from: com.loc.dc */
/* loaded from: classes.dex */
public class AmapLocation {

    /* renamed from: a */
    public String f5283a;

    /* renamed from: b */
    public long f5284b = 0;

    /* renamed from: c */
    public long f5285c = 0;

    /* renamed from: d */
    public double f5286d = 0.0d;

    /* renamed from: e */
    public double f5287e = 0.0d;

    /* renamed from: f */
    public double f5288f = 0.0d;

    /* renamed from: g */
    public float f5289g = 0.0f;

    /* renamed from: h */
    public float f5290h = 0.0f;

    /* renamed from: i */
    public float f5291i = 0.0f;

    /* renamed from: j */
    public boolean f5292j = false;

    public AmapLocation(String str) {
        this.f5283a = str;
    }

    /* renamed from: a */
    public final double m4514a(AmapLocation c1794dc) {
        if (c1794dc != null) {
            return GeoUtil.m4577a(this.f5287e, this.f5286d, c1794dc.f5287e, c1794dc.f5286d);
        }
        return 0.0d;
    }
}
