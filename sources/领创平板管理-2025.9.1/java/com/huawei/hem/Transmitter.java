package com.huawei.hem;

import com.huawei.hem.OkHttpClient;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: Transmitter.java */
/* renamed from: com.huawei.hem.kl */
/* loaded from: classes.dex */
public final class Transmitter {

    /* renamed from: a */
    public final OkHttpClient f3118a;

    /* renamed from: b */
    public final RealConnectionPool f3119b;

    /* renamed from: c */
    public final Call f3120c;

    /* renamed from: d */
    public final EventListener f3121d;

    /* renamed from: e */
    public final OkioAsyncTimeout f3122e = new a();

    /* renamed from: f */
    @Nullable
    public Object f3123f;

    /* renamed from: g */
    public OkHttpRequest f3124g;

    /* renamed from: h */
    public ExchangeFinder f3125h;

    /* renamed from: i */
    public RealConnection f3126i;

    /* renamed from: j */
    @Nullable
    public Exchange f3127j;

    /* renamed from: k */
    public boolean f3128k;

    /* renamed from: l */
    public boolean f3129l;

    /* renamed from: m */
    public boolean f3130m;

    /* renamed from: n */
    public boolean f3131n;

    /* renamed from: o */
    public boolean f3132o;

    /* compiled from: Transmitter.java */
    /* renamed from: com.huawei.hem.kl$a */
    public class a extends OkioAsyncTimeout {
        public a() {
        }

        @Override // com.huawei.hem.C0965fn
        /* renamed from: m */
        public void mo1841m() throws IOException {
            Transmitter.this.m2205b();
        }
    }

    /* compiled from: Transmitter.java */
    /* renamed from: com.huawei.hem.kl$b */
    public static final class b extends WeakReference<Transmitter> {

        /* renamed from: a */
        public final Object f3134a;

        public b(Transmitter c1089kl, Object obj) {
            super(c1089kl);
            this.f3134a = obj;
        }
    }

    public Transmitter(OkHttpClient c0910dk, Call interfaceC1087kj) {
        this.f3118a = c0910dk;
        OkHttpInternalAccess abstractC1264rk = OkHttpInternalAccess.f3645a;
        ConnectionPool c1188oj = c0910dk.f2435s;
        if (((OkHttpClient.a) abstractC1264rk) == null) {
            throw null;
        }
        this.f3119b = c1188oj.f3410a;
        this.f3120c = interfaceC1087kj;
        this.f3121d = c0910dk.f2423g.mo1683a(interfaceC1087kj);
        this.f3122e.mo1432g(c0910dk.f2440x, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public void m2204a(RealConnection c0963fl) {
        if (this.f3126i != null) {
            throw new IllegalStateException();
        }
        this.f3126i = c0963fl;
        c0963fl.f2695p.add(new b(this, this.f3123f));
    }

    /* renamed from: b */
    public void m2205b() throws IOException {
        Exchange c0911dl;
        RealConnection c0963fl;
        synchronized (this.f3119b) {
            this.f3130m = true;
            c0911dl = this.f3127j;
            c0963fl = (this.f3125h == null || this.f3125h.f2558h == null) ? this.f3126i : this.f3125h.f2558h;
        }
        if (c0911dl != null) {
            c0911dl.f2470e.cancel();
        } else if (c0963fl != null) {
            OkHttpCommonUtilities.m2750e(c0963fl.f2683d);
        }
    }

    /* renamed from: c */
    public void m2206c() {
        synchronized (this.f3119b) {
            if (this.f3132o) {
                throw new IllegalStateException();
            }
            this.f3127j = null;
        }
    }

    @Nullable
    /* renamed from: d */
    public IOException m2207d(Exchange c0911dl, boolean z, boolean z2, @Nullable IOException iOException) {
        boolean z3;
        synchronized (this.f3119b) {
            if (c0911dl != this.f3127j) {
                return iOException;
            }
            boolean z4 = true;
            if (z) {
                z3 = !this.f3128k;
                this.f3128k = true;
            } else {
                z3 = false;
            }
            if (z2) {
                if (!this.f3129l) {
                    z3 = true;
                }
                this.f3129l = true;
            }
            if (this.f3128k && this.f3129l && z3) {
                this.f3127j.m1614b().f2692m++;
                this.f3127j = null;
            } else {
                z4 = false;
            }
            return z4 ? m2209f(iOException, false) : iOException;
        }
    }

    /* renamed from: e */
    public boolean m2208e() {
        boolean z;
        synchronized (this.f3119b) {
            z = this.f3130m;
        }
        return z;
    }

    @Nullable
    /* renamed from: f */
    public final IOException m2209f(@Nullable IOException iOException, boolean z) throws IOException {
        RealConnection c0963fl;
        Socket socketM2211h;
        boolean z2;
        synchronized (this.f3119b) {
            if (z) {
                if (this.f3127j != null) {
                    throw new IllegalStateException("cannot release connection while it is in use");
                }
            }
            c0963fl = this.f3126i;
            socketM2211h = (this.f3126i != null && this.f3127j == null && (z || this.f3132o)) ? m2211h() : null;
            if (this.f3126i != null) {
                c0963fl = null;
            }
            z2 = this.f3132o && this.f3127j == null;
        }
        OkHttpCommonUtilities.m2750e(socketM2211h);
        if (c0963fl != null && this.f3121d == null) {
            throw null;
        }
        if (z2) {
            boolean z3 = iOException != null;
            if (!this.f3131n && this.f3122e.m1839k()) {
                InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
                if (iOException != null) {
                    interruptedIOException.initCause(iOException);
                }
                iOException = interruptedIOException;
            }
            if (z3) {
                if (this.f3121d == null) {
                    throw null;
                }
            } else if (this.f3121d == null) {
                throw null;
            }
        }
        return iOException;
    }

    @Nullable
    /* renamed from: g */
    public IOException m2210g(@Nullable IOException iOException) {
        synchronized (this.f3119b) {
            this.f3132o = true;
        }
        return m2209f(iOException, false);
    }

    @Nullable
    /* renamed from: h */
    public Socket m2211h() {
        int size = this.f3126i.f2695p.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            if (this.f3126i.f2695p.get(i).get() == this) {
                break;
            }
            i++;
        }
        if (i == -1) {
            throw new IllegalStateException();
        }
        RealConnection c0963fl = this.f3126i;
        c0963fl.f2695p.remove(i);
        this.f3126i = null;
        if (c0963fl.f2695p.isEmpty()) {
            c0963fl.f2696q = System.nanoTime();
            RealConnectionPool c0989gl = this.f3119b;
            if (c0989gl == null) {
                throw null;
            }
            if (c0963fl.f2690k || c0989gl.f2797a == 0) {
                c0989gl.f2800d.remove(c0963fl);
                z = true;
            } else {
                c0989gl.notifyAll();
            }
            if (z) {
                return c0963fl.f2684e;
            }
        }
        return null;
    }
}
