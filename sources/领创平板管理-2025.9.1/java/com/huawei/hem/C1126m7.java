package com.huawei.hem;

import android.util.Log;

/* renamed from: com.huawei.hem.m7 */
/* loaded from: classes.dex */
public class C1126m7 {

    /* renamed from: b */
    public static final C1126m7 f3241b = new C1126m7();

    /* renamed from: a */
    public boolean f3242a;

    public C1126m7() throws ClassNotFoundException {
        try {
            Class.forName("com.huawei.appgallery.log.LogAdaptor");
            this.f3242a = true;
        } catch (ClassNotFoundException unused) {
            this.f3242a = false;
        }
    }

    /* renamed from: a */
    public void m2349a(String str, String str2) {
        if (this.f3242a) {
            C1100l7.f3157a.e(str, str2);
        } else {
            Log.e(str, str2);
        }
    }

    /* renamed from: b */
    public void m2350b(String str, String str2, Throwable th) {
        if (this.f3242a) {
            C1100l7.f3157a.e(str, str2, th);
        } else {
            Log.e(str, str2, th);
        }
    }

    /* renamed from: c */
    public void m2351c(String str, String str2) {
        if (this.f3242a) {
            C1100l7.f3157a.w(str, str2);
        } else {
            Log.w(str, str2);
        }
    }
}
