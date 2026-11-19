package com.huawei.hms.availableupdate;

/* compiled from: UpdateInfo.java */
/* renamed from: com.huawei.hms.availableupdate.g */
/* loaded from: classes.dex */
public class UpdateInfo {

    /* renamed from: a */
    public int f4478a;

    /* renamed from: b */
    public String f4479b;

    /* renamed from: c */
    public String f4480c;

    /* renamed from: d */
    public int f4481d;

    /* renamed from: e */
    public String f4482e;

    public UpdateInfo(String str, int i, String str2, int i2, String str3) {
        this.f4478a = 0;
        this.f4479b = "";
        this.f4480c = "";
        this.f4481d = 0;
        this.f4482e = "";
        this.f4479b = str;
        this.f4478a = i;
        this.f4480c = str2;
        this.f4481d = i2;
        this.f4482e = str3;
    }

    /* renamed from: a */
    public boolean m3316a() {
        String str;
        return this.f4478a > 0 && this.f4481d > 0 && (str = this.f4480c) != null && !str.isEmpty();
    }
}
