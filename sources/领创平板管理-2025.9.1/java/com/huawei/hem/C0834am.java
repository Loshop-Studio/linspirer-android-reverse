package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.C1090km;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.am */
/* loaded from: classes.dex */
public final class C0834am implements Closeable {

    /* renamed from: y */
    public static final ExecutorService f2216y = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), C1314tk.m2743A("OkHttp Http2Connection", true));

    /* renamed from: a */
    public final boolean f2217a;

    /* renamed from: b */
    public final e f2218b;

    /* renamed from: d */
    public final String f2220d;

    /* renamed from: e */
    public int f2221e;

    /* renamed from: f */
    public int f2222f;

    /* renamed from: g */
    public boolean f2223g;

    /* renamed from: h */
    public final ScheduledExecutorService f2224h;

    /* renamed from: i */
    public final ExecutorService f2225i;

    /* renamed from: j */
    public final InterfaceC1191om f2226j;

    /* renamed from: r */
    public long f2234r;

    /* renamed from: u */
    public final Socket f2237u;

    /* renamed from: v */
    public final C1141mm f2238v;

    /* renamed from: w */
    public final g f2239w;

    /* renamed from: c */
    public final Map<Integer, C1116lm> f2219c = new LinkedHashMap();

    /* renamed from: k */
    public long f2227k = 0;

    /* renamed from: l */
    public long f2228l = 0;

    /* renamed from: m */
    public long f2229m = 0;

    /* renamed from: n */
    public long f2230n = 0;

    /* renamed from: o */
    public long f2231o = 0;

    /* renamed from: p */
    public long f2232p = 0;

    /* renamed from: q */
    public long f2233q = 0;

    /* renamed from: s */
    public C1216pm f2235s = new C1216pm();

    /* renamed from: t */
    public final C1216pm f2236t = new C1216pm();

    /* renamed from: x */
    public final Set<Integer> f2240x = new LinkedHashSet();

    /* compiled from: Http2Connection.java */
    /* renamed from: com.huawei.hem.am$a */
    public class a extends AbstractRunnableC1289sk {

        /* renamed from: b */
        public final /* synthetic */ int f2241b;

        /* renamed from: c */
        public final /* synthetic */ EnumC1390wl f2242c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Object[] objArr, int i, EnumC1390wl enumC1390wl) {
            super(str, objArr);
            this.f2241b = i;
            this.f2242c = enumC1390wl;
        }

        @Override // com.huawei.hem.AbstractRunnableC1289sk
        /* renamed from: a */
        public void mo1376a() throws IOException {
            try {
                C0834am c0834am = C0834am.this;
                c0834am.f2238v.m2402i(this.f2241b, this.f2242c);
            } catch (IOException e) {
                C0834am c0834am2 = C0834am.this;
                EnumC1390wl enumC1390wl = EnumC1390wl.PROTOCOL_ERROR;
                c0834am2.m1366a(enumC1390wl, enumC1390wl, e);
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* renamed from: com.huawei.hem.am$b */
    public class b extends AbstractRunnableC1289sk {

        /* renamed from: b */
        public final /* synthetic */ int f2244b;

        /* renamed from: c */
        public final /* synthetic */ long f2245c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            this.f2244b = i;
            this.f2245c = j;
        }

        @Override // com.huawei.hem.AbstractRunnableC1289sk
        /* renamed from: a */
        public void mo1376a() throws IOException {
            try {
                C0834am.this.f2238v.m2403j(this.f2244b, this.f2245c);
            } catch (IOException e) {
                C0834am c0834am = C0834am.this;
                EnumC1390wl enumC1390wl = EnumC1390wl.PROTOCOL_ERROR;
                c0834am.m1366a(enumC1390wl, enumC1390wl, e);
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* renamed from: com.huawei.hem.am$c */
    public static class c {

        /* renamed from: a */
        public Socket f2247a;

        /* renamed from: b */
        public String f2248b;

        /* renamed from: c */
        public InterfaceC1066jn f2249c;

        /* renamed from: d */
        public InterfaceC1041in f2250d;

        /* renamed from: e */
        public e f2251e = e.f2256a;

        /* renamed from: f */
        public InterfaceC1191om f2252f = InterfaceC1191om.f3415a;

        /* renamed from: g */
        public boolean f2253g;

        /* renamed from: h */
        public int f2254h;

        public c(boolean z) {
            this.f2253g = z;
        }
    }

    /* compiled from: Http2Connection.java */
    /* renamed from: com.huawei.hem.am$d */
    public final class d extends AbstractRunnableC1289sk {
        public d() {
            super("OkHttp %s ping", C0834am.this.f2220d);
        }

        @Override // com.huawei.hem.AbstractRunnableC1289sk
        /* renamed from: a */
        public void mo1376a() throws IOException {
            boolean z;
            synchronized (C0834am.this) {
                if (C0834am.this.f2228l < C0834am.this.f2227k) {
                    z = true;
                } else {
                    C0834am.this.f2227k++;
                    z = false;
                }
            }
            if (!z) {
                C0834am.this.m1375l(false, 1, 0);
                return;
            }
            C0834am c0834am = C0834am.this;
            EnumC1390wl enumC1390wl = EnumC1390wl.PROTOCOL_ERROR;
            c0834am.m1366a(enumC1390wl, enumC1390wl, null);
        }
    }

    /* compiled from: Http2Connection.java */
    /* renamed from: com.huawei.hem.am$e */
    public static abstract class e {

        /* renamed from: a */
        public static final e f2256a = new a();

        /* compiled from: Http2Connection.java */
        /* renamed from: com.huawei.hem.am$e$a */
        public class a extends e {
            @Override // com.huawei.hem.C0834am.e
            /* renamed from: b */
            public void mo1378b(C1116lm c1116lm) {
                c1116lm.m2329c(EnumC1390wl.REFUSED_STREAM, null);
            }
        }

        /* renamed from: a */
        public void mo1377a(C0834am c0834am) {
        }

        /* renamed from: b */
        public abstract void mo1378b(C1116lm c1116lm);
    }

    /* compiled from: Http2Connection.java */
    /* renamed from: com.huawei.hem.am$f */
    public final class f extends AbstractRunnableC1289sk {

        /* renamed from: b */
        public final boolean f2257b;

        /* renamed from: c */
        public final int f2258c;

        /* renamed from: d */
        public final int f2259d;

        public f(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", C0834am.this.f2220d, Integer.valueOf(i), Integer.valueOf(i2));
            this.f2257b = z;
            this.f2258c = i;
            this.f2259d = i2;
        }

        @Override // com.huawei.hem.AbstractRunnableC1289sk
        /* renamed from: a */
        public void mo1376a() throws IOException {
            C0834am.this.m1375l(this.f2257b, this.f2258c, this.f2259d);
        }
    }

    /* compiled from: Http2Connection.java */
    /* renamed from: com.huawei.hem.am$g */
    public class g extends AbstractRunnableC1289sk implements C1090km.b {

        /* renamed from: b */
        public final C1090km f2261b;

        public g(C1090km c1090km) {
            super("OkHttp %s", C0834am.this.f2220d);
            this.f2261b = c1090km;
        }

        @Override // com.huawei.hem.AbstractRunnableC1289sk
        /* renamed from: a */
        public void mo1376a() throws Throwable {
            EnumC1390wl enumC1390wl;
            EnumC1390wl enumC1390wl2;
            EnumC1390wl enumC1390wl3 = EnumC1390wl.INTERNAL_ERROR;
            IOException e = null;
            try {
                this.f2261b.m2215d(this);
                while (this.f2261b.m2214c(false, this)) {
                }
                enumC1390wl = EnumC1390wl.NO_ERROR;
                try {
                    try {
                        enumC1390wl2 = EnumC1390wl.CANCEL;
                    } catch (IOException e2) {
                        e = e2;
                        enumC1390wl = EnumC1390wl.PROTOCOL_ERROR;
                        enumC1390wl2 = EnumC1390wl.PROTOCOL_ERROR;
                        C0834am.this.m1366a(enumC1390wl, enumC1390wl2, e);
                        C1314tk.m2749d(this.f2261b);
                    }
                } catch (Throwable th) {
                    th = th;
                    C0834am.this.m1366a(enumC1390wl, enumC1390wl3, e);
                    C1314tk.m2749d(this.f2261b);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th2) {
                th = th2;
                enumC1390wl = enumC1390wl3;
                C0834am.this.m1366a(enumC1390wl, enumC1390wl3, e);
                C1314tk.m2749d(this.f2261b);
                throw th;
            }
            C0834am.this.m1366a(enumC1390wl, enumC1390wl2, e);
            C1314tk.m2749d(this.f2261b);
        }
    }

    public C0834am(c cVar) {
        this.f2226j = cVar.f2252f;
        boolean z = cVar.f2253g;
        this.f2217a = z;
        this.f2218b = cVar.f2251e;
        int i = z ? 1 : 2;
        this.f2222f = i;
        if (cVar.f2253g) {
            this.f2222f = i + 2;
        }
        if (cVar.f2253g) {
            this.f2235s.m2497b(7, 16777216);
        }
        this.f2220d = cVar.f2248b;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC1239qk(C1314tk.m2756k("OkHttp %s Writer", this.f2220d), false));
        this.f2224h = scheduledThreadPoolExecutor;
        if (cVar.f2254h != 0) {
            d dVar = new d();
            long j = cVar.f2254h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(dVar, j, j, TimeUnit.MILLISECONDS);
        }
        this.f2225i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC1239qk(C1314tk.m2756k("OkHttp %s Push Observer", this.f2220d), true));
        this.f2236t.m2497b(7, 65535);
        this.f2236t.m2497b(5, 16384);
        this.f2234r = this.f2236t.m2496a();
        this.f2237u = cVar.f2247a;
        this.f2238v = new C1141mm(cVar.f2250d, this.f2217a);
        this.f2239w = new g(new C1090km(cVar.f2249c, this.f2217a));
    }

    /* renamed from: N */
    public void m1364N(int i, EnumC1390wl enumC1390wl) {
        try {
            this.f2224h.execute(new a("OkHttp %s stream %d", new Object[]{this.f2220d, Integer.valueOf(i)}, i, enumC1390wl));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* renamed from: O */
    public void m1365O(int i, long j) {
        try {
            this.f2224h.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f2220d, Integer.valueOf(i)}, i, j));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* renamed from: a */
    public void m1366a(EnumC1390wl enumC1390wl, EnumC1390wl enumC1390wl2, @Nullable IOException iOException) throws IOException {
        try {
            m1372i(enumC1390wl);
        } catch (IOException unused) {
        }
        C1116lm[] c1116lmArr = null;
        synchronized (this) {
            if (!this.f2219c.isEmpty()) {
                c1116lmArr = (C1116lm[]) this.f2219c.values().toArray(new C1116lm[this.f2219c.size()]);
                this.f2219c.clear();
            }
        }
        if (c1116lmArr != null) {
            for (C1116lm c1116lm : c1116lmArr) {
                try {
                    c1116lm.m2329c(enumC1390wl2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.f2238v.close();
        } catch (IOException unused3) {
        }
        try {
            this.f2237u.close();
        } catch (IOException unused4) {
        }
        this.f2224h.shutdown();
        this.f2225i.shutdown();
    }

    /* renamed from: c */
    public synchronized C1116lm m1367c(int i) {
        return this.f2219c.get(Integer.valueOf(i));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m1366a(EnumC1390wl.NO_ERROR, EnumC1390wl.CANCEL, null);
    }

    /* renamed from: d */
    public synchronized int m1368d() {
        int i;
        C1216pm c1216pm = this.f2236t;
        i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if ((c1216pm.f3479a & 16) != 0) {
            i = c1216pm.f3480b[4];
        }
        return i;
    }

    /* renamed from: f */
    public final synchronized void m1369f(AbstractRunnableC1289sk abstractRunnableC1289sk) {
        if (!this.f2223g) {
            this.f2225i.execute(abstractRunnableC1289sk);
        }
    }

    /* renamed from: g */
    public boolean m1370g(int i) {
        return i != 0 && (i & 1) == 0;
    }

    /* renamed from: h */
    public synchronized C1116lm m1371h(int i) {
        C1116lm c1116lmRemove;
        c1116lmRemove = this.f2219c.remove(Integer.valueOf(i));
        notifyAll();
        return c1116lmRemove;
    }

    /* renamed from: i */
    public void m1372i(EnumC1390wl enumC1390wl) {
        synchronized (this.f2238v) {
            synchronized (this) {
                if (this.f2223g) {
                    return;
                }
                this.f2223g = true;
                this.f2238v.m2399f(this.f2221e, enumC1390wl, C1314tk.f3815a);
            }
        }
    }

    /* renamed from: j */
    public synchronized void m1373j(long j) {
        long j2 = this.f2233q + j;
        this.f2233q = j2;
        if (j2 >= this.f2235s.m2496a() / 2) {
            m1365O(0, this.f2233q);
            this.f2233q = 0L;
        }
    }

    /* renamed from: k */
    public void m1374k(int i, boolean z, C1016hn c1016hn, long j) {
        int iMin;
        long j2;
        if (j == 0) {
            this.f2238v.m2397c(z, i, c1016hn, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.f2234r <= 0) {
                    try {
                        if (!this.f2219c.containsKey(Integer.valueOf(i))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j, this.f2234r), this.f2238v.f3280d);
                j2 = iMin;
                this.f2234r -= j2;
            }
            j -= j2;
            this.f2238v.m2397c(z && j == 0, i, c1016hn, iMin);
        }
    }

    /* renamed from: l */
    public void m1375l(boolean z, int i, int i2) throws IOException {
        try {
            this.f2238v.m2401h(z, i, i2);
        } catch (IOException e2) {
            EnumC1390wl enumC1390wl = EnumC1390wl.PROTOCOL_ERROR;
            m1366a(enumC1390wl, enumC1390wl, e2);
        }
    }
}
