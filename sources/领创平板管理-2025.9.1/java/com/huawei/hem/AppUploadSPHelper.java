package com.huawei.hem;

import com.android.launcher3.GuardSecureApplication;

/* compiled from: AppUploadSPHelper.java */
/* renamed from: com.huawei.hem.p5 */
/* loaded from: classes.dex */
public class AppUploadSPHelper {

    /* renamed from: a */
    public String f3434a;

    /* renamed from: b */
    public int f3435b = -1;

    /* renamed from: c */
    public DeskSPF f3436c = new DeskSPF(GuardSecureApplication.f1640b, "Ltk");

    /* compiled from: AppUploadSPHelper.java */
    /* renamed from: com.huawei.hem.p5$b */
    public static class b {

        /* renamed from: a */
        public static final AppUploadSPHelper f3437a = new AppUploadSPHelper(null);
    }

    public AppUploadSPHelper(a aVar) {
    }

    /* renamed from: a */
    public void m2460a(int i) {
        this.f3435b = i;
        DeskSPF c0824ac = this.f3436c;
        c0824ac.f2200b.putInt("app_status_changed", i);
        c0824ac.f2200b.commit();
    }
}
