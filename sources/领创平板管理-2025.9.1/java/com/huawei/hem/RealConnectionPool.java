package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.OkHttpClient;
import com.huawei.hem.Transmitter;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Proxy;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

/* compiled from: RealConnectionPool.java */
/* renamed from: com.huawei.hem.gl */
/* loaded from: classes.dex */
public final class RealConnectionPool {

    /* renamed from: g */
    public static final Executor f2796g = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), OkHttpCommonUtilities.m2743A("OkHttp ConnectionPool", true));

    /* renamed from: a */
    public final int f2797a;

    /* renamed from: b */
    public final long f2798b;

    /* renamed from: c */
    public final Runnable f2799c = new Runnable() { // from class: com.huawei.hem.al
        @Override // java.lang.Runnable
        public final void run() throws IOException {
            this.f2215a.m1885c();
        }
    };

    /* renamed from: d */
    public final Deque<RealConnection> f2800d = new ArrayDeque();

    /* renamed from: e */
    public final RouteDatabase f2801e = new RouteDatabase();

    /* renamed from: f */
    public boolean f2802f;

    public RealConnectionPool(int i, long j, TimeUnit timeUnit) {
        this.f2797a = i;
        this.f2798b = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException(CompilerOutline.m1755M("keepAliveDuration <= 0: ", j));
        }
    }

    /* renamed from: a */
    public long m1883a(long j) throws IOException {
        synchronized (this) {
            RealConnection c0963fl = null;
            long j2 = Long.MIN_VALUE;
            int i = 0;
            int i2 = 0;
            for (RealConnection c0963fl2 : this.f2800d) {
                if (m1886d(c0963fl2, j) > 0) {
                    i2++;
                } else {
                    i++;
                    long j3 = j - c0963fl2.f2696q;
                    if (j3 > j2) {
                        c0963fl = c0963fl2;
                        j2 = j3;
                    }
                }
            }
            if (j2 < this.f2798b && i <= this.f2797a) {
                if (i > 0) {
                    return this.f2798b - j2;
                }
                if (i2 > 0) {
                    return this.f2798b;
                }
                this.f2802f = false;
                return -1L;
            }
            this.f2800d.remove(c0963fl);
            OkHttpCommonUtilities.m2750e(c0963fl.f2684e);
            return 0L;
        }
    }

    /* renamed from: b */
    public void m1884b(Route c1164nk, IOException iOException) {
        if (c1164nk.f3354b.type() != Proxy.Type.DIRECT) {
            OkHttpAddress c0961fj = c1164nk.f3353a;
            c0961fj.f2668g.connectFailed(c0961fj.f2662a.m3164p(), c1164nk.f3354b.address(), iOException);
        }
        RouteDatabase c1014hl = this.f2801e;
        synchronized (c1014hl) {
            c1014hl.f2878a.add(c1164nk);
        }
    }

    /* renamed from: c */
    public /* synthetic */ void m1885c() throws IOException {
        while (true) {
            long jM1883a = m1883a(System.nanoTime());
            if (jM1883a == -1) {
                return;
            }
            if (jM1883a > 0) {
                long j = jM1883a / 1000000;
                long j2 = jM1883a - (1000000 * j);
                synchronized (this) {
                    try {
                        wait(j, (int) j2);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public final int m1886d(RealConnection c0963fl, long j) {
        List<Reference<Transmitter>> list = c0963fl.f2695p;
        int i = 0;
        while (i < list.size()) {
            Reference<Transmitter> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                StringBuilder sbM1765j = CompilerOutline.m1765j("A connection to ");
                sbM1765j.append(c0963fl.f2682c.f3353a.f2662a);
                sbM1765j.append(" was leaked. Did you forget to close a response body?");
                Platform.f4029a.mo2708o(sbM1765j.toString(), ((Transmitter.b) reference).f3134a);
                list.remove(i);
                c0963fl.f2690k = true;
                if (list.isEmpty()) {
                    c0963fl.f2696q = j - this.f2798b;
                    return 0;
                }
            }
        }
        return list.size();
    }

    /* renamed from: e */
    public boolean m1887e(OkHttpAddress c0961fj, Transmitter c1089kl, @Nullable List<Route> list, boolean z) {
        boolean z2;
        Iterator<RealConnection> it = this.f2800d.iterator();
        while (true) {
            boolean z3 = false;
            if (!it.hasNext()) {
                return false;
            }
            RealConnection next = it.next();
            if (!z || next.m1831g()) {
                if (next.f2695p.size() < next.f2694o && !next.f2690k) {
                    OkHttpInternalAccess abstractC1264rk = OkHttpInternalAccess.f3645a;
                    OkHttpAddress c0961fj2 = next.f2682c.f3353a;
                    if (((OkHttpClient.a) abstractC1264rk) == null) {
                        throw null;
                    }
                    if (c0961fj2.m1822a(c0961fj)) {
                        if (c0961fj.f2662a.f4314d.equals(next.f2682c.f3353a.f2662a.f4314d)) {
                            z3 = true;
                        } else if (next.f2687h != null && list != null) {
                            int size = list.size();
                            int i = 0;
                            while (true) {
                                if (i >= size) {
                                    z2 = false;
                                    break;
                                }
                                Route c1164nk = list.get(i);
                                if (c1164nk.f3354b.type() == Proxy.Type.DIRECT && next.f2682c.f3354b.type() == Proxy.Type.DIRECT && next.f2682c.f3355c.equals(c1164nk.f3355c)) {
                                    z2 = true;
                                    break;
                                }
                                i++;
                            }
                            if (z2 && c0961fj.f2671j == OkHostnameVerifier.f2311a && next.m1835k(c0961fj.f2662a)) {
                                try {
                                    c0961fj.f2672k.m2392a(c0961fj.f2662a.f4314d, next.f2685f.f4083c);
                                    z3 = true;
                                } catch (SSLPeerUnverifiedException unused) {
                                }
                            }
                        }
                    }
                }
                if (z3) {
                    c1089kl.m2204a(next);
                    return true;
                }
            }
        }
    }
}
