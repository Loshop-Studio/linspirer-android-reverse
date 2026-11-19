package com.huawei.hem;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingTimeout.java */
/* renamed from: com.huawei.hem.nn */
/* loaded from: classes.dex */
public class ForwardingTimeout extends Timeout {

    /* renamed from: e */
    public Timeout f3363e;

    public ForwardingTimeout(Timeout c0862bo) {
        if (c0862bo == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f3363e = c0862bo;
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: a */
    public Timeout mo1426a() {
        return this.f3363e.mo1426a();
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: b */
    public Timeout mo1427b() {
        return this.f3363e.mo1427b();
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: c */
    public long mo1428c() {
        return this.f3363e.mo1428c();
    }

    @Override // com.huawei.hem.C0862bo
    /* renamed from: d */
    public Timeout mo1429d(long j) {
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
    public Timeout mo1432g(long j, TimeUnit timeUnit) {
        return this.f3363e.mo1432g(j, timeUnit);
    }
}
