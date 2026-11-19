package com.huawei.updatesdk.service.appmgr.bean;

import android.text.TextUtils;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateJsonBean;

/* renamed from: com.huawei.updatesdk.service.appmgr.bean.c */
/* loaded from: classes.dex */
public class MarketPackageDetails extends UpdateJsonBean {

    @SDKNetTransmission
    public String appName;

    @SDKNetTransmission
    public String downUrl;

    @SDKNetTransmission
    public long fileSize;

    @SDKNetTransmission
    public String pkgName;

    @SDKNetTransmission
    public String sha256;

    @SDKNetTransmission
    public long versionCode;

    @SDKNetTransmission
    public String versionName;

    /* renamed from: a */
    public String m3802a() {
        return this.appName;
    }

    /* renamed from: b */
    public String m3803b() {
        return this.downUrl;
    }

    /* renamed from: c */
    public long m3804c() {
        return this.fileSize;
    }

    /* renamed from: d */
    public String m3805d() {
        return this.pkgName;
    }

    /* renamed from: e */
    public String m3806e() {
        return this.sha256;
    }

    /* renamed from: f */
    public boolean m3807f() {
        return (TextUtils.isEmpty(this.sha256) || TextUtils.isEmpty(this.downUrl) || this.fileSize <= 0) ? false : true;
    }
}
