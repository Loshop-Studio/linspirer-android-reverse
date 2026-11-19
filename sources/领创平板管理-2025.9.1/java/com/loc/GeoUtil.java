package com.loc;

/* compiled from: GeoUtil.java */
/* renamed from: com.loc.dn */
/* loaded from: classes.dex */
public final class GeoUtil {
    /* renamed from: a */
    public static double m4577a(double d, double d2, double d3, double d4) {
        double d5 = (((90.0d - d2) * 21412.0d) / 90.0d) + 6356725.0d;
        double dCos = ((d3 * 0.01745329238474369d) - (d * 0.01745329238474369d)) * Math.cos((3.1415927410125732d * d2) / 180.0d) * d5;
        double d6 = ((d4 * 0.01745329238474369d) - (d2 * 0.01745329238474369d)) * d5;
        return Math.pow((d6 * d6) + (dCos * dCos), 0.5d);
    }
}
