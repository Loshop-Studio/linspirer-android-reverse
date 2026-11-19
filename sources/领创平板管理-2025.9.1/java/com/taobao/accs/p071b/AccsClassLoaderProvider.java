package com.taobao.accs.p071b;

import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.b.a */
/* loaded from: classes.dex */
public class AccsClassLoaderProvider {

    /* renamed from: a */
    public static AccsClassLoaderProvider f6056a;

    /* renamed from: b */
    public ClassLoader f6057b = null;

    /* renamed from: c */
    public boolean f6058c = false;

    /* renamed from: a */
    public static synchronized AccsClassLoaderProvider m5469a() {
        if (f6056a == null) {
            f6056a = new AccsClassLoaderProvider();
        }
        return f6056a;
    }

    /* renamed from: b */
    public synchronized ClassLoader m5470b() {
        if (this.f6057b == null) {
            ALog.m5726d("ACCSClassLoader", "getClassLoader", new Object[0]);
            this.f6057b = AccsClassLoaderProvider.class.getClassLoader();
        }
        return this.f6057b;
    }
}
