package com.huawei.hem;

import com.huawei.hem.OkHttpClient;
import com.huawei.hem.OkHttpResponse;
import java.io.IOException;
import java.net.ProtocolException;
import javax.annotation.Nullable;

/* compiled from: Exchange.java */
/* renamed from: com.huawei.hem.dl */
/* loaded from: classes.dex */
public final class Exchange {

    /* renamed from: a */
    public final Transmitter f2466a;

    /* renamed from: b */
    public final Call f2467b;

    /* renamed from: c */
    public final EventListener f2468c;

    /* renamed from: d */
    public final ExchangeFinder f2469d;

    /* renamed from: e */
    public final ExchangeCodec f2470e;

    /* renamed from: f */
    public boolean f2471f;

    /* compiled from: Exchange.java */
    /* renamed from: com.huawei.hem.dl$a */
    public final class a extends ForwardingSink {

        /* renamed from: b */
        public boolean f2472b;

        /* renamed from: c */
        public long f2473c;

        /* renamed from: d */
        public long f2474d;

        /* renamed from: e */
        public boolean f2475e;

        public a(Sink interfaceC1467zn, long j) {
            super(interfaceC1467zn);
            this.f2473c = j;
        }

        @Nullable
        /* renamed from: a */
        public final IOException m1618a(@Nullable IOException iOException) {
            if (this.f2472b) {
                return iOException;
            }
            this.f2472b = true;
            return Exchange.this.m1613a(this.f2474d, false, true, iOException);
        }

        @Override // com.huawei.hem.AbstractC1117ln, com.huawei.hem.InterfaceC1467zn, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2475e) {
                return;
            }
            this.f2475e = true;
            long j = this.f2473c;
            if (j != -1 && this.f2474d != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                this.f3225a.close();
                m1618a(null);
            } catch (IOException e) {
                throw m1618a(e);
            }
        }

        @Override // com.huawei.hem.AbstractC1117ln, com.huawei.hem.InterfaceC1467zn, java.io.Flushable
        public void flush() throws IOException {
            try {
                this.f3225a.flush();
            } catch (IOException e) {
                throw m1618a(e);
            }
        }

        @Override // com.huawei.hem.InterfaceC1467zn
        /* renamed from: p */
        public void mo1619p(OkioBuffer c1016hn, long j) throws IOException {
            if (this.f2475e) {
                throw new IllegalStateException("closed");
            }
            long j2 = this.f2473c;
            if (j2 == -1 || this.f2474d + j <= j2) {
                try {
                    this.f3225a.mo1619p(c1016hn, j);
                    this.f2474d += j;
                    return;
                } catch (IOException e) {
                    throw m1618a(e);
                }
            }
            StringBuilder sbM1765j = CompilerOutline.m1765j("expected ");
            sbM1765j.append(this.f2473c);
            sbM1765j.append(" bytes but received ");
            sbM1765j.append(this.f2474d + j);
            throw new ProtocolException(sbM1765j.toString());
        }
    }

    /* compiled from: Exchange.java */
    /* renamed from: com.huawei.hem.dl$b */
    public final class b extends ForwardingSource {

        /* renamed from: b */
        public final long f2477b;

        /* renamed from: c */
        public long f2478c;

        /* renamed from: d */
        public boolean f2479d;

        /* renamed from: e */
        public boolean f2480e;

        public b(Source interfaceC0836ao, long j) {
            super(interfaceC0836ao);
            this.f2477b = j;
            if (j == 0) {
                m1620a(null);
            }
        }

        @Nullable
        /* renamed from: a */
        public IOException m1620a(@Nullable IOException iOException) {
            if (this.f2479d) {
                return iOException;
            }
            this.f2479d = true;
            return Exchange.this.m1613a(this.f2478c, true, false, iOException);
        }

        @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2480e) {
                return;
            }
            this.f2480e = true;
            try {
                this.f3283a.close();
                m1620a(null);
            } catch (IOException e) {
                throw m1620a(e);
            }
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        public long mo1380e(OkioBuffer c1016hn, long j) throws IOException {
            if (this.f2480e) {
                throw new IllegalStateException("closed");
            }
            try {
                long jMo1380e = this.f3283a.mo1380e(c1016hn, j);
                if (jMo1380e == -1) {
                    m1620a(null);
                    return -1L;
                }
                long j2 = this.f2478c + jMo1380e;
                if (this.f2477b != -1 && j2 > this.f2477b) {
                    throw new ProtocolException("expected " + this.f2477b + " bytes but received " + j2);
                }
                this.f2478c = j2;
                if (j2 == this.f2477b) {
                    m1620a(null);
                }
                return jMo1380e;
            } catch (IOException e) {
                throw m1620a(e);
            }
        }
    }

    public Exchange(Transmitter c1089kl, Call interfaceC1087kj, EventListener abstractC1363vj, ExchangeFinder c0937el, ExchangeCodec interfaceC1165nl) {
        this.f2466a = c1089kl;
        this.f2467b = interfaceC1087kj;
        this.f2468c = abstractC1363vj;
        this.f2469d = c0937el;
        this.f2470e = interfaceC1165nl;
    }

    @Nullable
    /* renamed from: a */
    public IOException m1613a(long j, boolean z, boolean z2, @Nullable IOException iOException) {
        if (iOException != null) {
            m1617e(iOException);
        }
        if (z2) {
            if (iOException != null) {
                if (this.f2468c == null) {
                    throw null;
                }
            } else if (this.f2468c == null) {
                throw null;
            }
        }
        if (z) {
            if (iOException != null) {
                if (this.f2468c == null) {
                    throw null;
                }
            } else if (this.f2468c == null) {
                throw null;
            }
        }
        return this.f2466a.m2207d(this, z2, z, iOException);
    }

    /* renamed from: b */
    public RealConnection m1614b() {
        return this.f2470e.mo2146h();
    }

    /* renamed from: c */
    public Sink m1615c(OkHttpRequest c0988gk, boolean z) {
        this.f2471f = z;
        long jMo1534a = c0988gk.f2788d.mo1534a();
        if (this.f2468c != null) {
            return new a(this.f2470e.mo2144f(c0988gk, jMo1534a), jMo1534a);
        }
        throw null;
    }

    @Nullable
    /* renamed from: d */
    public OkHttpResponse.a m1616d(boolean z) throws IOException {
        try {
            OkHttpResponse.a aVarMo2145g = this.f2470e.mo2145g(z);
            if (aVarMo2145g != null) {
                if (((OkHttpClient.a) OkHttpInternalAccess.f3645a) == null) {
                    throw null;
                }
                aVarMo2145g.f3117m = this;
            }
            return aVarMo2145g;
        } catch (IOException e) {
            if (this.f2468c == null) {
                throw null;
            }
            m1617e(e);
            throw e;
        }
    }

    /* renamed from: e */
    public void m1617e(IOException iOException) {
        this.f2469d.m1688e();
        RealConnection c0963flMo2146h = this.f2470e.mo2146h();
        synchronized (c0963flMo2146h.f2681b) {
            if (iOException instanceof StreamResetException) {
                Http2ErrorCode enumC1390wl = ((StreamResetException) iOException).errorCode;
                if (enumC1390wl == Http2ErrorCode.REFUSED_STREAM) {
                    int i = c0963flMo2146h.f2693n + 1;
                    c0963flMo2146h.f2693n = i;
                    if (i > 1) {
                        c0963flMo2146h.f2690k = true;
                        c0963flMo2146h.f2691l++;
                    }
                } else if (enumC1390wl != Http2ErrorCode.CANCEL) {
                    c0963flMo2146h.f2690k = true;
                    c0963flMo2146h.f2691l++;
                }
            } else if (!c0963flMo2146h.m1831g() || (iOException instanceof ConnectionShutdownException)) {
                c0963flMo2146h.f2690k = true;
                if (c0963flMo2146h.f2692m == 0) {
                    c0963flMo2146h.f2681b.m1884b(c0963flMo2146h.f2682c, iOException);
                    c0963flMo2146h.f2691l++;
                }
            }
        }
    }
}
