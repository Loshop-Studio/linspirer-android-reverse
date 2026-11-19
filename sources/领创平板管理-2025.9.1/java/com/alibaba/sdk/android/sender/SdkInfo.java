package com.alibaba.sdk.android.sender;

import java.util.Map;

/* loaded from: classes.dex */
public class SdkInfo {

    /* renamed from: a */
    public Map<String, String> f1357a;

    /* renamed from: b */
    public String f1358b;

    /* renamed from: c */
    public String f1359c;

    /* renamed from: d */
    public String f1360d;

    /* renamed from: a */
    public String m972a() {
        return this.f1358b;
    }

    /* renamed from: b */
    public String m973b() {
        return this.f1359c;
    }

    /* renamed from: c */
    public String m974c() {
        return this.f1360d;
    }

    public SdkInfo setAppKey(String str) {
        this.f1360d = str;
        return this;
    }

    public SdkInfo setExt(Map<String, String> map) {
        this.f1357a = map;
        return this;
    }

    public SdkInfo setSdkId(String str) {
        this.f1358b = str;
        return this;
    }

    public SdkInfo setSdkVersion(String str) {
        this.f1359c = str;
        return this;
    }
}
