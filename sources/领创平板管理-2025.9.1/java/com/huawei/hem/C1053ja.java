package com.huawei.hem;

/* renamed from: com.huawei.hem.ja */
/* loaded from: classes.dex */
public class C1053ja {

    /* renamed from: a */
    public C0926ea f2940a;

    /* renamed from: b */
    public C0926ea f2941b;

    /* renamed from: a */
    public C0926ea m2126a(String str) {
        if (str.equals("oper")) {
            return this.f2941b;
        }
        if (str.equals("maint")) {
            return this.f2940a;
        }
        if (str.equals("diffprivacy") || str.equals("preins")) {
            return null;
        }
        C1404xa.m2940g("hmsSdk", "HiAnalyticsInstData.getConfig(type): wrong type: " + str);
        return null;
    }
}
