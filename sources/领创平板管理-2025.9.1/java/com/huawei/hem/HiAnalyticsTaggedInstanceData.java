package com.huawei.hem;

/* renamed from: com.huawei.hem.ja */
/* loaded from: classes.dex */
public class HiAnalyticsTaggedInstanceData {

    /* renamed from: a */
    public AnalyticsInstanceConfig f2940a;

    /* renamed from: b */
    public AnalyticsInstanceConfig f2941b;

    /* renamed from: a */
    public AnalyticsInstanceConfig m2126a(String str) {
        if (str.equals("oper")) {
            return this.f2941b;
        }
        if (str.equals("maint")) {
            return this.f2940a;
        }
        if (str.equals("diffprivacy") || str.equals("preins")) {
            return null;
        }
        HiAnalyticsSdkState.m2940g("hmsSdk", "HiAnalyticsInstData.getConfig(type): wrong type: " + str);
        return null;
    }
}
