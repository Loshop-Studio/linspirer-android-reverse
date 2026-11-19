package com.alibaba.sdk.android.ams.common.p007a;

import android.app.Application;
import android.content.Context;

/* renamed from: com.alibaba.sdk.android.ams.common.a.b */
/* loaded from: classes.dex */
public class C0495b {
    /* renamed from: a */
    public static void m476a(Application application) {
        if (application == null) {
            return;
        }
        C0494a.f841b = application;
    }

    /* renamed from: a */
    public static void m477a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("null applicationContext!");
        }
        C0494a.f840a = context;
    }

    /* renamed from: a */
    public static void m478a(boolean z) {
        C0494a.f842c = z;
    }
}
