package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import android.support.v7.widget.RecyclerView;
import anet.channel.util.HttpConstant;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.OkHttp2Connection;
import com.huawei.hem.OkHttpRequest;
import com.huawei.hem.OkHttpResponse;
import com.huawei.hem.Http1ExchangeCodec;
import com.huawei.hem.OkHttpHeaderList;
import com.huawei.hem.OkHttpInterceptor;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: RealConnection.java */
/* renamed from: com.huawei.hem.fl */
/* loaded from: classes.dex */
public final class RealConnection extends OkHttp2Connection.e {

    /* renamed from: b */
    public final RealConnectionPool f2681b;

    /* renamed from: c */
    public final Route f2682c;

    /* renamed from: d */
    public Socket f2683d;

    /* renamed from: e */
    public Socket f2684e;

    /* renamed from: f */
    public Handshake f2685f;

    /* renamed from: g */
    public Protocol f2686g;

    /* renamed from: h */
    public OkHttp2Connection f2687h;

    /* renamed from: i */
    public BufferedSource f2688i;

    /* renamed from: j */
    public BufferedSink f2689j;

    /* renamed from: k */
    public boolean f2690k;

    /* renamed from: l */
    public int f2691l;

    /* renamed from: m */
    public int f2692m;

    /* renamed from: n */
    public int f2693n;

    /* renamed from: o */
    public int f2694o = 1;

    /* renamed from: p */
    public final List<Reference<Transmitter>> f2695p = new ArrayList();

    /* renamed from: q */
    public long f2696q = RecyclerView.FOREVER_NS;

    public RealConnection(RealConnectionPool c0989gl, Route c1164nk) {
        this.f2681b = c0989gl;
        this.f2682c = c1164nk;
    }

    @Override // com.huawei.hem.C0834am.e
    /* renamed from: a */
    public void mo1377a(OkHttp2Connection c0834am) {
        synchronized (this.f2681b) {
            this.f2694o = c0834am.m1368d();
        }
    }

    @Override // com.huawei.hem.C0834am.e
    /* renamed from: b */
    public void mo1378b(Http2Stream c1116lm) {
        c1116lm.m2329c(Http2ErrorCode.REFUSED_STREAM, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bf A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0122 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1827c(int r14, int r15, int r16, int r17, boolean r18, com.huawei.hem.Call r19, com.huawei.hem.EventListener r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0963fl.m1827c(int, int, int, int, boolean, com.huawei.hem.kj, com.huawei.hem.vj):void");
    }

    /* renamed from: d */
    public final void m1828d(int i, int i2, Call interfaceC1087kj, EventListener abstractC1363vj) throws IOException {
        Route c1164nk = this.f2682c;
        Proxy proxy = c1164nk.f3354b;
        Socket socketCreateSocket = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? c1164nk.f3353a.f2664c.createSocket() : new Socket(proxy);
        this.f2683d = socketCreateSocket;
        InetSocketAddress inetSocketAddress = this.f2682c.f3355c;
        if (abstractC1363vj == null) {
            throw null;
        }
        socketCreateSocket.setSoTimeout(i2);
        try {
            Platform.f4029a.mo2703h(this.f2683d, this.f2682c.f3355c, i);
            try {
                this.f2688i = new RealBufferedSource(OkioStreamFactory.m2675g(this.f2683d));
                this.f2689j = new RealBufferedSink(OkioStreamFactory.m2672d(this.f2683d));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Failed to connect to ");
            sbM1765j.append(this.f2682c.f3355c);
            ConnectException connectException = new ConnectException(sbM1765j.toString());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.huawei.hem.dk, com.huawei.hem.fl] */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* renamed from: e */
    public final void m1829e(int i, int i2, int i3, Call interfaceC1087kj, EventListener abstractC1363vj) throws IOException {
        OkHttpRequest.a aVar = new OkHttpRequest.a();
        aVar.m1882f(this.f2682c.f3353a.f2662a);
        boolean z = false;
        aVar.m1879c("CONNECT", null);
        boolean z2 = true;
        aVar.m1878b(HttpConstant.HOST, OkHttpCommonUtilities.m2758m(this.f2682c.f3353a.f2662a, true));
        aVar.m1878b("Proxy-Connection", "Keep-Alive");
        aVar.m1878b(LazyHeaders.Builder.USER_AGENT_HEADER, "okhttp/3.14.9");
        OkHttpRequest c0988gkM1877a = aVar.m1877a();
        OkHttpResponse.a aVar2 = new OkHttpResponse.a();
        aVar2.f3105a = c0988gkM1877a;
        aVar2.f3106b = Protocol.HTTP_1_1;
        aVar2.f3107c = 407;
        aVar2.f3108d = "Preemptive Authenticate";
        aVar2.f3111g = OkHttpCommonUtilities.f3818d;
        aVar2.f3115k = -1L;
        aVar2.f3116l = -1L;
        OkHttpHeaderList.a aVar3 = aVar2.f3110f;
        if (aVar3 == null) {
            throw null;
        }
        OkHttpHeaderList.m3107a("Proxy-Authenticate");
        OkHttpHeaderList.m3108b("OkHttp-Preemptive", "Proxy-Authenticate");
        aVar3.m3116b("Proxy-Authenticate");
        aVar3.f4230a.add("Proxy-Authenticate");
        aVar3.f4230a.add("OkHttp-Preemptive");
        OkHttpResponse c1088kkM2200b = aVar2.m2200b();
        Route c1164nk = this.f2682c;
        OkHttpRequest c0988gkMo1420a = c1164nk.f3353a.f2665d.mo1420a(c1164nk, c1088kkM2200b);
        if (c0988gkMo1420a != null) {
            c0988gkM1877a = c0988gkMo1420a;
        }
        OkHttpUrl c1463zj = c0988gkM1877a.f2785a;
        int i4 = 0;
        while (i4 < 21) {
            m1828d(i, i2, interfaceC1087kj, abstractC1363vj);
            String str = "CONNECT " + OkHttpCommonUtilities.m2758m(c1463zj, z2) + " HTTP/1.1";
            ?? r4 = z;
            while (true) {
                Http1ExchangeCodec c1340ul = new Http1ExchangeCodec(r4, r4, this.f2688i, this.f2689j);
                this.f2688i.mo1381n().mo1432g(i2, TimeUnit.MILLISECONDS);
                this.f2689j.mo1621n().mo1432g(i3, TimeUnit.MILLISECONDS);
                c1340ul.m2821m(c0988gkM1877a.f2787c, str);
                c1340ul.f3878d.flush();
                OkHttpResponse.a aVarMo2145g = c1340ul.mo2145g(false);
                aVarMo2145g.f3105a = c0988gkM1877a;
                OkHttpResponse c1088kkM2200b2 = aVarMo2145g.m2200b();
                long jM2491a = OkHttpHeaders.m2491a(c1088kkM2200b2);
                if (jM2491a != -1) {
                    Source interfaceC0836aoM2818j = c1340ul.m2818j(jM2491a);
                    OkHttpCommonUtilities.m2769x(interfaceC0836aoM2818j, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, TimeUnit.MILLISECONDS);
                    ((Http1ExchangeCodec.e) interfaceC0836aoM2818j).close();
                }
                int i5 = c1088kkM2200b2.f3093c;
                if (i5 != 200) {
                    if (i5 != 407) {
                        StringBuilder sbM1765j = CompilerOutline.m1765j("Unexpected response code for CONNECT: ");
                        sbM1765j.append(c1088kkM2200b2.f3093c);
                        throw new IOException(sbM1765j.toString());
                    }
                    Route c1164nk2 = this.f2682c;
                    OkHttpRequest c0988gkMo1420a2 = c1164nk2.f3353a.f2665d.mo1420a(c1164nk2, c1088kkM2200b2);
                    if (c0988gkMo1420a2 == null) {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                    String strM3110c = c1088kkM2200b2.f3096f.m3110c("Connection");
                    if (strM3110c == null) {
                        strM3110c = null;
                    }
                    if ("close".equalsIgnoreCase(strM3110c)) {
                        c0988gkM1877a = c0988gkMo1420a2;
                        break;
                    } else {
                        r4 = 0;
                        c0988gkM1877a = c0988gkMo1420a2;
                    }
                } else {
                    if (!this.f2688i.mo2016x().mo2017y() || !this.f2689j.mo2007m().mo2017y()) {
                        throw new IOException("TLS tunnel buffered too many bytes!");
                    }
                    c0988gkM1877a = null;
                }
            }
            if (c0988gkM1877a == null) {
                return;
            }
            OkHttpCommonUtilities.m2750e(this.f2683d);
            this.f2683d = null;
            this.f2689j = null;
            this.f2688i = null;
            InetSocketAddress inetSocketAddress = this.f2682c.f3355c;
            i4++;
            z = false;
            z2 = true;
        }
    }

    /* renamed from: f */
    public final void m1830f(ConnectionSpecSelector c0885cl, int i, Call interfaceC1087kj, EventListener abstractC1363vj) throws Throwable {
        SSLSocket sSLSocket;
        OkHttpAddress c0961fj = this.f2682c.f3353a;
        SSLSocketFactory sSLSocketFactory = c0961fj.f2670i;
        if (sSLSocketFactory == null) {
            if (!c0961fj.f2666e.contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
                this.f2684e = this.f2683d;
                this.f2686g = Protocol.HTTP_1_1;
                return;
            } else {
                this.f2684e = this.f2683d;
                this.f2686g = Protocol.H2_PRIOR_KNOWLEDGE;
                m1834j(i);
                return;
            }
        }
        try {
            if (abstractC1363vj == null) {
                throw null;
            }
            try {
                sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(this.f2683d, c0961fj.f2662a.f4314d, c0961fj.f2662a.f4315e, true);
            } catch (AssertionError e) {
                e = e;
            }
            try {
                ConnectionSpec c1213pjM1540a = c0885cl.m1540a(sSLSocket);
                if (c1213pjM1540a.f3471b) {
                    Platform.f4029a.mo2667g(sSLSocket, c0961fj.f2662a.f4314d, c0961fj.f2666e);
                }
                sSLSocket.startHandshake();
                SSLSession session = sSLSocket.getSession();
                Handshake c1413xjM2947a = Handshake.m2947a(session);
                if (c0961fj.f2671j.verify(c0961fj.f2662a.f4314d, session)) {
                    c0961fj.f2672k.m2392a(c0961fj.f2662a.f4314d, c1413xjM2947a.f4083c);
                    String strMo2668j = c1213pjM1540a.f3471b ? Platform.f4029a.mo2668j(sSLSocket) : null;
                    this.f2684e = sSLSocket;
                    this.f2688i = new RealBufferedSource(OkioStreamFactory.m2675g(sSLSocket));
                    this.f2689j = new RealBufferedSink(OkioStreamFactory.m2672d(this.f2684e));
                    this.f2685f = c1413xjM2947a;
                    this.f2686g = strMo2668j != null ? Protocol.get(strMo2668j) : Protocol.HTTP_1_1;
                    Platform.f4029a.mo2824a(sSLSocket);
                    if (this.f2686g == Protocol.HTTP_2) {
                        m1834j(i);
                        return;
                    }
                    return;
                }
                List<Certificate> list = c1413xjM2947a.f4083c;
                if (list.isEmpty()) {
                    throw new SSLPeerUnverifiedException("Hostname " + c0961fj.f2662a.f4314d + " not verified (no certificates)");
                }
                X509Certificate x509Certificate = (X509Certificate) list.get(0);
                throw new SSLPeerUnverifiedException("Hostname " + c0961fj.f2662a.f4314d + " not verified:\n    certificate: " + CertificatePinner.m2391b(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + OkHostnameVerifier.m1423a(x509Certificate));
            } catch (AssertionError e2) {
                e = e2;
                if (!OkHttpCommonUtilities.m2765t(e)) {
                    throw e;
                }
                throw new IOException(e);
            } catch (Throwable th) {
                th = th;
                if (sSLSocket != null) {
                    Platform.f4029a.mo2824a(sSLSocket);
                }
                OkHttpCommonUtilities.m2750e(sSLSocket);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            sSLSocket = null;
        }
    }

    /* renamed from: g */
    public boolean m1831g() {
        return this.f2687h != null;
    }

    /* renamed from: h */
    public ExchangeCodec m1832h(OkHttpClient c0910dk, OkHttpInterceptor.a aVar) throws SocketException {
        if (this.f2687h != null) {
            return new Http2ExchangeCodec(c0910dk, this, aVar, this.f2687h);
        }
        this.f2684e.setSoTimeout(((RealInterceptorChain) aVar).f3584h);
        this.f2688i.mo1381n().mo1432g(r6.f3584h, TimeUnit.MILLISECONDS);
        this.f2689j.mo1621n().mo1432g(r6.f3585i, TimeUnit.MILLISECONDS);
        return new Http1ExchangeCodec(c0910dk, this, this.f2688i, this.f2689j);
    }

    /* renamed from: i */
    public void m1833i() {
        synchronized (this.f2681b) {
            this.f2690k = true;
        }
    }

    /* renamed from: j */
    public final void m1834j(int i) throws SocketException {
        this.f2684e.setSoTimeout(0);
        OkHttp2Connection.c cVar = new OkHttp2Connection.c(true);
        Socket socket = this.f2684e;
        String str = this.f2682c.f3353a.f2662a.f4314d;
        BufferedSource interfaceC1066jn = this.f2688i;
        BufferedSink interfaceC1041in = this.f2689j;
        cVar.f2247a = socket;
        cVar.f2248b = str;
        cVar.f2249c = interfaceC1066jn;
        cVar.f2250d = interfaceC1041in;
        cVar.f2251e = this;
        cVar.f2254h = i;
        OkHttp2Connection c0834am = new OkHttp2Connection(cVar);
        this.f2687h = c0834am;
        Http2Writer c1141mm = c0834am.f2238v;
        synchronized (c1141mm) {
            if (c1141mm.f3281e) {
                throw new IOException("closed");
            }
            if (c1141mm.f3278b) {
                if (Http2Writer.f3276g.isLoggable(Level.FINE)) {
                    Http2Writer.f3276g.fine(OkHttpCommonUtilities.m2756k(">> CONNECTION %s", Http2.f4327a.hex()));
                }
                c1141mm.f3277a.mo1972B(Http2.f4327a.toByteArray());
                c1141mm.f3277a.flush();
            }
        }
        Http2Writer c1141mm2 = c0834am.f2238v;
        Http2Settings c1216pm = c0834am.f2235s;
        synchronized (c1141mm2) {
            if (c1141mm2.f3281e) {
                throw new IOException("closed");
            }
            c1141mm2.m2398d(0, Integer.bitCount(c1216pm.f3479a) * 6, (byte) 4, (byte) 0);
            int i2 = 0;
            while (i2 < 10) {
                if (((1 << i2) & c1216pm.f3479a) != 0) {
                    c1141mm2.f3277a.mo2011s(i2 == 4 ? 3 : i2 == 7 ? 4 : i2);
                    c1141mm2.f3277a.mo2012t(c1216pm.f3480b[i2]);
                }
                i2++;
            }
            c1141mm2.f3277a.flush();
        }
        if (c0834am.f2235s.m2496a() != 65535) {
            c0834am.f2238v.m2403j(0, r0 - 65535);
        }
        new Thread(c0834am.f2239w).start();
    }

    /* renamed from: k */
    public boolean m1835k(OkHttpUrl c1463zj) {
        int i = c1463zj.f4315e;
        OkHttpUrl c1463zj2 = this.f2682c.f3353a.f2662a;
        if (i != c1463zj2.f4315e) {
            return false;
        }
        if (c1463zj.f4314d.equals(c1463zj2.f4314d)) {
            return true;
        }
        Handshake c1413xj = this.f2685f;
        return c1413xj != null && OkHostnameVerifier.f2311a.m1425c(c1463zj.f4314d, (X509Certificate) c1413xj.f4083c.get(0));
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Connection{");
        sbM1765j.append(this.f2682c.f3353a.f2662a.f4314d);
        sbM1765j.append(":");
        sbM1765j.append(this.f2682c.f3353a.f2662a.f4315e);
        sbM1765j.append(", proxy=");
        sbM1765j.append(this.f2682c.f3354b);
        sbM1765j.append(" hostAddress=");
        sbM1765j.append(this.f2682c.f3355c);
        sbM1765j.append(" cipherSuite=");
        Handshake c1413xj = this.f2685f;
        sbM1765j.append(c1413xj != null ? c1413xj.f4082b : "none");
        sbM1765j.append(" protocol=");
        sbM1765j.append(this.f2686g);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }
}
