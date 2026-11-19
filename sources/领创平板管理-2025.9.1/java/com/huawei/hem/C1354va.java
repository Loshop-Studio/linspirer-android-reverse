package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import java.util.UUID;

/* renamed from: com.huawei.hem.va */
/* loaded from: classes.dex */
public class C1354va {

    /* renamed from: b */
    public static C1354va f3943b;

    /* renamed from: a */
    public Context f3944a;

    /* renamed from: com.huawei.hem.va$a */
    public static class a extends AbstractC1379wa {

        /* renamed from: a */
        public String f3945a;

        /* renamed from: b */
        public String f3946b;

        public a(String str, String str2) {
            this.f3945a = str;
            this.f3946b = str2;
        }

        @Override // com.huawei.hem.AbstractC1379wa
        /* renamed from: c */
        public int mo2868c() {
            C0848ba c0848baM2994o = C1423y4.m2994o(this.f3945a, this.f3946b);
            int i = (c0848baM2994o != null && c0848baM2994o.f2288c ? 4 : 0) | 0;
            C0848ba c0848baM2994o2 = C1423y4.m2994o(this.f3945a, this.f3946b);
            int i2 = i | (c0848baM2994o2 != null && c0848baM2994o2.f2286a ? 2 : 0);
            C0848ba c0848baM2994o3 = C1423y4.m2994o(this.f3945a, this.f3946b);
            return i2 | ((c0848baM2994o3 == null || !c0848baM2994o3.f2287b) ? 0 : 1);
        }
    }

    /* renamed from: a */
    public static C1354va m2866a() {
        C1354va c1354va;
        synchronized (C1354va.class) {
            if (f3943b == null) {
                f3943b = new C1354va();
            }
            c1354va = f3943b;
        }
        return c1354va;
    }

    /* renamed from: b */
    public String m2867b(boolean z) {
        if (!z) {
            return "";
        }
        String strM2283f = C1453z9.m3144b().f4293a.f2755i;
        if (TextUtils.isEmpty(strM2283f)) {
            strM2283f = AbstractC1102l9.m2283f(this.f3944a, "global_v2", "uuid", "");
            if (TextUtils.isEmpty(strM2283f)) {
                strM2283f = UUID.randomUUID().toString().replace("-", "");
                AbstractC1102l9.m2263D(this.f3944a, "global_v2", "uuid", strM2283f);
            }
            C1453z9.m3144b().f4293a.f2755i = strM2283f;
        }
        return strM2283f;
    }
}
