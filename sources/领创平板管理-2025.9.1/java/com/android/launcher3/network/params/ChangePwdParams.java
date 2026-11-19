package com.android.launcher3.network.params;

import android.content.Context;

/* loaded from: classes.dex */
public class ChangePwdParams extends Params {
    public String email;
    public String oldpassword;
    public String password;

    public ChangePwdParams(Context context) {
        super(context);
    }

    @Override // com.android.launcher3.network.params.Params
    public String getEmail() {
        return this.email;
    }

    public String getOldpassword() {
        return this.oldpassword;
    }

    public String getPassword() {
        return this.password;
    }

    @Override // com.android.launcher3.network.params.Params
    public void setEmail(String str) {
        this.email = str;
    }

    public void setOldpassword(String str) {
        this.oldpassword = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }
}
