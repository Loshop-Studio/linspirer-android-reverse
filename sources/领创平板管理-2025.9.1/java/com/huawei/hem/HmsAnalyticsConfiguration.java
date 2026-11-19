package com.huawei.hem;

import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.hem.z9 */
/* loaded from: classes.dex */
public final class HmsAnalyticsConfiguration {

    /* renamed from: b */
    public static Map<String, HiAnalyticsTaggedInstanceData> f4291b = new HashMap();

    /* renamed from: c */
    public static HmsAnalyticsConfiguration f4292c;

    /* renamed from: a */
    public AnalyticsDeviceContext f4293a = new AnalyticsDeviceContext();

    /* renamed from: b */
    public static HmsAnalyticsConfiguration m3144b() {
        if (f4292c == null) {
            synchronized (HmsAnalyticsConfiguration.class) {
                if (f4292c == null) {
                    f4292c = new HmsAnalyticsConfiguration();
                }
            }
        }
        return f4292c;
    }

    /* renamed from: a */
    public HiAnalyticsTaggedInstanceData m3145a(String str) {
        return f4291b.get(str);
    }
}
