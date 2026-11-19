package com.huawei.updatesdk.service.otaupdate;

import android.text.TextUtils;
import com.huawei.hms.common.PackageConstants;

/* renamed from: com.huawei.updatesdk.service.otaupdate.f */
/* loaded from: classes.dex */
public class MarketStoreOptions {

    /* renamed from: e */
    public static MarketStoreOptions f4799e = new MarketStoreOptions();

    /* renamed from: a */
    public String f4800a;

    /* renamed from: b */
    public String f4801b;

    /* renamed from: c */
    public String f4802c = PackageConstants.SERVICES_PACKAGE_APPMARKET;

    /* renamed from: d */
    public String f4803d;

    /* renamed from: f */
    public static MarketStoreOptions m3889f() {
        return f4799e;
    }

    /* renamed from: a */
    public String m3890a() {
        return !TextUtils.isEmpty(this.f4800a) ? this.f4800a : this.f4801b;
    }

    /* renamed from: a */
    public void m3891a(String str) {
        this.f4801b = str;
    }

    /* renamed from: b */
    public String m3892b() {
        return this.f4800a;
    }

    /* renamed from: b */
    public void m3893b(String str) {
        this.f4800a = str;
    }

    /* renamed from: c */
    public String m3894c() {
        return this.f4802c;
    }

    /* renamed from: c */
    public void m3895c(String str) {
        this.f4803d = str;
    }

    /* renamed from: d */
    public void m3896d(String str) {
        this.f4802c = str;
    }

    /* renamed from: d */
    public boolean m3897d() {
        String str = this.f4800a;
        if (str != null) {
            return str.equals(this.f4801b);
        }
        return true;
    }

    /* renamed from: e */
    public boolean m3898e() {
        return TextUtils.equals(this.f4803d, "AppTouch");
    }
}
