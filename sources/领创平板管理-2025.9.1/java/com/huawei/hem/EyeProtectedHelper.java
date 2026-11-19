package com.huawei.hem;

import android.content.Context;
import com.android.launcher3.GuardSecureApplication;
import com.huawei.hem.UserInfoUtil;

/* compiled from: EyeProtectedHelper.java */
/* renamed from: com.huawei.hem.s4 */
/* loaded from: classes.dex */
public class EyeProtectedHelper {

    /* renamed from: a */
    public int f3657a;

    /* renamed from: b */
    public UserInfoUtil f3658b;

    /* renamed from: c */
    public int f3659c;

    /* renamed from: d */
    public Context f3660d;

    /* renamed from: e */
    public boolean f3661e;

    /* compiled from: EyeProtectedHelper.java */
    /* renamed from: com.huawei.hem.s4$b */
    public static class b {

        /* renamed from: a */
        public static final EyeProtectedHelper f3662a = new EyeProtectedHelper(null);
    }

    public EyeProtectedHelper() {
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        this.f3658b = c1424y5;
        this.f3657a = c1424y5.m3006A();
        this.f3660d = GuardSecureApplication.f1640b;
    }

    /* renamed from: a */
    public static synchronized EyeProtectedHelper m2677a() {
        return b.f3662a;
    }

    public EyeProtectedHelper(a aVar) {
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        this.f3658b = c1424y5;
        this.f3657a = c1424y5.m3006A();
        this.f3660d = GuardSecureApplication.f1640b;
    }
}
