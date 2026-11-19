package com.huawei.hem;

import android.text.TextUtils;

/* renamed from: com.huawei.hem.w9 */
/* loaded from: classes.dex */
public class C1378w9 {

    /* renamed from: a */
    public String f4012a;

    /* renamed from: b */
    public C1053ja f4013b = new C1053ja();

    public C1378w9(String str) {
        this.f4012a = str;
        C1453z9 c1453z9M3144b = C1453z9.m3144b();
        String str2 = this.f4012a;
        C1053ja c1053ja = this.f4013b;
        if (c1453z9M3144b == null) {
            throw null;
        }
        C1453z9.f4291b.put(str2, c1053ja);
    }

    /* renamed from: a */
    public final boolean m2903a(int i) {
        C0926ea c0926ea;
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
        C1404xa.m2939f("hmsSdk", str);
        return false;
    }
}
