package com.android.launcher3.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.KeyEvent;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.R;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C1424y5;
import com.huawei.hem.license.HemLicenseManager;
import com.huawei.hem.license.HemLicenseStatusListener;

/* loaded from: classes.dex */
public class GuidActivity extends Activity {

    /* renamed from: a */
    public HemLicenseManager f1739a;

    /* renamed from: a */
    public final void m1194a() {
        C0850bc.m1403m("GuidActivity  first used must init again");
        GuardSecureApplication.f1640b.m1162d();
        C0850bc.m1403m("default disable usb status:");
        C1424y5.b.f4202a.m3071t0(0);
        C0850bc.f2294f.disableUsb();
        setResult(-1);
        finish();
    }

    /* renamed from: b */
    public void m1195b(int i, String str) {
        C0850bc.m1403m("GuidActivity  -- hem msg = " + str + " -- msgCode = " + i);
        if (i != 2000) {
            C0850bc.m1413w(this, "设备可能操作过解除管控，先恢复管控！msg:" + str + "  errorcode:" + i, 1);
        }
        setResult(-1);
        finish();
    }

    /* renamed from: c */
    public void m1196c(int i, String str) {
        C0850bc.m1403m("GuidActivity  -- hem msg = " + str + " -- msgCode = " + i);
        if (i == 2000) {
            m1194a();
            return;
        }
        C0850bc.m1413w(this, "msg:" + str + "  errorcode:" + i, 1);
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_guide);
        this.f1739a = HemLicenseManager.getInstance(this);
        int iMo2071p = C0850bc.f2294f.mo2071p(false);
        C0850bc.m1403m("GuidActivity  release control model" + iMo2071p);
        if (iMo2071p == 2) {
            C0850bc.m1403m("GuidActivity  release control model");
            this.f1739a.setStatusListener(new HemLicenseStatusListener() { // from class: com.huawei.hem.b2
                @Override // com.huawei.hem.license.HemLicenseStatusListener
                public final void onStatus(int i, String str) {
                    this.f2268a.m1195b(i, str);
                }
            });
            this.f1739a.deActiveLicense();
        } else {
            C0850bc.f2294f.mo2056R(1);
            this.f1739a.setStatusListener(new HemLicenseStatusListener() { // from class: com.huawei.hem.a2
                @Override // com.huawei.hem.license.HemLicenseStatusListener
                public final void onStatus(int i, String str) {
                    this.f2163a.m1196c(i, str);
                }
            });
            this.f1739a.activeLicense();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
