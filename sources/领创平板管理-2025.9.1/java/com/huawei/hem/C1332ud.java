package com.huawei.hem;

import android.content.Context;

/* compiled from: HuaweiEmui5Impl.java */
/* renamed from: com.huawei.hem.ud */
/* loaded from: classes.dex */
public class C1332ud extends C1207pd {

    /* renamed from: o */
    public static C1332ud f3862o;

    public C1332ud(Context context, Class cls) {
        super(context, cls);
    }

    @Override // com.huawei.hem.C1207pd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        C0850bc.m1403m("HuaweiEmui5Impl ----system init start");
        mo2616V0(str, null);
        super.mo1313O(str, str2);
        try {
            C1232qd.f3525f.setDefaultLauncher(C1232qd.f3522c, str, str2);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui5Impl  -- setDefaultLauncher-error:"));
        }
        C0850bc.m1403m("HuaweiEmui5Impl  -- system init end");
    }
}
