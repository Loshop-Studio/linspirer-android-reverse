package com.huawei.hem;

import com.huawei.hem.C1064jl;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: ExchangeFinder.java */
/* renamed from: com.huawei.hem.el */
/* loaded from: classes.dex */
public final class C0937el {

    /* renamed from: a */
    public final C1089kl f2551a;

    /* renamed from: b */
    public final C0961fj f2552b;

    /* renamed from: c */
    public final C0989gl f2553c;

    /* renamed from: d */
    public final InterfaceC1087kj f2554d;

    /* renamed from: e */
    public final AbstractC1363vj f2555e;

    /* renamed from: f */
    public C1064jl.a f2556f;

    /* renamed from: g */
    public final C1064jl f2557g;

    /* renamed from: h */
    public C0963fl f2558h;

    /* renamed from: i */
    public boolean f2559i;

    /* renamed from: j */
    public C1164nk f2560j;

    public C0937el(C1089kl c1089kl, C0989gl c0989gl, C0961fj c0961fj, InterfaceC1087kj interfaceC1087kj, AbstractC1363vj abstractC1363vj) {
        this.f2551a = c1089kl;
        this.f2553c = c0989gl;
        this.f2552b = c0961fj;
        this.f2554d = interfaceC1087kj;
        this.f2555e = abstractC1363vj;
        this.f2557g = new C1064jl(c0961fj, c0989gl.f2801e, interfaceC1087kj, abstractC1363vj);
    }

    /* renamed from: a */
    public final C0963fl m1684a(int i, int i2, int i3, int i4, boolean z) throws Throwable {
        Socket socketM2211h;
        C0963fl c0963fl;
        C0963fl c0963fl2;
        int i5;
        boolean z2;
        C1164nk c1164nk;
        boolean z3;
        ArrayList arrayList;
        Socket socket;
        C1064jl.a aVar;
        String hostName;
        int port;
        boolean zContains;
        synchronized (this.f2553c) {
            if (this.f2551a.m2208e()) {
                throw new IOException("Canceled");
            }
            this.f2559i = false;
            C0963fl c0963fl3 = this.f2551a.f3126i;
            socketM2211h = (this.f2551a.f3126i == null || !this.f2551a.f3126i.f2690k) ? null : this.f2551a.m2211h();
            if (this.f2551a.f3126i != null) {
                c0963fl2 = this.f2551a.f3126i;
                c0963fl = null;
            } else {
                c0963fl = c0963fl3;
                c0963fl2 = null;
            }
            i5 = 1;
            if (c0963fl2 != null) {
                z2 = false;
                c1164nk = null;
            } else if (this.f2553c.m1887e(this.f2552b, this.f2551a, null, false)) {
                c0963fl2 = this.f2551a.f3126i;
                c1164nk = null;
                z2 = true;
            } else {
                if (this.f2560j != null) {
                    c1164nk = this.f2560j;
                    this.f2560j = null;
                } else {
                    if (m1687d()) {
                        c1164nk = this.f2551a.f3126i.f2682c;
                    }
                    z2 = false;
                    c1164nk = null;
                }
                z2 = false;
            }
        }
        C1314tk.m2750e(socketM2211h);
        if (c0963fl != null && this.f2555e == null) {
            throw null;
        }
        if (z2 && this.f2555e == null) {
            throw null;
        }
        if (c0963fl2 != null) {
            return c0963fl2;
        }
        if (c1164nk != null || ((aVar = this.f2556f) != null && aVar.m2138a())) {
            z3 = false;
        } else {
            C1064jl c1064jl = this.f2557g;
            if (!c1064jl.m2136a()) {
                throw new NoSuchElementException();
            }
            ArrayList arrayList2 = new ArrayList();
            while (c1064jl.m2137b()) {
                if (!c1064jl.m2137b()) {
                    StringBuilder sbM1765j = C0948f6.m1765j("No route to ");
                    sbM1765j.append(c1064jl.f2975a.f2662a.f4314d);
                    sbM1765j.append("; exhausted proxy configurations: ");
                    sbM1765j.append(c1064jl.f2979e);
                    throw new SocketException(sbM1765j.toString());
                }
                List<Proxy> list = c1064jl.f2979e;
                int i6 = c1064jl.f2980f;
                c1064jl.f2980f = i6 + 1;
                Proxy proxy = list.get(i6);
                c1064jl.f2981g = new ArrayList();
                if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                    C1463zj c1463zj = c1064jl.f2975a.f2662a;
                    hostName = c1463zj.f4314d;
                    port = c1463zj.f4315e;
                } else {
                    SocketAddress socketAddressAddress = proxy.address();
                    if (!(socketAddressAddress instanceof InetSocketAddress)) {
                        StringBuilder sbM1765j2 = C0948f6.m1765j("Proxy.address() is not an InetSocketAddress: ");
                        sbM1765j2.append(socketAddressAddress.getClass());
                        throw new IllegalArgumentException(sbM1765j2.toString());
                    }
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                    InetAddress address = inetSocketAddress.getAddress();
                    hostName = address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
                    port = inetSocketAddress.getPort();
                }
                if (port < i5 || port > 65535) {
                    throw new SocketException("No route to " + hostName + ":" + port + "; port is out of range");
                }
                if (proxy.type() == Proxy.Type.SOCKS) {
                    c1064jl.f2981g.add(InetSocketAddress.createUnresolved(hostName, port));
                } else {
                    if (c1064jl.f2978d == null) {
                        throw null;
                    }
                    List<InetAddress> listMo1611a = c1064jl.f2975a.f2663b.mo1611a(hostName);
                    if (listMo1611a.isEmpty()) {
                        throw new UnknownHostException(c1064jl.f2975a.f2663b + " returned no addresses for " + hostName);
                    }
                    if (c1064jl.f2978d == null) {
                        throw null;
                    }
                    int size = listMo1611a.size();
                    for (int i7 = 0; i7 < size; i7++) {
                        c1064jl.f2981g.add(new InetSocketAddress(listMo1611a.get(i7), port));
                    }
                }
                int size2 = c1064jl.f2981g.size();
                for (int i8 = 0; i8 < size2; i8++) {
                    C1164nk c1164nk2 = new C1164nk(c1064jl.f2975a, proxy, c1064jl.f2981g.get(i8));
                    C1014hl c1014hl = c1064jl.f2976b;
                    synchronized (c1014hl) {
                        zContains = c1014hl.f2878a.contains(c1164nk2);
                    }
                    if (zContains) {
                        c1064jl.f2982h.add(c1164nk2);
                    } else {
                        arrayList2.add(c1164nk2);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    break;
                }
                i5 = 1;
            }
            if (arrayList2.isEmpty()) {
                arrayList2.addAll(c1064jl.f2982h);
                c1064jl.f2982h.clear();
            }
            this.f2556f = new C1064jl.a(arrayList2);
            z3 = true;
        }
        synchronized (this.f2553c) {
            if (this.f2551a.m2208e()) {
                throw new IOException("Canceled");
            }
            if (z3) {
                C1064jl.a aVar2 = this.f2556f;
                if (aVar2 == null) {
                    throw null;
                }
                arrayList = new ArrayList(aVar2.f2983a);
                if (this.f2553c.m1887e(this.f2552b, this.f2551a, arrayList, false)) {
                    c0963fl2 = this.f2551a.f3126i;
                    z2 = true;
                }
            } else {
                arrayList = null;
            }
            if (!z2) {
                if (c1164nk == null) {
                    C1064jl.a aVar3 = this.f2556f;
                    if (!aVar3.m2138a()) {
                        throw new NoSuchElementException();
                    }
                    List<C1164nk> list2 = aVar3.f2983a;
                    int i9 = aVar3.f2984b;
                    aVar3.f2984b = i9 + 1;
                    c1164nk = list2.get(i9);
                }
                c0963fl2 = new C0963fl(this.f2553c, c1164nk);
                this.f2558h = c0963fl2;
            }
        }
        if (z2) {
            if (this.f2555e != null) {
                return c0963fl2;
            }
            throw null;
        }
        c0963fl2.m1827c(i, i2, i3, i4, z, this.f2554d, this.f2555e);
        this.f2553c.f2801e.m1970a(c0963fl2.f2682c);
        synchronized (this.f2553c) {
            this.f2558h = null;
            if (this.f2553c.m1887e(this.f2552b, this.f2551a, arrayList, true)) {
                c0963fl2.f2690k = true;
                socket = c0963fl2.f2684e;
                c0963fl2 = this.f2551a.f3126i;
                this.f2560j = c1164nk;
            } else {
                C0989gl c0989gl = this.f2553c;
                if (!c0989gl.f2802f) {
                    c0989gl.f2802f = true;
                    C0989gl.f2796g.execute(c0989gl.f2799c);
                }
                c0989gl.f2800d.add(c0963fl2);
                this.f2551a.m2204a(c0963fl2);
                socket = null;
            }
        }
        C1314tk.m2750e(socket);
        if (this.f2555e != null) {
            return c0963fl2;
        }
        throw null;
    }

    /* renamed from: b */
    public final C0963fl m1685b(int i, int i2, int i3, int i4, boolean z, boolean z2) throws Throwable {
        int soTimeout;
        while (true) {
            C0963fl c0963flM1684a = m1684a(i, i2, i3, i4, z);
            synchronized (this.f2553c) {
                if (c0963flM1684a.f2692m == 0 && !c0963flM1684a.m1831g()) {
                    return c0963flM1684a;
                }
                boolean z3 = false;
                if (!c0963flM1684a.f2684e.isClosed() && !c0963flM1684a.f2684e.isInputShutdown() && !c0963flM1684a.f2684e.isOutputShutdown()) {
                    C0834am c0834am = c0963flM1684a.f2687h;
                    if (c0834am != null) {
                        long jNanoTime = System.nanoTime();
                        synchronized (c0834am) {
                            if (!c0834am.f2223g) {
                                if (c0834am.f2230n >= c0834am.f2229m || jNanoTime < c0834am.f2232p) {
                                    z3 = true;
                                }
                            }
                        }
                    } else if (z2) {
                        try {
                            soTimeout = c0963flM1684a.f2684e.getSoTimeout();
                            try {
                                c0963flM1684a.f2684e.setSoTimeout(1);
                            } catch (Throwable th) {
                                c0963flM1684a.f2684e.setSoTimeout(soTimeout);
                                throw th;
                            }
                        } catch (SocketTimeoutException unused) {
                        } catch (IOException unused2) {
                        }
                        if (c0963flM1684a.f2688i.mo2017y()) {
                            c0963flM1684a.f2684e.setSoTimeout(soTimeout);
                        } else {
                            c0963flM1684a.f2684e.setSoTimeout(soTimeout);
                            z3 = true;
                        }
                    } else {
                        z3 = true;
                    }
                }
                if (z3) {
                    return c0963flM1684a;
                }
                c0963flM1684a.m1833i();
            }
        }
    }

    /* renamed from: c */
    public boolean m1686c() {
        synchronized (this.f2553c) {
            boolean z = true;
            if (this.f2560j != null) {
                return true;
            }
            if (m1687d()) {
                this.f2560j = this.f2551a.f3126i.f2682c;
                return true;
            }
            if ((this.f2556f == null || !this.f2556f.m2138a()) && !this.f2557g.m2136a()) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: d */
    public final boolean m1687d() {
        C0963fl c0963fl = this.f2551a.f3126i;
        return c0963fl != null && c0963fl.f2691l == 0 && C1314tk.m2768w(c0963fl.f2682c.f3353a.f2662a, this.f2552b.f2662a);
    }

    /* renamed from: e */
    public void m1688e() {
        synchronized (this.f2553c) {
            this.f2559i = true;
        }
    }
}
