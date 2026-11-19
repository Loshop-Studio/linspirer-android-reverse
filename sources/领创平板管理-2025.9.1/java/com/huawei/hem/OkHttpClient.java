package com.huawei.hem;

import com.huawei.hem.EventListener;
import com.huawei.hem.OkHttpHeaderList;
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
public class OkHttpClient implements Cloneable {

    /* renamed from: C */
    public static final List<Protocol> f2413C = OkHttpCommonUtilities.m2760o(Protocol.HTTP_2, Protocol.HTTP_1_1);

    /* renamed from: D */
    public static final List<ConnectionSpec> f2414D = OkHttpCommonUtilities.m2760o(ConnectionSpec.f3468g, ConnectionSpec.f3469h);

    /* renamed from: A */
    public final int f2415A;

    /* renamed from: B */
    public final int f2416B;

    /* renamed from: a */
    public final Dispatcher f2417a;

    /* renamed from: b */
    @Nullable
    public final Proxy f2418b;

    /* renamed from: c */
    public final List<Protocol> f2419c;

    /* renamed from: d */
    public final List<ConnectionSpec> f2420d;

    /* renamed from: e */
    public final List<OkHttpInterceptor> f2421e;

    /* renamed from: f */
    public final List<OkHttpInterceptor> f2422f;

    /* renamed from: g */
    public final EventListener.b f2423g;

    /* renamed from: h */
    public final ProxySelector f2424h;

    /* renamed from: i */
    public final CookieJar f2425i;

    /* renamed from: j */
    @Nullable
    public final OkHttpResponseCache f2426j;

    /* renamed from: k */
    @Nullable
    public final InternalCache f2427k;

    /* renamed from: l */
    public final SocketFactory f2428l;

    /* renamed from: m */
    public final SSLSocketFactory f2429m;

    /* renamed from: n */
    public final CertificateChainCleaner f2430n;

    /* renamed from: o */
    public final HostnameVerifier f2431o;

    /* renamed from: p */
    public final CertificatePinner f2432p;

    /* renamed from: q */
    public final OkHttpAuthenticator f2433q;

    /* renamed from: r */
    public final OkHttpAuthenticator f2434r;

    /* renamed from: s */
    public final ConnectionPool f2435s;

    /* renamed from: t */
    public final OkHttpDnsResolver f2436t;

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
    public class a extends OkHttpInternalAccess {
        @Override // com.huawei.hem.AbstractC1264rk
        /* renamed from: a */
        public void mo1612a(OkHttpHeaderList.a aVar, String str, String str2) {
            aVar.f4230a.add(str);
            aVar.f4230a.add(str2.trim());
        }
    }

    /* compiled from: OkHttpClient.java */
    /* renamed from: com.huawei.hem.dk$b */
    public static final class b {

        /* renamed from: f */
        public EventListener.b f2448f;

        /* renamed from: g */
        public ProxySelector f2449g;

        /* renamed from: h */
        public CookieJar f2450h;

        /* renamed from: i */
        public SocketFactory f2451i;

        /* renamed from: j */
        public HostnameVerifier f2452j;

        /* renamed from: k */
        public CertificatePinner f2453k;

        /* renamed from: l */
        public OkHttpAuthenticator f2454l;

        /* renamed from: m */
        public OkHttpAuthenticator f2455m;

        /* renamed from: n */
        public ConnectionPool f2456n;

        /* renamed from: o */
        public OkHttpDnsResolver f2457o;

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
        public final List<OkHttpInterceptor> f2446d = new ArrayList();

        /* renamed from: e */
        public final List<OkHttpInterceptor> f2447e = new ArrayList();

        /* renamed from: a */
        public Dispatcher f2443a = new Dispatcher();

        /* renamed from: b */
        public List<Protocol> f2444b = OkHttpClient.f2413C;

        /* renamed from: c */
        public List<ConnectionSpec> f2445c = OkHttpClient.f2414D;

        public b() {
            final EventListener abstractC1363vj = EventListener.f3969a;
            this.f2448f = new EventListener.b() { // from class: com.huawei.hem.ej
                @Override // com.huawei.hem.AbstractC1363vj.b
                /* renamed from: a */
                public final EventListener mo1683a(Call interfaceC1087kj) {
                    return EventListener.m2878a(abstractC1363vj, interfaceC1087kj);
                }
            };
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f2449g = proxySelector;
            if (proxySelector == null) {
                this.f2449g = new NullProxySelector();
            }
            this.f2450h = CookieJar.f3644a;
            this.f2451i = SocketFactory.getDefault();
            this.f2452j = OkHostnameVerifier.f2311a;
            this.f2453k = CertificatePinner.f3269c;
            OkHttpAuthenticator interfaceC1012hj = OkHttpAuthenticator.f2873a;
            this.f2454l = interfaceC1012hj;
            this.f2455m = interfaceC1012hj;
            this.f2456n = new ConnectionPool();
            this.f2457o = OkHttpDnsResolver.f3874a;
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
        OkHttpInternalAccess.f3645a = new a();
    }

    public OkHttpClient() {
        this(new b());
    }

    public OkHttpClient(b bVar) throws NoSuchAlgorithmException, KeyStoreException, KeyManagementException {
        boolean z;
        this.f2417a = bVar.f2443a;
        this.f2418b = null;
        this.f2419c = bVar.f2444b;
        this.f2420d = bVar.f2445c;
        this.f2421e = OkHttpCommonUtilities.m2759n(bVar.f2446d);
        this.f2422f = OkHttpCommonUtilities.m2759n(bVar.f2447e);
        this.f2423g = bVar.f2448f;
        this.f2424h = bVar.f2449g;
        this.f2425i = bVar.f2450h;
        this.f2426j = null;
        this.f2427k = null;
        this.f2428l = bVar.f2451i;
        Iterator<ConnectionSpec> it = this.f2420d.iterator();
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
                    SSLContext sSLContextMo2704i = Platform.f4029a.mo2704i();
                    sSLContextMo2704i.init(null, new TrustManager[]{x509TrustManager}, null);
                    this.f2429m = sSLContextMo2704i.getSocketFactory();
                    this.f2430n = Platform.f4029a.mo2701c(x509TrustManager);
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
            Platform.f4029a.mo2774f(sSLSocketFactory);
        }
        this.f2431o = bVar.f2452j;
        CertificatePinner c1138mj = bVar.f2453k;
        CertificateChainCleaner abstractC0835an = this.f2430n;
        this.f2432p = Objects.equals(c1138mj.f3271b, abstractC0835an) ? c1138mj : new CertificatePinner(c1138mj.f3270a, abstractC0835an);
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
            StringBuilder sbM1765j = CompilerOutline.m1765j("Null interceptor: ");
            sbM1765j.append(this.f2421e);
            throw new IllegalStateException(sbM1765j.toString());
        }
        if (this.f2422f.contains(null)) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("Null network interceptor: ");
            sbM1765j2.append(this.f2422f);
            throw new IllegalStateException(sbM1765j2.toString());
        }
    }
}
