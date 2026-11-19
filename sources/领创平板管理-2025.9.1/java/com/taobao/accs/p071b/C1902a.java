package com.taobao.accs.p071b;

import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.b.a */
/* loaded from: classes.dex */
public class C1902a {

    /* renamed from: a */
    public static C1902a f6056a;

    /* renamed from: b */
    public ClassLoader f6057b = null;

    /* renamed from: c */
    public boolean f6058c = false;

    /* renamed from: a */
    public static synchronized C1902a m5469a() {
        if (f6056a == null) {
            f6056a = new C1902a();
        }
        return f6056a;
    }

    /* renamed from: b */
    public synchronized ClassLoader m5470b() {
        if (this.f6057b == null) {
            ALog.m5726d("ACCSClassLoader", "getClassLoader", new Object[0]);
            this.f6057b = C1902a.class.getClassLoader();
        }
        return this.f6057b;
    }
}
