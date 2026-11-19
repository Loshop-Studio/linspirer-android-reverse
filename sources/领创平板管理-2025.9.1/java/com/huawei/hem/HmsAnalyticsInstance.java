package com.huawei.hem;

import android.text.TextUtils;

/* renamed from: com.huawei.hem.w9 */
/* loaded from: classes.dex */
public class HmsAnalyticsInstance {

    /* renamed from: a */
    public String f4012a;

    /* renamed from: b */
    public HiAnalyticsTaggedInstanceData f4013b = new HiAnalyticsTaggedInstanceData();

    public HmsAnalyticsInstance(String str) {
        this.f4012a = str;
        HmsAnalyticsConfiguration c1453z9M3144b = HmsAnalyticsConfiguration.m3144b();
        String str2 = this.f4012a;
        HiAnalyticsTaggedInstanceData c1053ja = this.f4013b;
        if (c1453z9M3144b == null) {
            throw null;
        }
        HmsAnalyticsConfiguration.f4291b.put(str2, c1053ja);
    }

    /* renamed from: a */
    public final boolean m2903a(int i) {
        AnalyticsInstanceConfig c0926ea;
        String str;
        if (i != 2) {
            if (i == 0) {
                c0926ea = this.f4013b.f2941b;
            } else if (i != 1) {
                c0926ea = null;
                if (i != 2) {
                    if (i == 3 && this.f4013b == null) {
                        throw null;
                    }
                } else if (this.f4013b == null) {
                    throw null;
                }
            } else {
                c0926ea = this.f4013b.f2940a;
            }
            if (c0926ea != null && !TextUtils.isEmpty(c0926ea.f2523d)) {
                return true;
            }
            str = "verifyURL(): URL check failed. type: " + i;
        } else {
            if ("_default_config_tag".equals(this.f4012a)) {
                return true;
            }
            str = "verifyURL(): type: preins. Only default config can report Pre-install data.";
        }
        HiAnalyticsSdkState.m2939f("hmsSdk", str);
        return false;
    }
}
