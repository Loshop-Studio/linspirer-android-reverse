package com.android.launcher3.p027db.model;

import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public class ScreenPartSettings {
    public String b_img_path;
    public String component;
    public String description;

    /* renamed from: id */
    public Long f1892id;
    public String package_name;
    public int position;
    public String title;
    public int type;
    public String url;

    public ScreenPartSettings(Long l, int i, String str, int i2, String str2, String str3, String str4, String str5, String str6) {
        this.f1892id = l;
        this.position = i;
        this.title = str;
        this.type = i2;
        this.url = str2;
        this.component = str3;
        this.package_name = str4;
        this.b_img_path = str5;
        this.description = str6;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ScreenPartSettings.class == obj.getClass() && this.position == ((ScreenPartSettings) obj).position;
    }

    public String getB_img_path() {
        return this.b_img_path;
    }

    public String getComponent() {
        return this.component;
    }

    public String getDescription() {
        return this.description;
    }

    public Long getId() {
        return this.f1892id;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public int getPosition() {
        return this.position;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setB_img_path(String str) {
        this.b_img_path = str;
    }

    public void setComponent(String str) {
        this.component = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setId(Long l) {
        this.f1892id = l;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("ScreenPartSettings{ position=");
        sbM1765j.append(this.position);
        sbM1765j.append(", title='");
        C0948f6.m1781z(sbM1765j, this.title, '\'', ", type=");
        sbM1765j.append(this.type);
        sbM1765j.append(", url='");
        C0948f6.m1781z(sbM1765j, this.url, '\'', ", component='");
        C0948f6.m1781z(sbM1765j, this.component, '\'', ", package_name='");
        C0948f6.m1781z(sbM1765j, this.package_name, '\'', ", b_img_path='");
        C0948f6.m1781z(sbM1765j, this.b_img_path, '\'', ", description='");
        sbM1765j.append(this.description);
        sbM1765j.append('\'');
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    public ScreenPartSettings() {
    }

    public ScreenPartSettings(int i, String str) {
        this.position = i;
        this.title = str;
    }
}
