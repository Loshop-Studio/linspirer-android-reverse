package com.android.launcher3.network.params;

import android.content.Context;
import com.huawei.hem.C0850bc;

/* loaded from: classes.dex */
public class TacticsParams extends Params {
    public String android_id;
    public String launcher_version;

    public TacticsParams(Context context) {
        super(context);
        setLauncher_version(C0850bc.m1398h("com.android.launcher3", context));
    }

    public String getAndroid_id() {
        return this.android_id;
    }

    public String getLauncher_version() {
        return this.launcher_version;
    }

    public void setAndroid_id(String str) {
        this.android_id = str;
    }

    public void setLauncher_version(String str) {
        this.launcher_version = str;
    }
}
