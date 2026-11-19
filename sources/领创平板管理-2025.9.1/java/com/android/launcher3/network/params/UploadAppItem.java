package com.android.launcher3.network.params;

/* loaded from: classes.dex */
public class UploadAppItem {
    public String appname;
    public int isWhiteApp;
    public int issystemapp;
    public String packagename;
    public int versioncode;
    public String versionname;

    public String getAppname() {
        return this.appname;
    }

    public int getIsWhiteApp() {
        return this.isWhiteApp;
    }

    public int getIssystemapp() {
        return this.issystemapp;
    }

    public String getPackagename() {
        return this.packagename;
    }

    public int getVersioncode() {
        return this.versioncode;
    }

    public String getVersionname() {
        return this.versionname;
    }

    public void setAppname(String str) {
        this.appname = str;
    }

    public void setIsWhiteApp(int i) {
        this.isWhiteApp = i;
    }

    public void setIssystemapp(int i) {
        this.issystemapp = i;
    }

    public void setPackagename(String str) {
        this.packagename = str;
    }

    public void setVersioncode(int i) {
        this.versioncode = i;
    }

    public void setVersionname(String str) {
        this.versionname = str;
    }
}
