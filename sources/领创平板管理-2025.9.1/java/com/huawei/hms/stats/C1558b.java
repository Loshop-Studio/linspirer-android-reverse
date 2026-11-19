package com.huawei.hms.stats;

import android.content.Context;
import com.huawei.hianalytics.process.HiAnalyticsInstance;
import com.huawei.hms.utils.HMSBIInitializer;
import java.util.LinkedHashMap;

/* compiled from: HiAnalyticsOfCpUtils.java */
/* renamed from: com.huawei.hms.stats.b */
/* loaded from: classes.dex */
public class C1558b {

    /* renamed from: a */
    public static HiAnalyticsInstance f4538a;

    /* renamed from: a */
    public static HiAnalyticsInstance m3444a(Context context) {
        HiAnalyticsInstance analyticsInstance = HMSBIInitializer.getInstance(context).getAnalyticsInstance();
        f4538a = analyticsInstance;
        return analyticsInstance;
    }

    /* renamed from: a */
    public static void m3447a(Context context, String str, String str2) {
        if (m3444a(context) != null) {
            f4538a.onEvent(context, str, str2);
        }
    }

    /* renamed from: a */
    public static void m3446a(Context context, int i, String str, LinkedHashMap<String, String> linkedHashMap) {
        if (m3444a(context) != null) {
            f4538a.onEvent(i, str, linkedHashMap);
        }
    }

    /* renamed from: a */
    public static void m3445a(Context context, int i) {
        if (m3444a(context) != null) {
            f4538a.onReport(i);
        }
    }
}
