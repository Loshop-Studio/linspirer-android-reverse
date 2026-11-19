package com.huawei.updatesdk.p048b.p053c;

import android.os.Build;
import android.text.TextUtils;
import java.util.List;

/* renamed from: com.huawei.updatesdk.b.c.c */
/* loaded from: classes.dex */
public abstract class AbstractC1618c {

    /* renamed from: a */
    public String f4687a;

    /* renamed from: b */
    public String f4688b;

    /* renamed from: a */
    public abstract String mo3684a();

    /* renamed from: b */
    public abstract int mo3685b();

    /* renamed from: c */
    public abstract String mo3686c();

    /* renamed from: d */
    public abstract String mo3687d();

    /* renamed from: e */
    public String m3694e() {
        if (!TextUtils.isEmpty(this.f4688b)) {
            return this.f4688b;
        }
        String strMo3686c = mo3686c();
        this.f4688b = strMo3686c;
        if (TextUtils.isEmpty(strMo3686c)) {
            this.f4688b = Build.MANUFACTURER;
        }
        return this.f4688b;
    }

    /* renamed from: f */
    public String m3695f() {
        if (!TextUtils.isEmpty(this.f4687a)) {
            return this.f4687a;
        }
        String strMo3687d = mo3687d();
        this.f4687a = strMo3687d;
        if (TextUtils.isEmpty(strMo3687d)) {
            this.f4687a = Build.MODEL;
        }
        return this.f4687a;
    }

    /* renamed from: g */
    public abstract List<String> mo3688g();
}
