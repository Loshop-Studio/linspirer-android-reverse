package com.huawei.hms.support.api.client;

import android.os.Bundle;

/* loaded from: classes.dex */
public class BundleResult {

    /* renamed from: a */
    public int f4552a;

    /* renamed from: b */
    public Bundle f4553b;

    public BundleResult(int i, Bundle bundle) {
        this.f4552a = i;
        this.f4553b = bundle;
    }

    public int getResultCode() {
        return this.f4552a;
    }

    public Bundle getRspBody() {
        return this.f4553b;
    }

    public void setResultCode(int i) {
        this.f4552a = i;
    }

    public void setRspBody(Bundle bundle) {
        this.f4553b = bundle;
    }
}
