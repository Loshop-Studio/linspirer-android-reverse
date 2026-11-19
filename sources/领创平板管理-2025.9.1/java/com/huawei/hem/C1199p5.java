package com.huawei.hem;

import com.android.launcher3.GuardSecureApplication;

/* compiled from: AppUploadSPHelper.java */
/* renamed from: com.huawei.hem.p5 */
/* loaded from: classes.dex */
public class C1199p5 {

    /* renamed from: a */
    public String f3434a;

    /* renamed from: b */
    public int f3435b = -1;

    /* renamed from: c */
    public C0824ac f3436c = new C0824ac(GuardSecureApplication.f1640b, "Ltk");

    /* compiled from: AppUploadSPHelper.java */
    /* renamed from: com.huawei.hem.p5$b */
    public static class b {

        /* renamed from: a */
        public static final C1199p5 f3437a = new C1199p5(null);
    }

    public C1199p5(a aVar) {
    }

    /* renamed from: a */
    public void m2460a(int i) {
        this.f3435b = i;
        C0824ac c0824ac = this.f3436c;
        c0824ac.f2200b.putInt("app_status_changed", i);
        c0824ac.f2200b.commit();
    }
}
