package com.android.launcher3.model;

import java.util.List;

/* loaded from: classes.dex */
public class ControlAppInfo {
    public List<String> disable_apps;
    public List<String> enable_apps;

    public List<String> getDisable_apps() {
        return this.disable_apps;
    }

    public List<String> getEnable_apps() {
        return this.enable_apps;
    }

    public void setDisable_apps(List<String> list) {
        this.disable_apps = list;
    }

    public void setEnable_apps(List<String> list) {
        this.enable_apps = list;
    }
}
