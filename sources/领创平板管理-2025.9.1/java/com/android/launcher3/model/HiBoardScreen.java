package com.android.launcher3.model;

import com.android.launcher3.p027db.model.ScreenPartSettings;
import java.util.List;

/* loaded from: classes.dex */
public class HiBoardScreen {
    public String logo_path;
    public List<ScreenPartSettings> module_setting;

    public String getLogo_path() {
        return this.logo_path;
    }

    public List<ScreenPartSettings> getModule_setting() {
        return this.module_setting;
    }

    public void setLogo_path(String str) {
        this.logo_path = str;
    }

    public void setModule_setting(List<ScreenPartSettings> list) {
        this.module_setting = list;
    }
}
