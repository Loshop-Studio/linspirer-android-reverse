package com.huawei.hem;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingTimeout.java */
/* renamed from: com.huawei.hem.nn */
/* loaded from: classes.dex */
public class C1167nn extends C0862bo {

    /* renamed from: e */
    public C0862bo f3363e;

    public C1167nn(C0862bo c0862bo) {
        if (c0862bo == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f3363e = c0862bo;
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: a */
    public C0862bo mo1426a() {
        return this.f3363e.mo1426a();
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: b */
    public C0862bo mo1427b() {
        return this.f3363e.mo1427b();
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: c */
    public long mo1428c() {
        return this.f3363e.mo1428c();
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: d */
    public C0862bo mo1429d(long j) {
        return this.f3363e.mo1429d(j);
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: e */
    public boolean mo1430e() {
        return this.f3363e.mo1430e();
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: f */
    public void mo1431f() throws InterruptedIOException {
        this.f3363e.mo1431f();
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: g */
    public C0862bo mo1432g(long j, TimeUnit timeUnit) {
        return this.f3363e.mo1432g(j, timeUnit);
    }
}
