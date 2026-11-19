package com.huawei.hem;

import com.android.launcher3.R;
import com.android.launcher3.activity.LicenseActivity;
import com.android.launcher3.view.DialogUtil;

/* compiled from: LicenseActivity.java */
/* renamed from: com.huawei.hem.l2 */
/* loaded from: classes.dex */
public class LicenseActivityResultCallback implements LicenseCallBack {

    /* renamed from: a */
    public final /* synthetic */ LicenseActivity f3149a;

    public LicenseActivityResultCallback(LicenseActivity licenseActivity) {
        this.f3149a = licenseActivity;
    }

    /* renamed from: a */
    public void m2258a() {
        LTKDateUtil.m1403m("license onCallBackFailed");
        DialogUtil.hideDialog();
        this.f3149a.f1744f.setText(R.string.submit);
        this.f3149a.f1744f.setEnabled(true);
    }

    /* renamed from: b */
    public void m2259b() {
        LTKDateUtil.m1403m("license onFailed");
        LicenseActivity.m1198g(this.f3149a);
    }
}
