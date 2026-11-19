package com.huawei.hem;

import com.huawei.hem.AbstractC1363vj;
import com.huawei.hem.C1438yj;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* compiled from: OkHttpClient.java */
/* renamed from: com.huawei.hem.dk */
/* loaded from: classes.dex */
public class C0910dk implements Cloneable {

    /* renamed from: C */
    public static final List<EnumC0936ek> f2413C = C1314tk.m2760o(EnumC0936ek.HTTP_2, EnumC0936ek.HTTP_1_1);

    /* renamed from: D */
    public static final List<C1213pj> f2414D = C1314tk.m2760o(C1213pj.f3468g, C1213pj.f3469h);

    /* renamed from: A */
    public final int f2415A;

    /* renamed from: B */
    public final int f2416B;

    /* renamed from: a */
    public final C1288sj f2417a;

    /* renamed from: b */
    @Nullable
    public final Proxy f2418b;

    /* renamed from: c */
    public final List<EnumC0936ek> f2419c;

    /* renamed from: d */
    public final List<C1213pj> f2420d;

    /* renamed from: e */
    public final List<InterfaceC0832ak> f2421e;

    /* renamed from: f */
    public final List<InterfaceC0832ak> f2422f;

    /* renamed from: g */
    public final AbstractC1363vj.b f2423g;

    /* renamed from: h */
    public final ProxySelector f2424h;

    /* renamed from: i */
    public final InterfaceC1263rj f2425i;

    /* renamed from: j */
    @Nullable
    public final C1037ij f2426j;

    /* renamed from: k */
    @Nullable
    public final InterfaceC1464zk f2427k;

    /* renamed from: l */
    public final SocketFactory f2428l;

    /* renamed from: m */
    public final SSLSocketFactory f2429m;

    /* renamed from: n */
    public final AbstractC0835an f2430n;

    /* renamed from: o */
    public final HostnameVerifier f2431o;

    /* renamed from: p */
    public final C1138mj f2432p;

    /* renamed from: q */
    public final InterfaceC1012hj f2433q;

    /* renamed from: r */
    public final InterfaceC1012hj f2434r;

    /* renamed from: s */
    public final C1188oj f2435s;

    /* renamed from: t */
    public final InterfaceC1338uj f2436t;

    /* renamed from: u */
    public final boolean f2437u;

    /* renamed from: v */
    public final boolean f2438v;

    /* renamed from: w */
    public final boolean f2439w;

    /* renamed from: x */
    public final int f2440x;

    /* renamed from: y */
    public final int f2441y;

    /* renamed from: z */
    public final int f2442z;

    /* compiled from: OkHttpClient.java */
    /* renamed from: com.huawei.hem.dk$a */
    public class a extends AbstractC1264rk {
        @Override // com.huawei.hem.AbstractC1264rk
        /* renamed from: a */
        public void mo1612a(C1438yj.a aVar, String str, String str2) {
            aVar.f4230a.add(str);
            aVar.f4230a.add(str2.trim());
        }
    }

    /* compiled from: OkHttpClient.java */
    /* renamed from: com.huawei.hem.dk$b */
    public static final class b {

        /* renamed from: f */
        public AbstractC1363vj.b f2448f;

        /* renamed from: g */
        public ProxySelector f2449g;

        /* renamed from: h */
        public InterfaceC1263rj f2450h;

        /* renamed from: i */
        public SocketFactory f2451i;

        /* renamed from: j */
        public HostnameVerifier f2452j;

        /* renamed from: k */
        public C1138mj f2453k;

        /* renamed from: l */
        public InterfaceC1012hj f2454l;

        /* renamed from: m */
        public InterfaceC1012hj f2455m;

        /* renamed from: n */
        public C1188oj f2456n;

        /* renamed from: o */
        public InterfaceC1338uj f2457o;

        /* renamed from: p */
        public boolean f2458p;

        /* renamed from: q */
        public boolean f2459q;

        /* renamed from: r */
        public boolean f2460r;

        /* renamed from: s */
        public int f2461s;

        /* renamed from: t */
        public int f2462t;

        /* renamed from: u */
        public int f2463u;

        /* renamed from: v */
        public int f2464v;

        /* renamed from: w */
        public int f2465w;

        /* renamed from: d */
        public final List<InterfaceC0832ak> f2446d = new ArrayList();

        /* renamed from: e */
        public final List<InterfaceC0832ak> f2447e = new ArrayList();

        /* renamed from: a */
        public C1288sj f2443a = new C1288sj();

        /* renamed from: b */
        public List<EnumC0936ek> f2444b = C0910dk.f2413C;

        /* renamed from: c */
        public List<C1213pj> f2445c = C0910dk.f2414D;

        public b() {
            final AbstractC1363vj abstractC1363vj = AbstractC1363vj.f3969a;
            this.f2448f = new AbstractC1363vj.b() { // from class: com.huawei.hem.ej
                @Override // com.huawei.hem.AbstractC1363vj.b
                /* renamed from: a */
                public final AbstractC1363vj mo1683a(InterfaceC1087kj interfaceC1087kj) {
                    return AbstractC1363vj.m2878a(abstractC1363vj, interfaceC1087kj);
                }
            };
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f2449g = proxySelector;
            if (proxySelector == null) {
                this.f2449g = new C1416xm();
            }
            this.f2450h = InterfaceC1263rj.f3644a;
            this.f2451i = SocketFactory.getDefault();
            this.f2452j = C0861bn.f2311a;
            this.f2453k = C1138mj.f3269c;
            InterfaceC1012hj interfaceC1012hj = InterfaceC1012hj.f2873a;
            this.f2454l = interfaceC1012hj;
            this.f2455m = interfaceC1012hj;
            this.f2456n = new C1188oj();
            this.f2457o = InterfaceC1338uj.f3874a;
            this.f2458p = true;
            this.f2459q = true;
            this.f2460r = true;
            this.f2461s = 0;
            this.f2462t = 10000;
            this.f2463u = 10000;
            this.f2464v = 10000;
            this.f2465w = 0;
        }
    }

    static {
        AbstractC1264rk.f3645a = new a();
    }

    public C0910dk() {
        this(new b());
    }

    public C0910dk(b bVar) throws NoSuchAlgorithmException, KeyStoreException, KeyManagementException {
        boolean z;
        this.f2417a = bVar.f2443a;
        this.f2418b = null;
        this.f2419c = bVar.f2444b;
        this.f2420d = bVar.f2445c;
        this.f2421e = C1314tk.m2759n(bVar.f2446d);
        this.f2422f = C1314tk.m2759n(bVar.f2447e);
        this.f2423g = bVar.f2448f;
        this.f2424h = bVar.f2449g;
        this.f2425i = bVar.f2450h;
        this.f2426j = null;
        this.f2427k = null;
        this.f2428l = bVar.f2451i;
        Iterator<C1213pj> it = this.f2420d.iterator();
        loop0: while (true) {
            z = false;
            while (it.hasNext()) {
                z = (z || it.next().f3470a) ? true : z;
            }
        }
        if (z) {
            try {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
                    throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
                }
                X509TrustManager x509TrustManager = (X509TrustManager) trustManagers[0];
                try {
                    SSLContext sSLContextMo2704i = C1391wm.f4029a.mo2704i();
                    sSLContextMo2704i.init(null, new TrustManager[]{x509TrustManager}, null);
                    this.f2429m = sSLContextMo2704i.getSocketFactory();
                    this.f2430n = C1391wm.f4029a.mo2701c(x509TrustManager);
                } catch (GeneralSecurityException e) {
                    throw new AssertionError("No System TLS", e);
                }
            } catch (GeneralSecurityException e2) {
                throw new AssertionError("No System TLS", e2);
            }
        } else {
            this.f2429m = null;
            this.f2430n = null;
        }
        SSLSocketFactory sSLSocketFactory = this.f2429m;
        if (sSLSocketFactory != null) {
            C1391wm.f4029a.mo2774f(sSLSocketFactory);
        }
        this.f2431o = bVar.f2452j;
        C1138mj c1138mj = bVar.f2453k;
        AbstractC0835an abstractC0835an = this.f2430n;
        this.f2432p = Objects.equals(c1138mj.f3271b, abstractC0835an) ? c1138mj : new C1138mj(c1138mj.f3270a, abstractC0835an);
        this.f2433q = bVar.f2454l;
        this.f2434r = bVar.f2455m;
        this.f2435s = bVar.f2456n;
        this.f2436t = bVar.f2457o;
        this.f2437u = bVar.f2458p;
        this.f2438v = bVar.f2459q;
        this.f2439w = bVar.f2460r;
        this.f2440x = bVar.f2461s;
        this.f2441y = bVar.f2462t;
        this.f2442z = bVar.f2463u;
        this.f2415A = bVar.f2464v;
        this.f2416B = bVar.f2465w;
        if (this.f2421e.contains(null)) {
            StringBuilder sbM1765j = C0948f6.m1765j("Null interceptor: ");
            sbM1765j.append(this.f2421e);
            throw new IllegalStateException(sbM1765j.toString());
        }
        if (this.f2422f.contains(null)) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("Null network interceptor: ");
            sbM1765j2.append(this.f2422f);
            throw new IllegalStateException(sbM1765j2.toString());
        }
    }
}
