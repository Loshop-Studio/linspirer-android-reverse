package com.huawei.hem;

import android.util.Log;

/* renamed from: com.huawei.hem.xa */
/* loaded from: classes.dex */
public class C1404xa {

    /* renamed from: a */
    public static C1429ya f4061a = new C1429ya();

    /* renamed from: a */
    public static void m2934a(String str, String str2) {
        if (f4061a.m3085a(3)) {
            Log.d("HiAnalyticsSDK", str + "=> " + str2);
        }
    }

    /* renamed from: b */
    public static void m2935b(String str, String str2, Object... objArr) {
        if (f4061a.m3085a(4)) {
            Log.i("HiAnalyticsSDK", str + "=> " + String.format(str2, objArr));
        }
    }

    /* renamed from: c */
    public static void m2936c(String str, String str2) {
        if (!f4061a.m3085a(6) || str2 == null) {
            return;
        }
        Log.e("HiAnalyticsSDK", str + "=> " + str2);
    }

    /* renamed from: d */
    public static void m2937d(String str, String str2) {
        if (!f4061a.m3085a(4) || str2 == null) {
            return;
        }
        Log.i("HiAnalyticsSDK", str + "=> " + str2);
    }

    /* renamed from: e */
    public static void m2938e(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        Log.i("HiAnalyticsSDK", str + "=> " + str2);
    }

    /* renamed from: f */
    public static void m2939f(String str, String str2) {
        if (str2 != null) {
            Log.w("HiAnalyticsSDK", str + "=> " + str2);
        }
    }

    /* renamed from: g */
    public static void m2940g(String str, String str2) {
        if (!f4061a.m3085a(5) || str2 == null) {
            return;
        }
        Log.w("HiAnalyticsSDK", str + "=> " + str2);
    }
}
