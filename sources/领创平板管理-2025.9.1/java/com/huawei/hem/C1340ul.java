package com.huawei.hem;

import anet.channel.util.HttpConstant;
import com.huawei.hem.C0910dk;
import com.huawei.hem.C1088kk;
import com.huawei.hem.C1438yj;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;

/* compiled from: Http1ExchangeCodec.java */
/* renamed from: com.huawei.hem.ul */
/* loaded from: classes.dex */
public final class C1340ul implements InterfaceC1165nl {

    /* renamed from: a */
    public final C0910dk f3875a;

    /* renamed from: b */
    public final C0963fl f3876b;

    /* renamed from: c */
    public final InterfaceC1066jn f3877c;

    /* renamed from: d */
    public final InterfaceC1041in f3878d;

    /* renamed from: e */
    public int f3879e = 0;

    /* renamed from: f */
    public long f3880f = 262144;

    /* renamed from: g */
    public C1438yj f3881g;

    /* compiled from: Http1ExchangeCodec.java */
    /* renamed from: com.huawei.hem.ul$b */
    public abstract class b implements InterfaceC0836ao {

        /* renamed from: a */
        public final C1167nn f3882a;

        /* renamed from: b */
        public boolean f3883b;

        public b(a aVar) {
            this.f3882a = new C1167nn(C1340ul.this.f3877c.mo1381n());
        }

        /* renamed from: a */
        public final void m2822a() {
            C1340ul c1340ul = C1340ul.this;
            int i = c1340ul.f3879e;
            if (i == 6) {
                return;
            }
            if (i == 5) {
                C1340ul.m2817i(c1340ul, this.f3882a);
                C1340ul.this.f3879e = 6;
            } else {
                StringBuilder sbM1765j = C0948f6.m1765j("state: ");
                sbM1765j.append(C1340ul.this.f3879e);
                throw new IllegalStateException(sbM1765j.toString());
            }
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        public long mo1380e(C1016hn c1016hn, long j) throws IOException {
            try {
                return C1340ul.this.f3877c.mo1380e(c1016hn, j);
            } catch (IOException e) {
                C1340ul.this.f3876b.m1833i();
                m2822a();
                throw e;
            }
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: n */
        public C0862bo mo1381n() {
            return this.f3882a;
        }
    }

    /* compiled from: Http1ExchangeCodec.java */
    /* renamed from: com.huawei.hem.ul$c */
    public final class c implements InterfaceC1467zn {

        /* renamed from: a */
        public final C1167nn f3885a;

        /* renamed from: b */
        public boolean f3886b;

        public c() {
            this.f3885a = new C1167nn(C1340ul.this.f3878d.mo1621n());
        }

        @Override // com.huawei.hem.InterfaceC1467zn, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f3886b) {
                return;
            }
            this.f3886b = true;
            C1340ul.this.f3878d.mo1978H("0\r\n\r\n");
            C1340ul.m2817i(C1340ul.this, this.f3885a);
            C1340ul.this.f3879e = 3;
        }

        @Override // com.huawei.hem.InterfaceC1467zn, java.io.Flushable
        public synchronized void flush() {
            if (this.f3886b) {
                return;
            }
            C1340ul.this.f3878d.flush();
        }

        @Override // com.huawei.hem.InterfaceC1467zn
        /* renamed from: n */
        public C0862bo mo1621n() {
            return this.f3885a;
        }

        @Override // com.huawei.hem.InterfaceC1467zn
        /* renamed from: p */
        public void mo1619p(C1016hn c1016hn, long j) {
            if (this.f3886b) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            C1340ul.this.f3878d.mo2010r(j);
            C1340ul.this.f3878d.mo1978H("\r\n");
            C1340ul.this.f3878d.mo1619p(c1016hn, j);
            C1340ul.this.f3878d.mo1978H("\r\n");
        }
    }

    /* compiled from: Http1ExchangeCodec.java */
    /* renamed from: com.huawei.hem.ul$d */
    public class d extends b {

        /* renamed from: d */
        public final C1463zj f3888d;

        /* renamed from: e */
        public long f3889e;

        /* renamed from: f */
        public boolean f3890f;

        public d(C1463zj c1463zj) {
            super(null);
            this.f3889e = -1L;
            this.f3890f = true;
            this.f3888d = c1463zj;
        }

        @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3883b) {
                return;
            }
            if (this.f3890f && !C1314tk.m2755j(this, 100, TimeUnit.MILLISECONDS)) {
                C1340ul.this.f3876b.m1833i();
                m2822a();
            }
            this.f3883b = true;
        }

        @Override // com.huawei.hem.C1340ul.b, com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        public long mo1380e(C1016hn c1016hn, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException(C0948f6.m1755M("byteCount < 0: ", j));
            }
            if (this.f3883b) {
                throw new IllegalStateException("closed");
            }
            if (!this.f3890f) {
                return -1L;
            }
            long j2 = this.f3889e;
            if (j2 == 0 || j2 == -1) {
                if (this.f3889e != -1) {
                    C1340ul.this.f3877c.mo2013u();
                }
                try {
                    this.f3889e = C1340ul.this.f3877c.mo1981K();
                    String strTrim = C1340ul.this.f3877c.mo2013u().trim();
                    if (this.f3889e < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                        throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f3889e + strTrim + "\"");
                    }
                    if (this.f3889e == 0) {
                        this.f3890f = false;
                        C1340ul c1340ul = C1340ul.this;
                        c1340ul.f3881g = c1340ul.m2820l();
                        C1340ul c1340ul2 = C1340ul.this;
                        C1215pl.m2494d(c1340ul2.f3875a.f2425i, this.f3888d, c1340ul2.f3881g);
                        m2822a();
                    }
                    if (!this.f3890f) {
                        return -1L;
                    }
                } catch (NumberFormatException e) {
                    throw new ProtocolException(e.getMessage());
                }
            }
            long jMo1380e = super.mo1380e(c1016hn, Math.min(j, this.f3889e));
            if (jMo1380e != -1) {
                this.f3889e -= jMo1380e;
                return jMo1380e;
            }
            C1340ul.this.f3876b.m1833i();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            m2822a();
            throw protocolException;
        }
    }

    /* compiled from: Http1ExchangeCodec.java */
    /* renamed from: com.huawei.hem.ul$e */
    public class e extends b {

        /* renamed from: d */
        public long f3892d;

        public e(long j) {
            super(null);
            this.f3892d = j;
            if (j == 0) {
                m2822a();
            }
        }

        @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3883b) {
                return;
            }
            if (this.f3892d != 0 && !C1314tk.m2755j(this, 100, TimeUnit.MILLISECONDS)) {
                C1340ul.this.f3876b.m1833i();
                m2822a();
            }
            this.f3883b = true;
        }

        @Override // com.huawei.hem.C1340ul.b, com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        public long mo1380e(C1016hn c1016hn, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException(C0948f6.m1755M("byteCount < 0: ", j));
            }
            if (this.f3883b) {
                throw new IllegalStateException("closed");
            }
            long j2 = this.f3892d;
            if (j2 == 0) {
                return -1L;
            }
            long jMo1380e = super.mo1380e(c1016hn, Math.min(j2, j));
            if (jMo1380e == -1) {
                C1340ul.this.f3876b.m1833i();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m2822a();
                throw protocolException;
            }
            long j3 = this.f3892d - jMo1380e;
            this.f3892d = j3;
            if (j3 == 0) {
                m2822a();
            }
            return jMo1380e;
        }
    }

    /* compiled from: Http1ExchangeCodec.java */
    /* renamed from: com.huawei.hem.ul$f */
    public final class f implements InterfaceC1467zn {

        /* renamed from: a */
        public final C1167nn f3894a;

        /* renamed from: b */
        public boolean f3895b;

        public f(a aVar) {
            this.f3894a = new C1167nn(C1340ul.this.f3878d.mo1621n());
        }

        @Override // com.huawei.hem.InterfaceC1467zn, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3895b) {
                return;
            }
            this.f3895b = true;
            C1340ul.m2817i(C1340ul.this, this.f3894a);
            C1340ul.this.f3879e = 3;
        }

        @Override // com.huawei.hem.InterfaceC1467zn, java.io.Flushable
        public void flush() {
            if (this.f3895b) {
                return;
            }
            C1340ul.this.f3878d.flush();
        }

        @Override // com.huawei.hem.InterfaceC1467zn
        /* renamed from: n */
        public C0862bo mo1621n() {
            return this.f3894a;
        }

        @Override // com.huawei.hem.InterfaceC1467zn
        /* renamed from: p */
        public void mo1619p(C1016hn c1016hn, long j) {
            if (this.f3895b) {
                throw new IllegalStateException("closed");
            }
            C1314tk.m2748c(c1016hn.f2884b, 0L, j);
            C1340ul.this.f3878d.mo1619p(c1016hn, j);
        }
    }

    /* compiled from: Http1ExchangeCodec.java */
    /* renamed from: com.huawei.hem.ul$g */
    public class g extends b {

        /* renamed from: d */
        public boolean f3897d;

        public g(C1340ul c1340ul, a aVar) {
            super(null);
        }

        @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3883b) {
                return;
            }
            if (!this.f3897d) {
                m2822a();
            }
            this.f3883b = true;
        }

        @Override // com.huawei.hem.C1340ul.b, com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        public long mo1380e(C1016hn c1016hn, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException(C0948f6.m1755M("byteCount < 0: ", j));
            }
            if (this.f3883b) {
                throw new IllegalStateException("closed");
            }
            if (this.f3897d) {
                return -1L;
            }
            long jMo1380e = super.mo1380e(c1016hn, j);
            if (jMo1380e != -1) {
                return jMo1380e;
            }
            this.f3897d = true;
            m2822a();
            return -1L;
        }
    }

    public C1340ul(C0910dk c0910dk, C0963fl c0963fl, InterfaceC1066jn interfaceC1066jn, InterfaceC1041in interfaceC1041in) {
        this.f3875a = c0910dk;
        this.f3876b = c0963fl;
        this.f3877c = interfaceC1066jn;
        this.f3878d = interfaceC1041in;
    }

    /* renamed from: i */
    public static void m2817i(C1340ul c1340ul, C1167nn c1167nn) {
        if (c1340ul == null) {
            throw null;
        }
        C0862bo c0862bo = c1167nn.f3363e;
        c1167nn.f3363e = C0862bo.f2312d;
        c0862bo.mo1426a();
        c0862bo.mo1427b();
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: a */
    public void mo2139a() {
        this.f3878d.flush();
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: b */
    public void mo2140b(C0988gk c0988gk) {
        Proxy.Type type = this.f3876b.f2682c.f3354b.type();
        StringBuilder sb = new StringBuilder();
        sb.append(c0988gk.f2786b);
        sb.append(' ');
        if (!c0988gk.f2785a.f4311a.equals(HttpConstant.HTTPS) && type == Proxy.Type.HTTP) {
            sb.append(c0988gk.f2785a);
        } else {
            sb.append(C1339uk.m2816b(c0988gk.f2785a));
        }
        sb.append(" HTTP/1.1");
        m2821m(c0988gk.f2787c, sb.toString());
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: c */
    public void mo2141c() {
        this.f3878d.flush();
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    public void cancel() throws IOException {
        C0963fl c0963fl = this.f3876b;
        if (c0963fl != null) {
            C1314tk.m2750e(c0963fl.f2683d);
        }
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: d */
    public long mo2142d(C1088kk c1088kk) {
        if (!C1215pl.m2492b(c1088kk)) {
            return 0L;
        }
        String strM3110c = c1088kk.f3096f.m3110c("Transfer-Encoding");
        if (strM3110c == null) {
            strM3110c = null;
        }
        if ("chunked".equalsIgnoreCase(strM3110c)) {
            return -1L;
        }
        return C1215pl.m2491a(c1088kk);
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: e */
    public InterfaceC0836ao mo2143e(C1088kk c1088kk) {
        if (!C1215pl.m2492b(c1088kk)) {
            return m2818j(0L);
        }
        String strM3110c = c1088kk.f3096f.m3110c("Transfer-Encoding");
        if (strM3110c == null) {
            strM3110c = null;
        }
        if ("chunked".equalsIgnoreCase(strM3110c)) {
            C1463zj c1463zj = c1088kk.f3091a.f2785a;
            if (this.f3879e == 4) {
                this.f3879e = 5;
                return new d(c1463zj);
            }
            StringBuilder sbM1765j = C0948f6.m1765j("state: ");
            sbM1765j.append(this.f3879e);
            throw new IllegalStateException(sbM1765j.toString());
        }
        long jM2491a = C1215pl.m2491a(c1088kk);
        if (jM2491a != -1) {
            return m2818j(jM2491a);
        }
        if (this.f3879e == 4) {
            this.f3879e = 5;
            this.f3876b.m1833i();
            return new g(this, null);
        }
        StringBuilder sbM1765j2 = C0948f6.m1765j("state: ");
        sbM1765j2.append(this.f3879e);
        throw new IllegalStateException(sbM1765j2.toString());
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: f */
    public InterfaceC1467zn mo2144f(C0988gk c0988gk, long j) {
        if ("chunked".equalsIgnoreCase(c0988gk.f2787c.m3110c("Transfer-Encoding"))) {
            if (this.f3879e == 1) {
                this.f3879e = 2;
                return new c();
            }
            StringBuilder sbM1765j = C0948f6.m1765j("state: ");
            sbM1765j.append(this.f3879e);
            throw new IllegalStateException(sbM1765j.toString());
        }
        if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.f3879e == 1) {
            this.f3879e = 2;
            return new f(null);
        }
        StringBuilder sbM1765j2 = C0948f6.m1765j("state: ");
        sbM1765j2.append(this.f3879e);
        throw new IllegalStateException(sbM1765j2.toString());
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: g */
    public C1088kk.a mo2145g(boolean z) {
        int i = this.f3879e;
        if (i != 1 && i != 3) {
            StringBuilder sbM1765j = C0948f6.m1765j("state: ");
            sbM1765j.append(this.f3879e);
            throw new IllegalStateException(sbM1765j.toString());
        }
        try {
            C1315tl c1315tlM2772a = C1315tl.m2772a(m2819k());
            C1088kk.a aVar = new C1088kk.a();
            aVar.f3106b = c1315tlM2772a.f3826a;
            aVar.f3107c = c1315tlM2772a.f3827b;
            aVar.f3108d = c1315tlM2772a.f3828c;
            aVar.m2203e(m2820l());
            if (z && c1315tlM2772a.f3827b == 100) {
                return null;
            }
            if (c1315tlM2772a.f3827b == 100) {
                this.f3879e = 3;
                return aVar;
            }
            this.f3879e = 4;
            return aVar;
        } catch (EOFException e2) {
            C0963fl c0963fl = this.f3876b;
            throw new IOException(C0948f6.m1760e("unexpected end of stream on ", c0963fl != null ? c0963fl.f2682c.f3353a.f2662a.m3163o() : "unknown"), e2);
        }
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: h */
    public C0963fl mo2146h() {
        return this.f3876b;
    }

    /* renamed from: j */
    public final InterfaceC0836ao m2818j(long j) {
        if (this.f3879e == 4) {
            this.f3879e = 5;
            return new e(j);
        }
        StringBuilder sbM1765j = C0948f6.m1765j("state: ");
        sbM1765j.append(this.f3879e);
        throw new IllegalStateException(sbM1765j.toString());
    }

    /* renamed from: k */
    public final String m2819k() {
        String strMo1976F = this.f3877c.mo1976F(this.f3880f);
        this.f3880f -= strMo1976F.length();
        return strMo1976F;
    }

    /* renamed from: l */
    public final C1438yj m2820l() {
        C1438yj.a aVar = new C1438yj.a();
        while (true) {
            String strM2819k = m2819k();
            if (strM2819k.length() == 0) {
                return new C1438yj(aVar);
            }
            if (((C0910dk.a) AbstractC1264rk.f3645a) == null) {
                throw null;
            }
            int iIndexOf = strM2819k.indexOf(":", 1);
            if (iIndexOf != -1) {
                aVar.m3115a(strM2819k.substring(0, iIndexOf), strM2819k.substring(iIndexOf + 1));
            } else if (strM2819k.startsWith(":")) {
                String strSubstring = strM2819k.substring(1);
                aVar.f4230a.add("");
                aVar.f4230a.add(strSubstring.trim());
            } else {
                aVar.f4230a.add("");
                aVar.f4230a.add(strM2819k.trim());
            }
        }
    }

    /* renamed from: m */
    public void m2821m(C1438yj c1438yj, String str) {
        if (this.f3879e != 0) {
            StringBuilder sbM1765j = C0948f6.m1765j("state: ");
            sbM1765j.append(this.f3879e);
            throw new IllegalStateException(sbM1765j.toString());
        }
        this.f3878d.mo1978H(str).mo1978H("\r\n");
        int iM3113g = c1438yj.m3113g();
        for (int i = 0; i < iM3113g; i++) {
            this.f3878d.mo1978H(c1438yj.m3111d(i)).mo1978H(": ").mo1978H(c1438yj.m3114h(i)).mo1978H("\r\n");
        }
        this.f3878d.mo1978H("\r\n");
        this.f3879e = 1;
    }
}
