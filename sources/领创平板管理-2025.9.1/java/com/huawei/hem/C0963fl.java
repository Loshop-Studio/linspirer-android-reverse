package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import android.support.v7.widget.RecyclerView;
import anet.channel.util.HttpConstant;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.C0834am;
import com.huawei.hem.C0988gk;
import com.huawei.hem.C1088kk;
import com.huawei.hem.C1340ul;
import com.huawei.hem.C1438yj;
import com.huawei.hem.InterfaceC0832ak;
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
public final class C0963fl extends C0834am.e {

    /* renamed from: b */
    public final C0989gl f2681b;

    /* renamed from: c */
    public final C1164nk f2682c;

    /* renamed from: d */
    public Socket f2683d;

    /* renamed from: e */
    public Socket f2684e;

    /* renamed from: f */
    public C1413xj f2685f;

    /* renamed from: g */
    public EnumC0936ek f2686g;

    /* renamed from: h */
    public C0834am f2687h;

    /* renamed from: i */
    public InterfaceC1066jn f2688i;

    /* renamed from: j */
    public InterfaceC1041in f2689j;

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
    public final List<Reference<C1089kl>> f2695p = new ArrayList();

    /* renamed from: q */
    public long f2696q = RecyclerView.FOREVER_NS;

    public C0963fl(C0989gl c0989gl, C1164nk c1164nk) {
        this.f2681b = c0989gl;
        this.f2682c = c1164nk;
    }

    @Override // com.huawei.hem.C0834am.e
    /* renamed from: a */
    public void mo1377a(C0834am c0834am) {
        synchronized (this.f2681b) {
            this.f2694o = c0834am.m1368d();
        }
    }

    @Override // com.huawei.hem.C0834am.e
    /* renamed from: b */
    public void mo1378b(C1116lm c1116lm) {
        c1116lm.m2329c(EnumC1390wl.REFUSED_STREAM, null);
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
    public void m1827c(int r14, int r15, int r16, int r17, boolean r18, com.huawei.hem.InterfaceC1087kj r19, com.huawei.hem.AbstractC1363vj r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0963fl.m1827c(int, int, int, int, boolean, com.huawei.hem.kj, com.huawei.hem.vj):void");
    }

    /* renamed from: d */
    public final void m1828d(int i, int i2, InterfaceC1087kj interfaceC1087kj, AbstractC1363vj abstractC1363vj) throws IOException {
        C1164nk c1164nk = this.f2682c;
        Proxy proxy = c1164nk.f3354b;
        Socket socketCreateSocket = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? c1164nk.f3353a.f2664c.createSocket() : new Socket(proxy);
        this.f2683d = socketCreateSocket;
        InetSocketAddress inetSocketAddress = this.f2682c.f3355c;
        if (abstractC1363vj == null) {
            throw null;
        }
        socketCreateSocket.setSoTimeout(i2);
        try {
            C1391wm.f4029a.mo2703h(this.f2683d, this.f2682c.f3355c, i);
            try {
                this.f2688i = new C1367vn(C1267rn.m2675g(this.f2683d));
                this.f2689j = new C1342un(C1267rn.m2672d(this.f2683d));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            StringBuilder sbM1765j = C0948f6.m1765j("Failed to connect to ");
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
    public final void m1829e(int i, int i2, int i3, InterfaceC1087kj interfaceC1087kj, AbstractC1363vj abstractC1363vj) throws IOException {
        C0988gk.a aVar = new C0988gk.a();
        aVar.m1882f(this.f2682c.f3353a.f2662a);
        boolean z = false;
        aVar.m1879c("CONNECT", null);
        boolean z2 = true;
        aVar.m1878b(HttpConstant.HOST, C1314tk.m2758m(this.f2682c.f3353a.f2662a, true));
        aVar.m1878b("Proxy-Connection", "Keep-Alive");
        aVar.m1878b(LazyHeaders.Builder.USER_AGENT_HEADER, "okhttp/3.14.9");
        C0988gk c0988gkM1877a = aVar.m1877a();
        C1088kk.a aVar2 = new C1088kk.a();
        aVar2.f3105a = c0988gkM1877a;
        aVar2.f3106b = EnumC0936ek.HTTP_1_1;
        aVar2.f3107c = 407;
        aVar2.f3108d = "Preemptive Authenticate";
        aVar2.f3111g = C1314tk.f3818d;
        aVar2.f3115k = -1L;
        aVar2.f3116l = -1L;
        C1438yj.a aVar3 = aVar2.f3110f;
        if (aVar3 == null) {
            throw null;
        }
        C1438yj.m3107a("Proxy-Authenticate");
        C1438yj.m3108b("OkHttp-Preemptive", "Proxy-Authenticate");
        aVar3.m3116b("Proxy-Authenticate");
        aVar3.f4230a.add("Proxy-Authenticate");
        aVar3.f4230a.add("OkHttp-Preemptive");
        C1088kk c1088kkM2200b = aVar2.m2200b();
        C1164nk c1164nk = this.f2682c;
        C0988gk c0988gkMo1420a = c1164nk.f3353a.f2665d.mo1420a(c1164nk, c1088kkM2200b);
        if (c0988gkMo1420a != null) {
            c0988gkM1877a = c0988gkMo1420a;
        }
        C1463zj c1463zj = c0988gkM1877a.f2785a;
        int i4 = 0;
        while (i4 < 21) {
            m1828d(i, i2, interfaceC1087kj, abstractC1363vj);
            String str = "CONNECT " + C1314tk.m2758m(c1463zj, z2) + " HTTP/1.1";
            ?? r4 = z;
            while (true) {
                C1340ul c1340ul = new C1340ul(r4, r4, this.f2688i, this.f2689j);
                this.f2688i.mo1381n().mo1432g(i2, TimeUnit.MILLISECONDS);
                this.f2689j.mo1621n().mo1432g(i3, TimeUnit.MILLISECONDS);
                c1340ul.m2821m(c0988gkM1877a.f2787c, str);
                c1340ul.f3878d.flush();
                C1088kk.a aVarMo2145g = c1340ul.mo2145g(false);
                aVarMo2145g.f3105a = c0988gkM1877a;
                C1088kk c1088kkM2200b2 = aVarMo2145g.m2200b();
                long jM2491a = C1215pl.m2491a(c1088kkM2200b2);
                if (jM2491a != -1) {
                    InterfaceC0836ao interfaceC0836aoM2818j = c1340ul.m2818j(jM2491a);
                    C1314tk.m2769x(interfaceC0836aoM2818j, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, TimeUnit.MILLISECONDS);
                    ((C1340ul.e) interfaceC0836aoM2818j).close();
                }
                int i5 = c1088kkM2200b2.f3093c;
                if (i5 != 200) {
                    if (i5 != 407) {
                        StringBuilder sbM1765j = C0948f6.m1765j("Unexpected response code for CONNECT: ");
                        sbM1765j.append(c1088kkM2200b2.f3093c);
                        throw new IOException(sbM1765j.toString());
                    }
                    C1164nk c1164nk2 = this.f2682c;
                    C0988gk c0988gkMo1420a2 = c1164nk2.f3353a.f2665d.mo1420a(c1164nk2, c1088kkM2200b2);
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
            C1314tk.m2750e(this.f2683d);
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
    public final void m1830f(C0885cl c0885cl, int i, InterfaceC1087kj interfaceC1087kj, AbstractC1363vj abstractC1363vj) throws Throwable {
        SSLSocket sSLSocket;
        C0961fj c0961fj = this.f2682c.f3353a;
        SSLSocketFactory sSLSocketFactory = c0961fj.f2670i;
        if (sSLSocketFactory == null) {
            if (!c0961fj.f2666e.contains(EnumC0936ek.H2_PRIOR_KNOWLEDGE)) {
                this.f2684e = this.f2683d;
                this.f2686g = EnumC0936ek.HTTP_1_1;
                return;
            } else {
                this.f2684e = this.f2683d;
                this.f2686g = EnumC0936ek.H2_PRIOR_KNOWLEDGE;
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
                C1213pj c1213pjM1540a = c0885cl.m1540a(sSLSocket);
                if (c1213pjM1540a.f3471b) {
                    C1391wm.f4029a.mo2667g(sSLSocket, c0961fj.f2662a.f4314d, c0961fj.f2666e);
                }
                sSLSocket.startHandshake();
                SSLSession session = sSLSocket.getSession();
                C1413xj c1413xjM2947a = C1413xj.m2947a(session);
                if (c0961fj.f2671j.verify(c0961fj.f2662a.f4314d, session)) {
                    c0961fj.f2672k.m2392a(c0961fj.f2662a.f4314d, c1413xjM2947a.f4083c);
                    String strMo2668j = c1213pjM1540a.f3471b ? C1391wm.f4029a.mo2668j(sSLSocket) : null;
                    this.f2684e = sSLSocket;
                    this.f2688i = new C1367vn(C1267rn.m2675g(sSLSocket));
                    this.f2689j = new C1342un(C1267rn.m2672d(this.f2684e));
                    this.f2685f = c1413xjM2947a;
                    this.f2686g = strMo2668j != null ? EnumC0936ek.get(strMo2668j) : EnumC0936ek.HTTP_1_1;
                    C1391wm.f4029a.mo2824a(sSLSocket);
                    if (this.f2686g == EnumC0936ek.HTTP_2) {
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
                throw new SSLPeerUnverifiedException("Hostname " + c0961fj.f2662a.f4314d + " not verified:\n    certificate: " + C1138mj.m2391b(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C0861bn.m1423a(x509Certificate));
            } catch (AssertionError e2) {
                e = e2;
                if (!C1314tk.m2765t(e)) {
                    throw e;
                }
                throw new IOException(e);
            } catch (Throwable th) {
                th = th;
                if (sSLSocket != null) {
                    C1391wm.f4029a.mo2824a(sSLSocket);
                }
                C1314tk.m2750e(sSLSocket);
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
    public InterfaceC1165nl m1832h(C0910dk c0910dk, InterfaceC0832ak.a aVar) throws SocketException {
        if (this.f2687h != null) {
            return new C1065jm(c0910dk, this, aVar, this.f2687h);
        }
        this.f2684e.setSoTimeout(((C1240ql) aVar).f3584h);
        this.f2688i.mo1381n().mo1432g(r6.f3584h, TimeUnit.MILLISECONDS);
        this.f2689j.mo1621n().mo1432g(r6.f3585i, TimeUnit.MILLISECONDS);
        return new C1340ul(c0910dk, this, this.f2688i, this.f2689j);
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
        C0834am.c cVar = new C0834am.c(true);
        Socket socket = this.f2684e;
        String str = this.f2682c.f3353a.f2662a.f4314d;
        InterfaceC1066jn interfaceC1066jn = this.f2688i;
        InterfaceC1041in interfaceC1041in = this.f2689j;
        cVar.f2247a = socket;
        cVar.f2248b = str;
        cVar.f2249c = interfaceC1066jn;
        cVar.f2250d = interfaceC1041in;
        cVar.f2251e = this;
        cVar.f2254h = i;
        C0834am c0834am = new C0834am(cVar);
        this.f2687h = c0834am;
        C1141mm c1141mm = c0834am.f2238v;
        synchronized (c1141mm) {
            if (c1141mm.f3281e) {
                throw new IOException("closed");
            }
            if (c1141mm.f3278b) {
                if (C1141mm.f3276g.isLoggable(Level.FINE)) {
                    C1141mm.f3276g.fine(C1314tk.m2756k(">> CONNECTION %s", C1465zl.f4327a.hex()));
                }
                c1141mm.f3277a.mo1972B(C1465zl.f4327a.toByteArray());
                c1141mm.f3277a.flush();
            }
        }
        C1141mm c1141mm2 = c0834am.f2238v;
        C1216pm c1216pm = c0834am.f2235s;
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
    public boolean m1835k(C1463zj c1463zj) {
        int i = c1463zj.f4315e;
        C1463zj c1463zj2 = this.f2682c.f3353a.f2662a;
        if (i != c1463zj2.f4315e) {
            return false;
        }
        if (c1463zj.f4314d.equals(c1463zj2.f4314d)) {
            return true;
        }
        C1413xj c1413xj = this.f2685f;
        return c1413xj != null && C0861bn.f2311a.m1425c(c1463zj.f4314d, (X509Certificate) c1413xj.f4083c.get(0));
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("Connection{");
        sbM1765j.append(this.f2682c.f3353a.f2662a.f4314d);
        sbM1765j.append(":");
        sbM1765j.append(this.f2682c.f3353a.f2662a.f4315e);
        sbM1765j.append(", proxy=");
        sbM1765j.append(this.f2682c.f3354b);
        sbM1765j.append(" hostAddress=");
        sbM1765j.append(this.f2682c.f3355c);
        sbM1765j.append(" cipherSuite=");
        C1413xj c1413xj = this.f2685f;
        sbM1765j.append(c1413xj != null ? c1413xj.f4082b : "none");
        sbM1765j.append(" protocol=");
        sbM1765j.append(this.f2686g);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }
}
