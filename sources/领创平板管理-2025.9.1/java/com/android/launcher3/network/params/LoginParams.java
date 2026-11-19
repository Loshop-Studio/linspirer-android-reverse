package com.android.launcher3.network.params;

import android.content.Context;

/* loaded from: classes.dex */
public class LoginParams extends Params {
    public String android_id;
    public String appstore_version;
    public String launcher_version;
    public String password;
    public String rom_version;

    /* renamed from: sn */
    public String f2034sn;

    public LoginParams(Context context) {
        super(context);
    }

    public String getAndroid_id() {
        return this.android_id;
    }

    public String getAppstore_version() {
        return this.appstore_version;
    }

    public String getLauncher_version() {
        return this.launcher_version;
    }

    public String getPassword() {
        return this.password;
    }

    public String getRom_version() {
        return this.rom_version;
    }

    public String getSn() {
        return this.f2034sn;
    }

    public void setAndroid_id(String str) {
        this.android_id = str;
    }

    public void setAppstore_version(String str) {
        this.appstore_version = str;
    }

    public void setLauncher_version(String str) {
        this.launcher_version = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setRom_version(String str) {
        this.rom_version = str;
    }

    public void setSn(String str) {
        this.f2034sn = str;
    }
}
