package com.huawei.updatesdk.service.otaupdate;

import android.content.Intent;

/* renamed from: com.huawei.updatesdk.service.otaupdate.d */
/* loaded from: classes.dex */
public class C1674d {

    /* renamed from: b */
    public static final Object f4788b = new Object();

    /* renamed from: c */
    public static C1674d f4789c;

    /* renamed from: a */
    public CheckUpdateCallBack f4790a;

    /* renamed from: a */
    public static C1674d m3873a() {
        C1674d c1674d;
        synchronized (f4788b) {
            if (f4789c == null) {
                f4789c = new C1674d();
            }
            c1674d = f4789c;
        }
        return c1674d;
    }

    /* renamed from: a */
    public void m3874a(int i) {
        CheckUpdateCallBack checkUpdateCallBack = this.f4790a;
        if (checkUpdateCallBack != null) {
            checkUpdateCallBack.onMarketStoreError(i);
        }
    }

    /* renamed from: a */
    public void m3875a(Intent intent) {
        CheckUpdateCallBack checkUpdateCallBack = this.f4790a;
        if (checkUpdateCallBack != null) {
            checkUpdateCallBack.onMarketInstallInfo(intent);
        }
    }

    /* renamed from: a */
    public void m3876a(CheckUpdateCallBack checkUpdateCallBack) {
        this.f4790a = checkUpdateCallBack;
    }

    /* renamed from: b */
    public void m3877b(Intent intent) {
        CheckUpdateCallBack checkUpdateCallBack = this.f4790a;
        if (checkUpdateCallBack != null) {
            checkUpdateCallBack.onUpdateInfo(intent);
        }
    }
}
