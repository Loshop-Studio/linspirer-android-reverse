package com.huawei.hms.stats;

import com.huawei.hms.support.log.HMSLog;

/* compiled from: HianalyticsExist.java */
/* renamed from: com.huawei.hms.stats.c */
/* loaded from: classes.dex */
public class C1559c {

    /* renamed from: a */
    public static final Object f4539a = new Object();

    /* renamed from: b */
    public static boolean f4540b = false;

    /* renamed from: c */
    public static boolean f4541c = false;

    /* renamed from: a */
    public static boolean m3448a() {
        boolean z;
        synchronized (f4539a) {
            if (!f4540b) {
                boolean z2 = false;
                try {
                    Class.forName("com.huawei.hianalytics.process.HiAnalyticsInstance");
                    z = true;
                } catch (ClassNotFoundException unused) {
                    HMSLog.m3463i("HianalyticsExist", "In isHianalyticsExist, Failed to find class HiAnalyticsConfig.");
                    z = false;
                }
                try {
                    Class.forName("com.huawei.hem.f9");
                    z2 = true;
                } catch (ClassNotFoundException unused2) {
                    HMSLog.m3463i("HianalyticsExist", "In isHianalyticsExist, Failed to find class HmsHiAnalyticsUtils.");
                }
                if (z && !z2) {
                    f4541c = true;
                }
                f4540b = true;
                HMSLog.m3463i("HianalyticsExist", "hianalytics exist: " + f4541c);
            }
        }
        return f4541c;
    }
}
