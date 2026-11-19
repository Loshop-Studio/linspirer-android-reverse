package com.huawei.hem.license;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.huawei.hem.AbstractC1276s7;
import com.huawei.hem.AbstractC1376w7;
import com.huawei.hem.C1176o7;
import com.huawei.hem.C1201p7;
import com.huawei.hem.C1226q7;
import com.huawei.hem.C1251r7;
import com.huawei.hem.annotation.OuterVisible;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.HuaweiApi;
import org.json.JSONObject;

@OuterVisible
/* loaded from: classes.dex */
public class HemLicenseManager extends HuaweiApi<C1201p7> {

    /* renamed from: c */
    public static final byte[] f3190c = new byte[0];

    /* renamed from: d */
    public static final Api<C1201p7> f3191d = new Api<>("HuaweiHem.API");

    /* renamed from: e */
    public static final C1176o7 f3192e = new C1176o7();

    /* renamed from: f */
    public static HemLicenseManager f3193f;

    /* renamed from: a */
    public Context f3194a;

    /* renamed from: b */
    public HemLicenseStatusListener f3195b;

    /* renamed from: com.huawei.hem.license.HemLicenseManager$a */
    public class C1112a extends BroadcastReceiver {
        public C1112a(byte b) {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                try {
                    int intExtra = intent.getIntExtra("licenseOperationResult", 1000);
                    if (HemLicenseManager.this.f3195b != null) {
                        HemLicenseManager.this.f3195b.onStatus(intExtra, C1251r7.m2655a(intExtra));
                    }
                } catch (Throwable th) {
                    AbstractC1276s7.m2682a("HemLicenseManager", "rec: " + th.getClass().getSimpleName());
                }
            }
        }
    }

    public HemLicenseManager(Context context) {
        super(context, f3191d, new C1201p7(), f3192e);
        this.f3194a = context;
        try {
            this.f3194a.registerReceiver(new C1112a((byte) 0), new IntentFilter("com.huawei.hem.license.operation"), "com.huawei.hms.permission.signatureOrSystem", null);
        } catch (Throwable unused) {
            AbstractC1276s7.f3669a.m2723a(6, "HemLicenseManager", "hem register broadcast error");
        }
    }

    @OuterVisible
    public static HemLicenseManager getInstance(Context context) {
        HemLicenseManager hemLicenseManager;
        synchronized (f3190c) {
            if (f3193f == null) {
                HemLicenseManager hemLicenseManager2 = new HemLicenseManager(context);
                f3193f = hemLicenseManager2;
                hemLicenseManager2.setApiLevel(1);
                f3193f.setKitSdkVersion(10000102);
            }
            hemLicenseManager = f3193f;
        }
        return hemLicenseManager;
    }

    @OuterVisible
    public AbstractC1376w7<Integer> activeLicense() {
        try {
            C1226q7 c1226q7 = new C1226q7("hem.licenseActivate", new JSONObject().toString());
            c1226q7.f3492a = this.f3195b;
            return doWrite(c1226q7);
        } catch (Throwable th) {
            AbstractC1276s7.m2682a("HemLicenseManager", "licenseActivate failed: " + th.getClass().getSimpleName());
            return null;
        }
    }

    @OuterVisible
    public AbstractC1376w7<Integer> deActiveLicense() {
        try {
            C1226q7 c1226q7 = new C1226q7("hem.licenseDeActivate", new JSONObject().toString());
            c1226q7.f3492a = this.f3195b;
            return doWrite(c1226q7);
        } catch (Throwable th) {
            AbstractC1276s7.m2682a("HemLicenseManager", "licenseDeActivate failed: " + th.getClass().getSimpleName());
            return null;
        }
    }

    @OuterVisible
    public void setStatusListener(HemLicenseStatusListener hemLicenseStatusListener) {
        this.f3195b = hemLicenseStatusListener;
    }
}
