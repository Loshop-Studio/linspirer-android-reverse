package com.huawei.hem;

import android.content.Context;

/* compiled from: HuaweiEmui5Impl.java */
/* renamed from: com.huawei.hem.ud */
/* loaded from: classes.dex */
public class HuaweiEmui5Impl extends HuaweiBaseChildImpl {

    /* renamed from: o */
    public static HuaweiEmui5Impl f3862o;

    public HuaweiEmui5Impl(Context context, Class cls) {
        super(context, cls);
    }

    @Override // com.huawei.hem.C1207pd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("HuaweiEmui5Impl ----system init start");
        mo2616V0(str, null);
        super.mo1313O(str, str2);
        try {
            HuaweiBaseImpl.f3525f.setDefaultLauncher(HuaweiBaseImpl.f3522c, str, str2);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui5Impl  -- setDefaultLauncher-error:"));
        }
        LTKDateUtil.m1403m("HuaweiEmui5Impl  -- system init end");
    }
}
