package com.huawei.hem.license;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.huawei.hem.HmsSdkLogFacade;
import com.huawei.hem.HmsResultTaskBase;
import com.huawei.hem.HemLicenseClientBuilder;
import com.huawei.hem.HemLicenseApiOptions;
import com.huawei.hem.HemLicenseStatusCall;
import com.huawei.hem.HemLicenseStatusMessages;
import com.huawei.hem.annotation.OuterVisible;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.HuaweiApi;
import org.json.JSONObject;

@OuterVisible
/* loaded from: classes.dex */
public class HemLicenseManager extends HuaweiApi<HemLicenseApiOptions> {

    /* renamed from: c */
    public static final byte[] f3190c = new byte[0];

    /* renamed from: d */
    public static final Api<HemLicenseApiOptions> f3191d = new Api<>("HuaweiHem.API");

    /* renamed from: e */
    public static final HemLicenseClientBuilder f3192e = new HemLicenseClientBuilder();

    /* renamed from: f */
    public static HemLicenseManager f3193f;

    /* renamed from: a */
    public Context f3194a;

    /* renamed from: b */
    public HemLicenseStatusListener f3195b;

    /* renamed from: com.huawei.hem.license.HemLicenseManager$a */
    public class LicenseStatusBroadcastReceiver extends BroadcastReceiver {
        public LicenseStatusBroadcastReceiver(byte b) {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                try {
                    int intExtra = intent.getIntExtra("licenseOperationResult", 1000);
                    if (HemLicenseManager.this.f3195b != null) {
                        HemLicenseManager.this.f3195b.onStatus(intExtra, HemLicenseStatusMessages.m2655a(intExtra));
                    }
                } catch (Throwable th) {
                    HmsSdkLogFacade.m2682a("HemLicenseManager", "rec: " + th.getClass().getSimpleName());
                }
            }
        }
    }

    public HemLicenseManager(Context context) {
        super(context, f3191d, new HemLicenseApiOptions(), f3192e);
        this.f3194a = context;
        try {
            this.f3194a.registerReceiver(new LicenseStatusBroadcastReceiver((byte) 0), new IntentFilter("com.huawei.hem.license.operation"), "com.huawei.hms.permission.signatureOrSystem", null);
        } catch (Throwable unused) {
            HmsSdkLogFacade.f3669a.m2723a(6, "HemLicenseManager", "hem register broadcast error");
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
    public HmsResultTaskBase<Integer> activeLicense() {
        try {
            HemLicenseStatusCall c1226q7 = new HemLicenseStatusCall("hem.licenseActivate", new JSONObject().toString());
            c1226q7.f3492a = this.f3195b;
            return doWrite(c1226q7);
        } catch (Throwable th) {
            HmsSdkLogFacade.m2682a("HemLicenseManager", "licenseActivate failed: " + th.getClass().getSimpleName());
            return null;
        }
    }

    @OuterVisible
    public HmsResultTaskBase<Integer> deActiveLicense() {
        try {
            HemLicenseStatusCall c1226q7 = new HemLicenseStatusCall("hem.licenseDeActivate", new JSONObject().toString());
            c1226q7.f3492a = this.f3195b;
            return doWrite(c1226q7);
        } catch (Throwable th) {
            HmsSdkLogFacade.m2682a("HemLicenseManager", "licenseDeActivate failed: " + th.getClass().getSimpleName());
            return null;
        }
    }

    @OuterVisible
    public void setStatusListener(HemLicenseStatusListener hemLicenseStatusListener) {
        this.f3195b = hemLicenseStatusListener;
    }
}
