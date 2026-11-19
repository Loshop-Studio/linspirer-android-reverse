package com.huawei.hem;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: RealCall.java */
/* renamed from: com.huawei.hem.fk */
/* loaded from: classes.dex */
public final class C0962fk implements InterfaceC1087kj {

    /* renamed from: a */
    public final C0910dk f2673a;

    /* renamed from: b */
    public C1089kl f2674b;

    /* renamed from: c */
    public final C0988gk f2675c;

    /* renamed from: d */
    public final boolean f2676d;

    /* renamed from: e */
    public boolean f2677e;

    /* compiled from: RealCall.java */
    /* renamed from: com.huawei.hem.fk$a */
    public final class a extends AbstractRunnableC1289sk {

        /* renamed from: b */
        public final InterfaceC1113lj f2678b;

        /* renamed from: c */
        public volatile AtomicInteger f2679c;

        public a(InterfaceC1113lj interfaceC1113lj) {
            super("OkHttp %s", C0962fk.this.f2675c.f2785a.m3163o());
            this.f2679c = new AtomicInteger(0);
            this.f2678b = interfaceC1113lj;
        }

        @Override // com.huawei.hem.AbstractRunnableC1289sk
        /* renamed from: a */
        public void mo1376a() {
            C1088kk c1088kkM1824b;
            C0962fk.this.f2674b.f3122e.m1837i();
            boolean z = false;
            try {
                try {
                    c1088kkM1824b = C0962fk.this.m1824b();
                } catch (Throwable th) {
                    C0962fk.this.f2673a.f2417a.m2697a(this);
                    throw th;
                }
            } catch (IOException e) {
                e = e;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                C1405xb c1405xb = (C1405xb) this.f2678b;
                if (c1405xb.f4062a == null) {
                    Log.w("LTKLog2", "response back but callback is empty");
                } else if (c1405xb.f4063b) {
                    c1405xb.m2941a(c1088kkM1824b);
                } else {
                    c1405xb.m2941a(c1088kkM1824b);
                }
            } catch (IOException e2) {
                e = e2;
                z = true;
                if (z) {
                    C1391wm.f4029a.mo2707n(4, "Callback failure for " + C0962fk.this.m1825c(), e);
                } else {
                    ((C1405xb) this.f2678b).m2942b(C0962fk.this, e);
                }
                C0962fk.this.f2673a.f2417a.m2697a(this);
            } catch (Throwable th3) {
                th = th3;
                z = true;
                C0962fk.this.f2674b.m2205b();
                if (!z) {
                    IOException iOException = new IOException("canceled due to " + th);
                    iOException.addSuppressed(th);
                    ((C1405xb) this.f2678b).m2942b(C0962fk.this, iOException);
                }
                throw th;
            }
            C0962fk.this.f2673a.f2417a.m2697a(this);
        }

        /* renamed from: b */
        public String m1826b() {
            return C0962fk.this.f2675c.f2785a.f4314d;
        }
    }

    public C0962fk(C0910dk c0910dk, C0988gk c0988gk, boolean z) {
        this.f2673a = c0910dk;
        this.f2675c = c0988gk;
        this.f2676d = z;
    }

    /* renamed from: a */
    public void m1823a(InterfaceC1113lj interfaceC1113lj) {
        a next;
        synchronized (this) {
            if (this.f2677e) {
                throw new IllegalStateException("Already Executed");
            }
            this.f2677e = true;
        }
        C1089kl c1089kl = this.f2674b;
        a aVar = null;
        if (c1089kl == null) {
            throw null;
        }
        c1089kl.f3123f = C1391wm.f4029a.mo2705k("response.body().close()");
        if (c1089kl.f3121d == null) {
            throw null;
        }
        C1288sj c1288sj = this.f2673a.f2417a;
        a aVar2 = new a(interfaceC1113lj);
        synchronized (c1288sj) {
            c1288sj.f3718d.add(aVar2);
            if (!C0962fk.this.f2676d) {
                String strM1826b = aVar2.m1826b();
                Iterator<a> it = c1288sj.f3719e.iterator();
                while (true) {
                    if (it.hasNext()) {
                        next = it.next();
                        if (next.m1826b().equals(strM1826b)) {
                            break;
                        }
                    } else {
                        Iterator<a> it2 = c1288sj.f3718d.iterator();
                        while (it2.hasNext()) {
                            next = it2.next();
                            if (next.m1826b().equals(strM1826b)) {
                            }
                        }
                    }
                }
                aVar = next;
                if (aVar != null) {
                    aVar2.f2679c = aVar.f2679c;
                }
            }
        }
        c1288sj.m2698b();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hem.C1088kk m1824b() throws java.lang.Throwable {
        /*
            r12 = this;
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            com.huawei.hem.dk r0 = r12.f2673a
            java.util.List<com.huawei.hem.ak> r0 = r0.f2421e
            r1.addAll(r0)
            com.huawei.hem.sl r0 = new com.huawei.hem.sl
            com.huawei.hem.dk r2 = r12.f2673a
            r0.<init>(r2)
            r1.add(r0)
            com.huawei.hem.ll r0 = new com.huawei.hem.ll
            com.huawei.hem.dk r2 = r12.f2673a
            com.huawei.hem.rj r2 = r2.f2425i
            r0.<init>(r2)
            r1.add(r0)
            com.huawei.hem.wk r0 = new com.huawei.hem.wk
            com.huawei.hem.dk r2 = r12.f2673a
            com.huawei.hem.zk r2 = r2.f2427k
            r0.<init>(r2)
            r1.add(r0)
            com.huawei.hem.bl r0 = new com.huawei.hem.bl
            com.huawei.hem.dk r2 = r12.f2673a
            r0.<init>(r2)
            r1.add(r0)
            boolean r0 = r12.f2676d
            if (r0 != 0) goto L43
            com.huawei.hem.dk r0 = r12.f2673a
            java.util.List<com.huawei.hem.ak> r0 = r0.f2422f
            r1.addAll(r0)
        L43:
            com.huawei.hem.ml r0 = new com.huawei.hem.ml
            boolean r2 = r12.f2676d
            r0.<init>(r2)
            r1.add(r0)
            com.huawei.hem.ql r10 = new com.huawei.hem.ql
            com.huawei.hem.kl r2 = r12.f2674b
            r3 = 0
            r4 = 0
            com.huawei.hem.gk r5 = r12.f2675c
            com.huawei.hem.dk r0 = r12.f2673a
            int r7 = r0.f2441y
            int r8 = r0.f2442z
            int r9 = r0.f2415A
            r0 = r10
            r6 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            r0 = 0
            r1 = 0
            com.huawei.hem.gk r2 = r12.f2675c     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L85
            com.huawei.hem.kk r2 = r10.m2645a(r2)     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L85
            com.huawei.hem.kl r3 = r12.f2674b     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L85
            boolean r3 = r3.m2208e()     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L85
            if (r3 != 0) goto L78
            com.huawei.hem.kl r0 = r12.f2674b
            r0.m2210g(r1)
            return r2
        L78:
            com.huawei.hem.C1314tk.m2749d(r2)     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L85
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L85
            java.lang.String r3 = "Canceled"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L85
            throw r2     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L85
        L83:
            r2 = move-exception
            goto L92
        L85:
            r0 = move-exception
            r2 = 1
            com.huawei.hem.kl r3 = r12.f2674b     // Catch: java.lang.Throwable -> L8e
            java.io.IOException r0 = r3.m2210g(r0)     // Catch: java.lang.Throwable -> L8e
            throw r0     // Catch: java.lang.Throwable -> L8e
        L8e:
            r0 = move-exception
            r11 = r2
            r2 = r0
            r0 = r11
        L92:
            if (r0 != 0) goto L99
            com.huawei.hem.kl r0 = r12.f2674b
            r0.m2210g(r1)
        L99:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0962fk.m1824b():com.huawei.hem.kk");
    }

    /* renamed from: c */
    public String m1825c() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2674b.m2208e() ? "canceled " : "");
        sb.append(this.f2676d ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(this.f2675c.f2785a.m3163o());
        return sb.toString();
    }

    @Override // com.huawei.hem.InterfaceC1087kj
    public void cancel() throws IOException {
        this.f2674b.m2205b();
    }

    public Object clone() {
        C0910dk c0910dk = this.f2673a;
        C0962fk c0962fk = new C0962fk(c0910dk, this.f2675c, this.f2676d);
        c0962fk.f2674b = new C1089kl(c0910dk, c0962fk);
        return c0962fk;
    }

    @Override // com.huawei.hem.InterfaceC1087kj
    public C0988gk request() {
        return this.f2675c;
    }
}
