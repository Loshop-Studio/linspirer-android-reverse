package com.huawei.hms.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.support.log.HMSLog;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;

/* loaded from: classes.dex */
public class PackageManagerHelper {

    /* renamed from: a */
    public final PackageManager f4612a;

    public enum PackageStates {
        ENABLED,
        DISABLED,
        NOT_INSTALLED
    }

    public PackageManagerHelper(Context context) {
        this.f4612a = context.getPackageManager();
    }

    /* renamed from: a */
    public final byte[] m3499a(String str) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = this.f4612a.getPackageInfo(str, 64);
            if (packageInfo != null && packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                return packageInfo.signatures[0].toByteArray();
            }
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Failed to get application signature certificate fingerprint.");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("PackageManagerHelper", sbM1765j.toString());
        }
        HMSLog.m3461e("PackageManagerHelper", "Failed to get application signature certificate fingerprint.");
        return new byte[0];
    }

    public String getPackageSignature(String str) {
        byte[] bArrM3499a = m3499a(str);
        if (bArrM3499a == null || bArrM3499a.length == 0) {
            return null;
        }
        return HEX.encodeHexString(SHA256.digest(bArrM3499a), true);
    }

    public PackageStates getPackageStates(String str) {
        if (TextUtils.isEmpty(str)) {
            return PackageStates.NOT_INSTALLED;
        }
        try {
            return this.f4612a.getApplicationInfo(str, 0).enabled ? PackageStates.ENABLED : PackageStates.DISABLED;
        } catch (PackageManager.NameNotFoundException unused) {
            return PackageStates.NOT_INSTALLED;
        }
    }

    public int getPackageVersionCode(String str) {
        try {
            PackageInfo packageInfo = this.f4612a.getPackageInfo(str, 16);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return 0;
    }

    public String getPackageVersionName(String str) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = this.f4612a.getPackageInfo(str, 16);
            if (packageInfo != null && packageInfo.versionName != null) {
                return packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return "";
    }

    public boolean hasProvider(String str, String str2) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = this.f4612a.getPackageInfo(str, 8);
            if (packageInfo != null && packageInfo.providers != null) {
                for (ProviderInfo providerInfo : packageInfo.providers) {
                    if (str2.equals(providerInfo.authority)) {
                        return true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public boolean verifyPackageArchive(String str, String str2, String str3) throws IOException {
        PackageInfo packageArchiveInfo = this.f4612a.getPackageArchiveInfo(str, 64);
        if (packageArchiveInfo == null || packageArchiveInfo.signatures.length <= 0 || !str2.equals(packageArchiveInfo.packageName)) {
            return false;
        }
        InputStream inputStream = null;
        try {
            try {
                inputStream = IOUtils.toInputStream(packageArchiveInfo.signatures[0].toByteArray());
                return str3.equalsIgnoreCase(HEX.encodeHexString(SHA256.digest(CertificateFactory.getInstance("X.509").generateCertificate(inputStream).getEncoded()), true));
            } finally {
                IOUtils.closeQuietly((InputStream) null);
            }
        } catch (IOException | CertificateException e) {
            HMSLog.m3461e("PackageManagerHelper", "Failed to get application signature certificate fingerprint." + e.getMessage());
            return false;
        }
    }
}
