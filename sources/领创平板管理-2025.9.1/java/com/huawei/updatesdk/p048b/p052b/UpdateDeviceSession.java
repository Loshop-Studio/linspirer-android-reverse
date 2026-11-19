package com.huawei.updatesdk.p048b.p052b;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.updatesdk.p034a.p043b.p044a.UpdateApplicationContext;

/* renamed from: com.huawei.updatesdk.b.b.a */
/* loaded from: classes.dex */
public final class UpdateDeviceSession {

    /* renamed from: d */
    public static final Object f4677d = new Object();

    /* renamed from: e */
    public static UpdateDeviceSession f4678e;

    /* renamed from: a */
    public UpdatePreferences f4679a;

    /* renamed from: b */
    public String f4680b;

    /* renamed from: c */
    public boolean f4681c = false;

    public UpdateDeviceSession(Context context) {
        this.f4679a = UpdatePreferences.m3678a("DeviceSessionUpdateSDK_V1", context);
    }

    /* renamed from: d */
    public static UpdateDeviceSession m3665d() {
        UpdateDeviceSession c1612a;
        synchronized (f4677d) {
            if (f4678e == null) {
                f4678e = new UpdateDeviceSession(UpdateApplicationContext.m3591c().m3592a());
            }
            c1612a = f4678e;
        }
        return c1612a;
    }

    /* renamed from: a */
    public String m3666a() {
        return this.f4680b;
    }

    /* renamed from: a */
    public String m3667a(String str) {
        return this.f4679a.m3680a("updatesdk.lastAccountZone" + str, "");
    }

    /* renamed from: a */
    public void m3668a(long j) {
        this.f4679a.m3682b("updatesdk.lastCheckDate", j);
    }

    /* renamed from: a */
    public void m3669a(String str, long j) {
        this.f4679a.m3682b("updatesdk.lastInitAccountTime" + str, j);
    }

    /* renamed from: a */
    public void m3670a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f4679a.m3683b(str, str2);
    }

    /* renamed from: b */
    public long m3671b() {
        return this.f4679a.m3679a("updatesdk.lastCheckDate", 0L);
    }

    /* renamed from: b */
    public long m3672b(String str) {
        return this.f4679a.m3679a("updatesdk.lastInitAccountTime" + str, 0L);
    }

    /* renamed from: b */
    public void m3673b(String str, String str2) {
        this.f4679a.m3683b("updatesdk.lastAccountZone" + str, str2);
    }

    /* renamed from: c */
    public String m3674c(String str) {
        return TextUtils.isEmpty(str) ? "" : this.f4679a.m3680a(str, "");
    }

    /* renamed from: c */
    public void m3675c() {
        if (this.f4681c) {
            return;
        }
        m3676d("updatesdk.sign.param");
        m3676d("updatesdk.signkey");
        m3676d("updatesdk.signtime");
        this.f4681c = true;
    }

    /* renamed from: d */
    public void m3676d(String str) {
        this.f4679a.m3681a(str);
    }

    /* renamed from: e */
    public void m3677e(String str) {
        this.f4680b = str;
    }
}
