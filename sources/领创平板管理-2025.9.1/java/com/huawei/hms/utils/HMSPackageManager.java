package com.huawei.hms.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.huawei.hem.C0948f6;
import com.huawei.hms.device.C1546a;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.PackageManagerHelper;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class HMSPackageManager {

    /* renamed from: f */
    public static HMSPackageManager f4604f;

    /* renamed from: g */
    public static final Object f4605g = new Object();

    /* renamed from: h */
    public static final Object f4606h = new Object();

    /* renamed from: a */
    public final Context f4607a;

    /* renamed from: b */
    public final PackageManagerHelper f4608b;

    /* renamed from: c */
    public String f4609c;

    /* renamed from: d */
    public String f4610d;

    /* renamed from: e */
    public int f4611e;

    public HMSPackageManager(Context context) {
        this.f4607a = context;
        this.f4608b = new PackageManagerHelper(context);
    }

    public static HMSPackageManager getInstance(Context context) {
        synchronized (f4605g) {
            if (f4604f == null) {
                if (context.getApplicationContext() != null) {
                    f4604f = new HMSPackageManager(context.getApplicationContext());
                } else {
                    f4604f = new HMSPackageManager(context);
                }
                f4604f.m3495b();
            }
        }
        return f4604f;
    }

    /* renamed from: a */
    public final Pair<String, String> m3493a() {
        List<ResolveInfo> listQueryIntentServices = this.f4607a.getPackageManager().queryIntentServices(new Intent("com.huawei.hms.core.aidlservice"), 128);
        if (listQueryIntentServices.size() == 0) {
            return null;
        }
        Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = it.next().serviceInfo;
            String str = serviceInfo.applicationInfo.packageName;
            Bundle bundle = serviceInfo.metaData;
            if (bundle == null) {
                HMSLog.m3461e("HMSPackageManager", "skip package " + str + " for metadata is null");
            } else if (!bundle.containsKey("hms_app_signer")) {
                HMSLog.m3461e("HMSPackageManager", "skip package " + str + " for no signer");
            } else if (bundle.containsKey("hms_app_cert_chain")) {
                String packageSignature = this.f4608b.getPackageSignature(str);
                if (m3494a(C0948f6.m1761f(str, "&", packageSignature), bundle.getString("hms_app_signer"), bundle.getString("hms_app_cert_chain"))) {
                    return new Pair<>(str, packageSignature);
                }
                HMSLog.m3461e("HMSPackageManager", "checkSinger failed");
            } else {
                HMSLog.m3461e("HMSPackageManager", "skip package " + str + " for no cert chain");
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m3495b() {
        synchronized (f4606h) {
            Pair<String, String> pairM3493a = m3493a();
            if (pairM3493a == null) {
                HMSLog.m3461e("HMSPackageManager", "Failed to find HMS apk");
                this.f4609c = null;
                this.f4610d = null;
                this.f4611e = 0;
                return;
            }
            this.f4609c = (String) pairM3493a.first;
            this.f4610d = (String) pairM3493a.second;
            this.f4611e = this.f4608b.getPackageVersionCode(getHMSPackageName());
            HMSLog.m3463i("HMSPackageManager", "Succeed to find HMS apk: " + this.f4609c + " version: " + this.f4611e);
        }
    }

    /* renamed from: c */
    public final boolean m3496c() {
        PackageManager packageManager = this.f4607a.getPackageManager();
        if (packageManager == null) {
            HMSLog.m3461e("HMSPackageManager", "In isMinApkVersionEffective, Failed to get 'PackageManager' instance.");
            return true;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(getHMSPackageName(), 128).applicationInfo;
            if (applicationInfo != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("com.huawei.hms.kit.api_level:hmscore") && (getHmsVersionCode() >= 50000000 || getHmsVersionCode() <= 19999999)) {
                HMSLog.m3463i("HMSPackageManager", "MinApkVersion is disabled.");
                return false;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.m3461e("HMSPackageManager", "In isMinApkVersionEffective, Failed to read meta data for HMSCore API level.");
        }
        return true;
    }

    public String getHMSFingerprint() {
        String str = this.f4610d;
        return str == null ? "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05" : str;
    }

    public String getHMSPackageName() {
        refresh();
        String str = this.f4609c;
        if (str != null) {
            if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f4608b.getPackageStates(str))) {
                HMSLog.m3463i("HMSPackageManager", "The package name is not installed and needs to be refreshed again");
                m3495b();
            }
            String str2 = this.f4609c;
            if (str2 != null) {
                return str2;
            }
        }
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f4608b.getPackageStates("com.huawei.hwid")) || this.f4608b.getPackageSignature("com.huawei.hwid").equalsIgnoreCase("B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05")) {
        }
        return "com.huawei.hwid";
    }

    public PackageManagerHelper.PackageStates getHMSPackageStates() {
        if (TextUtils.isEmpty(this.f4609c) || TextUtils.isEmpty(this.f4610d)) {
            m3495b();
            return this.f4608b.getPackageStates(this.f4609c);
        }
        PackageManagerHelper.PackageStates packageStates = this.f4608b.getPackageStates(this.f4609c);
        return (packageStates != PackageManagerHelper.PackageStates.ENABLED || this.f4610d.equals(this.f4608b.getPackageSignature(this.f4609c))) ? packageStates : PackageManagerHelper.PackageStates.NOT_INSTALLED;
    }

    public int getHmsVersionCode() {
        return this.f4608b.getPackageVersionCode(getHMSPackageName());
    }

    public boolean hmsVerHigherThan(int i) {
        if (this.f4611e >= i || !m3496c()) {
            return true;
        }
        int packageVersionCode = this.f4608b.getPackageVersionCode(getHMSPackageName());
        this.f4611e = packageVersionCode;
        return packageVersionCode >= i;
    }

    public boolean isApkUpdateNecessary(int i) {
        int hmsVersionCode = getHmsVersionCode();
        HMSLog.m3463i("HMSPackageManager", "current versionCode:" + hmsVersionCode + ", minimum version requirements: " + i);
        return m3496c() && hmsVersionCode < i;
    }

    public void refresh() {
        if (TextUtils.isEmpty(this.f4609c) || TextUtils.isEmpty(this.f4610d)) {
            m3495b();
        }
    }

    /* renamed from: a */
    public final boolean m3494a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            List<X509Certificate> listM3417b = C1546a.m3417b(str3);
            if (listM3417b.size() == 0) {
                HMSLog.m3461e("HMSPackageManager", "certChain is empty");
                return false;
            }
            if (!C1546a.m3414a(C1546a.m3407a(this.f4607a), listM3417b)) {
                HMSLog.m3461e("HMSPackageManager", "failed to verify cert chain");
                return false;
            }
            X509Certificate x509Certificate = listM3417b.get(listM3417b.size() - 1);
            if (!C1546a.m3412a(x509Certificate, "Huawei CBG HMS")) {
                HMSLog.m3461e("HMSPackageManager", "CN is invalid");
                return false;
            }
            if (!C1546a.m3419b(x509Certificate, "Huawei CBG Cloud Security Signer")) {
                HMSLog.m3461e("HMSPackageManager", "OU is invalid");
                return false;
            }
            if (C1546a.m3413a(x509Certificate, str, str2)) {
                return true;
            }
            HMSLog.m3461e("HMSPackageManager", "signature is invalid: " + str);
            return false;
        }
        HMSLog.m3461e("HMSPackageManager", "args is invalid");
        return false;
    }
}
