package com.huawei.hem;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Timeout.java */
/* renamed from: com.huawei.hem.bo */
/* loaded from: classes.dex */
public class C0862bo {

    /* renamed from: d */
    public static final C0862bo f2312d = new a();

    /* renamed from: a */
    public boolean f2313a;

    /* renamed from: b */
    public long f2314b;

    /* renamed from: c */
    public long f2315c;

    /* compiled from: Timeout.java */
    /* renamed from: com.huawei.hem.bo$a */
    public class a extends C0862bo {
        @Override // com.huawei.hem.C0862bo
        /* renamed from: d */
        public C0862bo mo1429d(long j) {
            return this;
        }

        @Override // com.huawei.hem.C0862bo
        /* renamed from: f */
        public void mo1431f() {
        }

        @Override // com.huawei.hem.C0862bo
        /* renamed from: g */
        public C0862bo mo1432g(long j, TimeUnit timeUnit) {
            return this;
        }
    }

    /* renamed from: a */
    public C0862bo mo1426a() {
        this.f2313a = false;
        return this;
    }

    /* renamed from: b */
    public C0862bo mo1427b() {
        this.f2315c = 0L;
        return this;
    }

    /* renamed from: c */
    public long mo1428c() {
        if (this.f2313a) {
            return this.f2314b;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: d */
    public C0862bo mo1429d(long j) {
        this.f2313a = true;
        this.f2314b = j;
        return this;
    }

    /* renamed from: e */
    public boolean mo1430e() {
        return this.f2313a;
    }

    /* renamed from: f */
    public void mo1431f() throws InterruptedIOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f2313a && this.f2314b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    /* renamed from: g */
    public C0862bo mo1432g(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(C0948f6.m1755M("timeout < 0: ", j));
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f2315c = timeUnit.toNanos(j);
        return this;
    }
}
