package com.huawei.hem;

import java.util.UUID;

/* renamed from: com.huawei.hem.s9 */
/* loaded from: classes.dex */
public class AnalyticsSessionState {

    /* renamed from: a */
    public long f3674a = 1800000;

    /* renamed from: b */
    public volatile boolean f3675b = false;

    /* renamed from: c */
    public a f3676c = null;

    /* renamed from: com.huawei.hem.s9$a */
    public class a {

        /* renamed from: a */
        public String f3677a = UUID.randomUUID().toString().replace("-", "");

        /* renamed from: b */
        public boolean f3678b;

        /* renamed from: c */
        public long f3679c;

        public a(long j) {
            this.f3677a += "_" + j;
            this.f3679c = j;
            this.f3678b = true;
            AnalyticsSessionState.this.f3675b = false;
        }

        /* renamed from: a */
        public final void m2683a(long j) {
            HiAnalyticsSdkState.m2937d("hmsSdk", "getNewSession() session is flush!");
            String string = UUID.randomUUID().toString();
            this.f3677a = string;
            this.f3677a = string.replace("-", "");
            this.f3677a += "_" + j;
            this.f3679c = j;
            this.f3678b = true;
        }
    }
}
