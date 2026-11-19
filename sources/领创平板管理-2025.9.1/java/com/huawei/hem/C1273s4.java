package com.huawei.hem;

import android.content.Context;
import com.android.launcher3.GuardSecureApplication;
import com.huawei.hem.C1424y5;

/* compiled from: EyeProtectedHelper.java */
/* renamed from: com.huawei.hem.s4 */
/* loaded from: classes.dex */
public class C1273s4 {

    /* renamed from: a */
    public int f3657a;

    /* renamed from: b */
    public C1424y5 f3658b;

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
        public static final C1273s4 f3662a = new C1273s4(null);
    }

    public C1273s4() {
        C1424y5 c1424y5 = C1424y5.b.f4202a;
        this.f3658b = c1424y5;
        this.f3657a = c1424y5.m3006A();
        this.f3660d = GuardSecureApplication.f1640b;
    }

    /* renamed from: a */
    public static synchronized C1273s4 m2677a() {
        return b.f3662a;
    }

    public C1273s4(a aVar) {
        C1424y5 c1424y5 = C1424y5.b.f4202a;
        this.f3658b = c1424y5;
        this.f3657a = c1424y5.m3006A();
        this.f3660d = GuardSecureApplication.f1640b;
    }
}
