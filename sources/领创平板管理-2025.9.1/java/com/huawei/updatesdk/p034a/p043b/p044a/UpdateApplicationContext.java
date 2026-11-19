package com.huawei.updatesdk.p034a.p043b.p044a;

import android.content.Context;

/* renamed from: com.huawei.updatesdk.a.b.a.a */
/* loaded from: classes.dex */
public class UpdateApplicationContext {

    /* renamed from: b */
    public static final Object f4643b = new Object();

    /* renamed from: c */
    public static UpdateApplicationContext f4644c;

    /* renamed from: a */
    public Context f4645a;

    public UpdateApplicationContext(Context context) {
        this.f4645a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static void m3590a(Context context) {
        synchronized (f4643b) {
            if (f4644c == null) {
                f4644c = new UpdateApplicationContext(context);
            }
        }
    }

    /* renamed from: c */
    public static UpdateApplicationContext m3591c() {
        UpdateApplicationContext c1598a;
        synchronized (f4643b) {
            c1598a = f4644c;
        }
        return c1598a;
    }

    /* renamed from: a */
    public Context m3592a() {
        return this.f4645a;
    }

    /* renamed from: b */
    public String m3593b() {
        Context context = this.f4645a;
        return (context == null || context.getFilesDir() == null) ? "" : this.f4645a.getFilesDir().getAbsolutePath();
    }
}
