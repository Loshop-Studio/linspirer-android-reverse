package com.android.launcher3.model;

import com.huawei.hem.C0948f6;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ComponentInfo implements Serializable {
    public String component;
    public String package_name;

    public String getComponent() {
        return this.component;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public void setComponent(String str) {
        this.component = str;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("ComponentInfo{package_name='");
        C0948f6.m1781z(sbM1765j, this.package_name, '\'', ", component='");
        sbM1765j.append(this.component);
        sbM1765j.append('\'');
        sbM1765j.append('}');
        return sbM1765j.toString();
    }
}
