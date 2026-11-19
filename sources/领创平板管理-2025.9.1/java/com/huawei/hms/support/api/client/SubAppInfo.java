package com.huawei.hms.support.api.client;

/* loaded from: classes.dex */
public class SubAppInfo {

    /* renamed from: a */
    public String f4557a;

    public SubAppInfo(SubAppInfo subAppInfo) {
        if (subAppInfo != null) {
            this.f4557a = subAppInfo.getSubAppID();
        }
    }

    public String getSubAppID() {
        return this.f4557a;
    }

    public void setSubAppID(String str) {
        this.f4557a = str;
    }

    public SubAppInfo(String str) {
        this.f4557a = str;
    }
}
