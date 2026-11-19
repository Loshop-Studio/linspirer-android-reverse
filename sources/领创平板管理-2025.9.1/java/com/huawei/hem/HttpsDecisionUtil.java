package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import com.loc.AdiuManager;

/* compiled from: HttpsDecisionUtil.java */
/* renamed from: com.huawei.hem.i1 */
/* loaded from: classes.dex */
public final class HttpsDecisionUtil {

    /* renamed from: a */
    public volatile b f2885a = new b((byte) 0);

    /* compiled from: HttpsDecisionUtil.java */
    /* renamed from: com.huawei.hem.i1$a */
    public static class a {

        /* renamed from: a */
        public static HttpsDecisionUtil f2886a = new HttpsDecisionUtil();
    }

    /* compiled from: HttpsDecisionUtil.java */
    /* renamed from: com.huawei.hem.i1$b */
    public static class b {

        /* renamed from: a */
        public int f2887a = 0;

        /* renamed from: b */
        public boolean f2888b = true;

        /* renamed from: c */
        public boolean f2889c = false;

        public b(byte b) {
        }
    }

    public HttpsDecisionUtil() {
        C1219q0.m2507c(TextUtils.isDigitsOnly("HttpsDecisionUtil") ? "SPUtil" : "HttpsDecisionUtil");
    }

    /* renamed from: a */
    public final void m2020a(Context context) {
        if (this.f2885a == null) {
            this.f2885a = new b((byte) 0);
        }
        this.f2885a.f2888b = C1170o1.m2424f(context, "open_common", "a3", true);
        b bVar = this.f2885a;
        if (bVar == null) {
            throw null;
        }
        if (context != null && bVar.f2887a <= 0) {
            bVar.f2887a = context.getApplicationContext().getApplicationInfo().targetSdkVersion;
        }
        AdiuManager.m5252a(context).m5253a();
    }
}
