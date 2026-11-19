package com.huawei.hms.api;

import android.content.Intent;

/* loaded from: classes.dex */
public class UserRecoverableException extends Exception {

    /* renamed from: a */
    public final Intent f4429a;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.f4429a = intent;
    }

    public Intent getIntent() {
        return new Intent(this.f4429a);
    }
}
