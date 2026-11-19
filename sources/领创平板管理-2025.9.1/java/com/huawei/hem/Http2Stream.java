package com.huawei.hem;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.RejectedExecutionException;
import javax.annotation.Nullable;

/* compiled from: Http2Stream.java */
/* renamed from: com.huawei.hem.lm */
/* loaded from: classes.dex */
public final class Http2Stream {

    /* renamed from: b */
    public long f3202b;

    /* renamed from: c */
    public final int f3203c;

    /* renamed from: d */
    public final C0834am f3204d;

    /* renamed from: f */
    public boolean f3206f;

    /* renamed from: g */
    public final b f3207g;

    /* renamed from: h */
    public final a f3208h;

    /* renamed from: k */
    @Nullable
    public Http2ErrorCode f3211k;

    /* renamed from: l */
    @Nullable
    public IOException f3212l;

    /* renamed from: a */
    public long f3201a = 0;

    /* renamed from: e */
    public final Deque<C1438yj> f3205e = new ArrayDeque();

    /* renamed from: i */
    public final c f3209i = new c();

    /* renamed from: j */
    public final c f3210j = new c();

    /* compiled from: Http2Stream.java */
    /* renamed from: com.huawei.hem.lm$a */
    public final class a implements Sink {

        /* renamed from: a */
        public final OkioBuffer f3213a = new OkioBuffer();

        /* renamed from: b */
        public boolean f3214b;

        /* renamed from: c */
        public boolean f3215c;

        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x005d  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m2337a(boolean r12) throws java.io.IOException {
            /*
                r11 = this;
                com.huawei.hem.lm r0 = com.huawei.hem.C1116lm.this
                monitor-enter(r0)
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L85
                com.huawei.hem.lm$c r1 = r1.f3210j     // Catch: java.lang.Throwable -> L85
                r1.m1837i()     // Catch: java.lang.Throwable -> L85
            La:
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L7c
                long r1 = r1.f3202b     // Catch: java.lang.Throwable -> L7c
                r3 = 0
                int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r1 > 0) goto L28
                boolean r1 = r11.f3215c     // Catch: java.lang.Throwable -> L7c
                if (r1 != 0) goto L28
                boolean r1 = r11.f3214b     // Catch: java.lang.Throwable -> L7c
                if (r1 != 0) goto L28
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L7c
                com.huawei.hem.wl r1 = r1.f3211k     // Catch: java.lang.Throwable -> L7c
                if (r1 != 0) goto L28
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L7c
                r1.m2336j()     // Catch: java.lang.Throwable -> L7c
                goto La
            L28:
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L85
                com.huawei.hem.lm$c r1 = r1.f3210j     // Catch: java.lang.Throwable -> L85
                r1.m2339n()     // Catch: java.lang.Throwable -> L85
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L85
                r1.m2328b()     // Catch: java.lang.Throwable -> L85
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L85
                long r1 = r1.f3202b     // Catch: java.lang.Throwable -> L85
                com.huawei.hem.hn r3 = r11.f3213a     // Catch: java.lang.Throwable -> L85
                long r3 = r3.f2884b     // Catch: java.lang.Throwable -> L85
                long r9 = java.lang.Math.min(r1, r3)     // Catch: java.lang.Throwable -> L85
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L85
                long r2 = r1.f3202b     // Catch: java.lang.Throwable -> L85
                long r2 = r2 - r9
                r1.f3202b = r2     // Catch: java.lang.Throwable -> L85
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L85
                com.huawei.hem.lm r0 = com.huawei.hem.C1116lm.this
                com.huawei.hem.lm$c r0 = r0.f3210j
                r0.m1837i()
                if (r12 == 0) goto L5d
                com.huawei.hem.hn r12 = r11.f3213a     // Catch: java.lang.Throwable -> L5b
                long r0 = r12.f2884b     // Catch: java.lang.Throwable -> L5b
                int r12 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r12 != 0) goto L5d
                r12 = 1
                goto L5e
            L5b:
                r12 = move-exception
                goto L74
            L5d:
                r12 = 0
            L5e:
                r7 = r12
                com.huawei.hem.lm r12 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L5b
                com.huawei.hem.am r5 = r12.f3204d     // Catch: java.lang.Throwable -> L5b
                com.huawei.hem.lm r12 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L5b
                int r6 = r12.f3203c     // Catch: java.lang.Throwable -> L5b
                com.huawei.hem.hn r8 = r11.f3213a     // Catch: java.lang.Throwable -> L5b
                r5.m1374k(r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L5b
                com.huawei.hem.lm r12 = com.huawei.hem.C1116lm.this
                com.huawei.hem.lm$c r12 = r12.f3210j
                r12.m2339n()
                return
            L74:
                com.huawei.hem.lm r0 = com.huawei.hem.C1116lm.this
                com.huawei.hem.lm$c r0 = r0.f3210j
                r0.m2339n()
                throw r12
            L7c:
                r12 = move-exception
                com.huawei.hem.lm r1 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> L85
                com.huawei.hem.lm$c r1 = r1.f3210j     // Catch: java.lang.Throwable -> L85
                r1.m2339n()     // Catch: java.lang.Throwable -> L85
                throw r12     // Catch: java.lang.Throwable -> L85
            L85:
                r12 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L85
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1116lm.a.m2337a(boolean):void");
        }

        @Override // com.huawei.hem.InterfaceC1467zn, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (Http2Stream.this) {
                if (this.f3214b) {
                    return;
                }
                if (!Http2Stream.this.f3208h.f3215c) {
                    if (this.f3213a.f2884b > 0) {
                        while (this.f3213a.f2884b > 0) {
                            m2337a(true);
                        }
                    } else {
                        Http2Stream c1116lm = Http2Stream.this;
                        c1116lm.f3204d.m1374k(c1116lm.f3203c, true, null, 0L);
                    }
                }
                synchronized (Http2Stream.this) {
                    this.f3214b = true;
                }
                Http2Stream.this.f3204d.f2238v.flush();
                Http2Stream.this.m2327a();
            }
        }

        @Override // com.huawei.hem.InterfaceC1467zn, java.io.Flushable
        public void flush() throws IOException {
            synchronized (Http2Stream.this) {
                Http2Stream.this.m2328b();
            }
            while (this.f3213a.f2884b > 0) {
                m2337a(false);
                Http2Stream.this.f3204d.f2238v.flush();
            }
        }

        @Override // com.huawei.hem.InterfaceC1467zn
        /* renamed from: n */
        public Timeout mo1621n() {
            return Http2Stream.this.f3210j;
        }

        @Override // com.huawei.hem.InterfaceC1467zn
        /* renamed from: p */
        public void mo1619p(OkioBuffer c1016hn, long j) throws IOException {
            this.f3213a.mo1619p(c1016hn, j);
            while (this.f3213a.f2884b >= PlaybackStateCompat.ACTION_PREPARE) {
                m2337a(false);
            }
        }
    }

    /* compiled from: Http2Stream.java */
    /* renamed from: com.huawei.hem.lm$b */
    public final class b implements Source {

        /* renamed from: a */
        public final OkioBuffer f3217a = new OkioBuffer();

        /* renamed from: b */
        public final OkioBuffer f3218b = new OkioBuffer();

        /* renamed from: c */
        public final long f3219c;

        /* renamed from: d */
        public C1438yj f3220d;

        /* renamed from: e */
        public boolean f3221e;

        /* renamed from: f */
        public boolean f3222f;

        public b(long j) {
            this.f3219c = j;
        }

        /* renamed from: a */
        public final void m2338a(long j) {
            Http2Stream.this.f3204d.m1373j(j);
        }

        @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            long j;
            synchronized (Http2Stream.this) {
                this.f3221e = true;
                j = this.f3218b.f2884b;
                this.f3218b.m1996a();
                Http2Stream.this.notifyAll();
            }
            if (j > 0) {
                m2338a(j);
            }
            Http2Stream.this.m2327a();
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long mo1380e(com.huawei.hem.OkioBuffer r12, long r13) throws java.lang.Throwable {
            /*
                r11 = this;
                r0 = 0
                int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
                if (r2 < 0) goto Lb7
            L6:
                r2 = 0
                com.huawei.hem.lm r3 = com.huawei.hem.C1116lm.this
                monitor-enter(r3)
                com.huawei.hem.lm r4 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lb4
                com.huawei.hem.lm$c r4 = r4.f3209i     // Catch: java.lang.Throwable -> Lb4
                r4.m1837i()     // Catch: java.lang.Throwable -> Lb4
                com.huawei.hem.lm r4 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.wl r4 = r4.f3211k     // Catch: java.lang.Throwable -> Lab
                if (r4 == 0) goto L2b
                com.huawei.hem.lm r2 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                java.io.IOException r2 = r2.f3212l     // Catch: java.lang.Throwable -> Lab
                if (r2 == 0) goto L22
                com.huawei.hem.lm r2 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                java.io.IOException r2 = r2.f3212l     // Catch: java.lang.Throwable -> Lab
                goto L2b
            L22:
                com.huawei.hem.qm r2 = new com.huawei.hem.qm     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.lm r4 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.wl r4 = r4.f3211k     // Catch: java.lang.Throwable -> Lab
                r2.<init>(r4)     // Catch: java.lang.Throwable -> Lab
            L2b:
                boolean r4 = r11.f3221e     // Catch: java.lang.Throwable -> Lab
                if (r4 != 0) goto La3
                com.huawei.hem.hn r4 = r11.f3218b     // Catch: java.lang.Throwable -> Lab
                long r4 = r4.f2884b     // Catch: java.lang.Throwable -> Lab
                int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                r5 = -1
                if (r4 <= 0) goto L79
                com.huawei.hem.hn r4 = r11.f3218b     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.hn r7 = r11.f3218b     // Catch: java.lang.Throwable -> Lab
                long r7 = r7.f2884b     // Catch: java.lang.Throwable -> Lab
                long r13 = java.lang.Math.min(r13, r7)     // Catch: java.lang.Throwable -> Lab
                long r12 = r4.mo1380e(r12, r13)     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.lm r14 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                long r7 = r14.f3201a     // Catch: java.lang.Throwable -> Lab
                long r7 = r7 + r12
                r14.f3201a = r7     // Catch: java.lang.Throwable -> Lab
                if (r2 != 0) goto L8f
                com.huawei.hem.lm r14 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                long r7 = r14.f3201a     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.lm r14 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.am r14 = r14.f3204d     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.pm r14 = r14.f2235s     // Catch: java.lang.Throwable -> Lab
                int r14 = r14.m2496a()     // Catch: java.lang.Throwable -> Lab
                int r14 = r14 / 2
                long r9 = (long) r14     // Catch: java.lang.Throwable -> Lab
                int r14 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r14 < 0) goto L8f
                com.huawei.hem.lm r14 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.am r14 = r14.f3204d     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.lm r4 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                int r4 = r4.f3203c     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.lm r7 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                long r7 = r7.f3201a     // Catch: java.lang.Throwable -> Lab
                r14.m1365O(r4, r7)     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.lm r14 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                r14.f3201a = r0     // Catch: java.lang.Throwable -> Lab
                goto L8f
            L79:
                boolean r4 = r11.f3222f     // Catch: java.lang.Throwable -> Lab
                if (r4 != 0) goto L8e
                if (r2 != 0) goto L8e
                com.huawei.hem.lm r2 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lab
                r2.m2336j()     // Catch: java.lang.Throwable -> Lab
                com.huawei.hem.lm r2 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lb4
                com.huawei.hem.lm$c r2 = r2.f3209i     // Catch: java.lang.Throwable -> Lb4
                r2.m2339n()     // Catch: java.lang.Throwable -> Lb4
                monitor-exit(r3)     // Catch: java.lang.Throwable -> Lb4
                goto L6
            L8e:
                r12 = r5
            L8f:
                com.huawei.hem.lm r14 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lb4
                com.huawei.hem.lm$c r14 = r14.f3209i     // Catch: java.lang.Throwable -> Lb4
                r14.m2339n()     // Catch: java.lang.Throwable -> Lb4
                monitor-exit(r3)     // Catch: java.lang.Throwable -> Lb4
                int r14 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
                if (r14 == 0) goto L9f
                r11.m2338a(r12)
                return r12
            L9f:
                if (r2 != 0) goto La2
                return r5
            La2:
                throw r2
            La3:
                java.io.IOException r12 = new java.io.IOException     // Catch: java.lang.Throwable -> Lab
                java.lang.String r13 = "stream closed"
                r12.<init>(r13)     // Catch: java.lang.Throwable -> Lab
                throw r12     // Catch: java.lang.Throwable -> Lab
            Lab:
                r12 = move-exception
                com.huawei.hem.lm r13 = com.huawei.hem.C1116lm.this     // Catch: java.lang.Throwable -> Lb4
                com.huawei.hem.lm$c r13 = r13.f3209i     // Catch: java.lang.Throwable -> Lb4
                r13.m2339n()     // Catch: java.lang.Throwable -> Lb4
                throw r12     // Catch: java.lang.Throwable -> Lb4
            Lb4:
                r12 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> Lb4
                throw r12
            Lb7:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "byteCount < 0: "
                java.lang.String r13 = com.huawei.hem.C0948f6.m1755M(r0, r13)
                r12.<init>(r13)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1116lm.b.mo1380e(com.huawei.hem.hn, long):long");
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: n */
        public Timeout mo1381n() {
            return Http2Stream.this.f3209i;
        }
    }

    /* compiled from: Http2Stream.java */
    /* renamed from: com.huawei.hem.lm$c */
    public class c extends C0965fn {
        public c() {
        }

        @Override // com.huawei.hem.C0965fn
        /* renamed from: l */
        public IOException mo1840l(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // com.huawei.hem.C0965fn
        /* renamed from: m */
        public void mo1841m() {
            Http2Stream.this.m2331e(Http2ErrorCode.CANCEL);
            C0834am c0834am = Http2Stream.this.f3204d;
            synchronized (c0834am) {
                if (c0834am.f2230n < c0834am.f2229m) {
                    return;
                }
                c0834am.f2229m++;
                c0834am.f2232p = System.nanoTime() + 1000000000;
                try {
                    c0834am.f2224h.execute(new C0860bm(c0834am, "OkHttp %s ping", c0834am.f2220d));
                } catch (RejectedExecutionException unused) {
                }
            }
        }

        /* renamed from: n */
        public void m2339n() throws IOException {
            if (m1839k()) {
                throw mo1840l(null);
            }
        }
    }

    public Http2Stream(int i, C0834am c0834am, boolean z, boolean z2, @Nullable C1438yj c1438yj) {
        if (c0834am == null) {
            throw new NullPointerException("connection == null");
        }
        this.f3203c = i;
        this.f3204d = c0834am;
        this.f3202b = c0834am.f2236t.m2496a();
        this.f3207g = new b(c0834am.f2235s.m2496a());
        a aVar = new a();
        this.f3208h = aVar;
        this.f3207g.f3222f = z2;
        aVar.f3215c = z;
        if (c1438yj != null) {
            this.f3205e.add(c1438yj);
        }
        if (m2333g() && c1438yj != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!m2333g() && c1438yj == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    /* renamed from: a */
    public void m2327a() {
        boolean z;
        boolean zM2334h;
        synchronized (this) {
            z = !this.f3207g.f3222f && this.f3207g.f3221e && (this.f3208h.f3215c || this.f3208h.f3214b);
            zM2334h = m2334h();
        }
        if (z) {
            m2329c(Http2ErrorCode.CANCEL, null);
        } else {
            if (zM2334h) {
                return;
            }
            this.f3204d.m1371h(this.f3203c);
        }
    }

    /* renamed from: b */
    public void m2328b() throws IOException {
        a aVar = this.f3208h;
        if (aVar.f3214b) {
            throw new IOException("stream closed");
        }
        if (aVar.f3215c) {
            throw new IOException("stream finished");
        }
        if (this.f3211k != null) {
            IOException iOException = this.f3212l;
            if (iOException == null) {
                throw new StreamResetException(this.f3211k);
            }
        }
    }

    /* renamed from: c */
    public void m2329c(Http2ErrorCode enumC1390wl, @Nullable IOException iOException) {
        if (m2330d(enumC1390wl, iOException)) {
            C0834am c0834am = this.f3204d;
            c0834am.f2238v.m2402i(this.f3203c, enumC1390wl);
        }
    }

    /* renamed from: d */
    public final boolean m2330d(Http2ErrorCode enumC1390wl, @Nullable IOException iOException) {
        synchronized (this) {
            if (this.f3211k != null) {
                return false;
            }
            if (this.f3207g.f3222f && this.f3208h.f3215c) {
                return false;
            }
            this.f3211k = enumC1390wl;
            this.f3212l = iOException;
            notifyAll();
            this.f3204d.m1371h(this.f3203c);
            return true;
        }
    }

    /* renamed from: e */
    public void m2331e(Http2ErrorCode enumC1390wl) {
        if (m2330d(enumC1390wl, null)) {
            this.f3204d.m1364N(this.f3203c, enumC1390wl);
        }
    }

    /* renamed from: f */
    public Sink m2332f() {
        synchronized (this) {
            if (!this.f3206f && !m2333g()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f3208h;
    }

    /* renamed from: g */
    public boolean m2333g() {
        return this.f3204d.f2217a == ((this.f3203c & 1) == 1);
    }

    /* renamed from: h */
    public synchronized boolean m2334h() {
        if (this.f3211k != null) {
            return false;
        }
        if ((this.f3207g.f3222f || this.f3207g.f3221e) && (this.f3208h.f3215c || this.f3208h.f3214b)) {
            if (this.f3206f) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    public void m2335i(C1438yj c1438yj, boolean z) {
        boolean zM2334h;
        synchronized (this) {
            if (this.f3206f && z) {
                this.f3207g.f3220d = c1438yj;
            } else {
                this.f3206f = true;
                this.f3205e.add(c1438yj);
            }
            if (z) {
                this.f3207g.f3222f = true;
            }
            zM2334h = m2334h();
            notifyAll();
        }
        if (zM2334h) {
            return;
        }
        this.f3204d.m1371h(this.f3203c);
    }

    /* renamed from: j */
    public void m2336j() throws InterruptedException, InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }
}
