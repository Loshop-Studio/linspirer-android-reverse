package com.huawei.hem;

import anet.channel.request.Request;

/* compiled from: Version.java */
/* renamed from: com.huawei.hem.uk */
/* loaded from: classes.dex */
public final class OkHttpVersionInfo {
    /* renamed from: a */
    public static boolean m2815a(String str) {
        return (str.equals("GET") || str.equals(Request.Method.HEAD)) ? false : true;
    }

    /* renamed from: b */
    public static String m2816b(OkHttpUrl c1463zj) {
        String strM3158e = c1463zj.m3158e();
        String strM3160g = c1463zj.m3160g();
        if (strM3160g == null) {
            return strM3158e;
        }
        return strM3158e + '?' + strM3160g;
    }
}
