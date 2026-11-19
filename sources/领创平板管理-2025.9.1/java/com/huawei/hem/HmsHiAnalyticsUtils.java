package com.huawei.hem;

import android.util.Log;

/* compiled from: HmsHiAnalyticsUtils.java */
/* renamed from: com.huawei.hem.f9 */
/* loaded from: classes.dex */
public class HmsHiAnalyticsUtils {
    /* renamed from: a */
    public static void m1783a() {
        C1429ya c1429ya = C1404xa.f4061a;
        StringBuilder sb = new StringBuilder();
        sb.append('\n');
        sb.append("=======================================\n ");
        StringBuilder sbM1765j = CompilerOutline.m1765j("HiAnalyticsSDK_2.2.0.308");
        sbM1765j.append(C1428y9.f4211a.booleanValue() ? "-dev" : "");
        sb.append(sbM1765j.toString());
        sb.append("");
        sb.append("\n=======================================");
        Log.i("HiAnalyticsSDK", sb.toString());
        c1429ya.f4213b = 3;
        c1429ya.f4212a = true;
    }

    /* renamed from: b */
    public static boolean m1784b() {
        return C1028ia.f2907b.f2908a != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010f  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1785c(int r7, java.lang.String r8, java.util.LinkedHashMap<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0951f9.m1785c(int, java.lang.String, java.util.LinkedHashMap):void");
    }

    /* renamed from: d */
    public static void m1786d() {
        if (AbstractC1102l9.m2279b() == null || !C1229qa.f3513c.m2584a()) {
            return;
        }
        C1378w9 c1378w9 = AbstractC1102l9.f3158a;
        C1404xa.m2935b("hmsSdk", "HiAnalyticsInstance.onReport() is execute.TAG: %s,TYPE: %d", c1378w9.f4012a, -1);
        C1328u9 c1328u9M2787a = C1328u9.m2787a();
        String str = c1378w9.f4012a;
        if (c1328u9M2787a == null) {
            throw null;
        }
        C1353v9 c1353v9M2861a = C1353v9.m2861a();
        if (c1353v9M2861a.f3942a == null) {
            C1404xa.m2939f("hmsSdk", "onReport() null context or SDK was not init.");
        } else {
            C1404xa.m2937d("hmsSdk", "onReport: Before calling runtaskhandler()");
            c1353v9M2861a.m2865e(str, AbstractC1102l9.m2282e(-1), LauncherMenuHelper.m2997r());
        }
    }
}
