package com.huawei.updatesdk.service.appmgr.bean;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.huawei.updatesdk.p034a.p035a.p040d.UpdateStringEncoding;
import com.huawei.updatesdk.p034a.p035a.p040d.UpdateByteHexEncoder;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateJsonBean;
import com.huawei.updatesdk.p048b.p049a.p050a.InstalledApkDigestCache;
import com.huawei.updatesdk.p048b.p049a.p051b.PackageKeySetReader;
import com.huawei.updatesdk.p048b.p058h.UpdatePackageInfo;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class Param extends UpdateJsonBean {
    public String fSha2_;
    public int isPre_;
    public List<String> keySets_;
    public int maple_;
    public String oldVersion_;
    public String package_;
    public String sSha2_;
    public int targetSdkVersion_;
    public int versionCode_;

    public Param() {
    }

    public Param(PackageInfo packageInfo) {
        this.package_ = packageInfo.packageName;
        this.versionCode_ = packageInfo.versionCode;
        String str = packageInfo.versionName;
        this.oldVersion_ = str == null ? "null" : str;
        this.targetSdkVersion_ = packageInfo.applicationInfo.targetSdkVersion;
        this.isPre_ = UpdatePackageInfo.m3758a(packageInfo);
        this.maple_ = UpdatePackageInfo.m3759a(this.package_);
        this.keySets_ = PackageKeySetReader.m3658a().m3661a(packageInfo);
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null && signatureArr.length > 0) {
            setApkSignature(signatureArr[0].toCharsString());
        }
        this.fSha2_ = InstalledApkDigestCache.m3648a().m3649a(packageInfo);
    }

    public void setApkFileSha256(String str) {
        this.fSha2_ = str;
    }

    public void setApkSignature(String str) {
        String strM3538b = UpdateStringEncoding.m3538b(UpdateByteHexEncoder.m3519a(UpdateStringEncoding.m3539c(str)));
        if (TextUtils.isEmpty(strM3538b)) {
            return;
        }
        this.sSha2_ = strM3538b.toLowerCase(Locale.getDefault());
    }

    public void setMapleState(int i) {
        this.maple_ = i;
    }

    public void setPackageName(String str) {
        this.package_ = str;
    }

    public void setTargetSdkVersion(int i) {
        this.targetSdkVersion_ = i;
    }

    public void setVersionCode(int i) {
        this.versionCode_ = i;
    }

    public void setVersionName(String str) {
        this.oldVersion_ = str;
    }
}
