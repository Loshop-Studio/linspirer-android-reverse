package com.huawei.hem;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: AsyncTimeout.java */
/* renamed from: com.huawei.hem.fn */
/* loaded from: classes.dex */
public class C0965fn extends C0862bo {

    /* renamed from: h */
    public static final long f2700h = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: i */
    public static final long f2701i = TimeUnit.MILLISECONDS.toNanos(f2700h);

    /* renamed from: j */
    @Nullable
    public static C0965fn f2702j;

    /* renamed from: e */
    public boolean f2703e;

    /* renamed from: f */
    @Nullable
    public C0965fn f2704f;

    /* renamed from: g */
    public long f2705g;

    /* compiled from: AsyncTimeout.java */
    /* renamed from: com.huawei.hem.fn$a */
    public static final class a extends Thread {
        public a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0015, code lost:
        
            r1.mo1841m();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<com.huawei.hem.fn> r0 = com.huawei.hem.C0965fn.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                com.huawei.hem.fn r1 = com.huawei.hem.C0965fn.m1836h()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                com.huawei.hem.fn r2 = com.huawei.hem.C0965fn.f2702j     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                com.huawei.hem.C0965fn.f2702j = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.mo1841m()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                throw r1     // Catch: java.lang.InterruptedException -> L0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0965fn.a.run():void");
        }
    }

    @Nullable
    /* renamed from: h */
    public static C0965fn m1836h() throws InterruptedException {
        C0965fn c0965fn = f2702j.f2704f;
        if (c0965fn == null) {
            long jNanoTime = System.nanoTime();
            C0965fn.class.wait(f2700h);
            if (f2702j.f2704f != null || System.nanoTime() - jNanoTime < f2701i) {
                return null;
            }
            return f2702j;
        }
        long jNanoTime2 = c0965fn.f2705g - System.nanoTime();
        if (jNanoTime2 > 0) {
            long j = jNanoTime2 / 1000000;
            C0965fn.class.wait(j, (int) (jNanoTime2 - (1000000 * j)));
            return null;
        }
        f2702j.f2704f = c0965fn.f2704f;
        c0965fn.f2704f = null;
        return c0965fn;
    }

    /* renamed from: i */
    public final void m1837i() {
        if (this.f2703e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long j = this.f2315c;
        boolean z = this.f2313a;
        if (j != 0 || z) {
            this.f2703e = true;
            synchronized (C0965fn.class) {
                if (f2702j == null) {
                    f2702j = new C0965fn();
                    new a().start();
                }
                long jNanoTime = System.nanoTime();
                if (j != 0 && z) {
                    this.f2705g = Math.min(j, mo1428c() - jNanoTime) + jNanoTime;
                } else if (j != 0) {
                    this.f2705g = j + jNanoTime;
                } else {
                    if (!z) {
                        throw new AssertionError();
                    }
                    this.f2705g = mo1428c();
                }
                long j2 = this.f2705g - jNanoTime;
                C0965fn c0965fn = f2702j;
                while (c0965fn.f2704f != null && j2 >= c0965fn.f2704f.f2705g - jNanoTime) {
                    c0965fn = c0965fn.f2704f;
                }
                this.f2704f = c0965fn.f2704f;
                c0965fn.f2704f = this;
                if (c0965fn == f2702j) {
                    C0965fn.class.notify();
                }
            }
        }
    }

    /* renamed from: j */
    public final void m1838j(boolean z) throws IOException {
        if (m1839k() && z) {
            throw mo1840l(null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        r2.f2704f = r4.f2704f;
        r4.f2704f = null;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1839k() {
        /*
            r4 = this;
            boolean r0 = r4.f2703e
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r4.f2703e = r1
            java.lang.Class<com.huawei.hem.fn> r0 = com.huawei.hem.C0965fn.class
            monitor-enter(r0)
            com.huawei.hem.fn r2 = com.huawei.hem.C0965fn.f2702j     // Catch: java.lang.Throwable -> L22
        Ld:
            if (r2 == 0) goto L1f
            com.huawei.hem.fn r3 = r2.f2704f     // Catch: java.lang.Throwable -> L22
            if (r3 != r4) goto L1c
            com.huawei.hem.fn r3 = r4.f2704f     // Catch: java.lang.Throwable -> L22
            r2.f2704f = r3     // Catch: java.lang.Throwable -> L22
            r2 = 0
            r4.f2704f = r2     // Catch: java.lang.Throwable -> L22
            monitor-exit(r0)
            goto L21
        L1c:
            com.huawei.hem.fn r2 = r2.f2704f     // Catch: java.lang.Throwable -> L22
            goto Ld
        L1f:
            r1 = 1
            monitor-exit(r0)
        L21:
            return r1
        L22:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0965fn.m1839k():boolean");
    }

    /* renamed from: l */
    public IOException mo1840l(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: m */
    public void mo1841m() {
    }
}
