package com.android.launcher3.network.params;

import android.content.Context;
import com.huawei.hem.LauncherDeviceUtils;

/* loaded from: classes.dex */
public class Params {
    public String email;
    public String model;
    public String swdid;

    public Params(Context context) {
        setModel(LauncherDeviceUtils.m1589f());
        setSwdid(LauncherDeviceUtils.m1593j(context));
    }

    public String getEmail() {
        return this.email;
    }

    public String getModel() {
        return this.model;
    }

    public String getSwdid() {
        return this.swdid;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setSwdid(String str) {
        this.swdid = str;
    }
}
