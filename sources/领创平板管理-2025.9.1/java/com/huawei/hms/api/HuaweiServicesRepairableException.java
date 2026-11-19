package com.huawei.hms.api;

import android.content.Intent;

/* loaded from: classes.dex */
public class HuaweiServicesRepairableException extends UserRecoverableException {

    /* renamed from: b */
    public final int f4419b;

    public HuaweiServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.f4419b = i;
    }

    public int getConnectionStatusCode() {
        return this.f4419b;
    }
}
